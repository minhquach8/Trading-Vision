љд/
хє
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
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
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
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
Ш
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
Ф
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
џ
TensorListReserve
element_shape"
shape_type
num_elements#
handleіжelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
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
 ѕ
ћ
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
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28ВИ-
z
dense_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_48/kernel
s
#dense_48/kernel/Read/ReadVariableOpReadVariableOpdense_48/kernel*
_output_shapes

:
*
dtype0
r
dense_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_48/bias
k
!dense_48/bias/Read/ReadVariableOpReadVariableOpdense_48/bias*
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
Ќ
lstm_144/lstm_cell_144/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_144/lstm_cell_144/kernel
љ
1lstm_144/lstm_cell_144/kernel/Read/ReadVariableOpReadVariableOplstm_144/lstm_cell_144/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_144/lstm_cell_144/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_144/lstm_cell_144/recurrent_kernel
ц
;lstm_144/lstm_cell_144/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_144/lstm_cell_144/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_144/lstm_cell_144/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_144/lstm_cell_144/bias
ѕ
/lstm_144/lstm_cell_144/bias/Read/ReadVariableOpReadVariableOplstm_144/lstm_cell_144/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_145/lstm_cell_145/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_145/lstm_cell_145/kernel
љ
1lstm_145/lstm_cell_145/kernel/Read/ReadVariableOpReadVariableOplstm_145/lstm_cell_145/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_145/lstm_cell_145/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_145/lstm_cell_145/recurrent_kernel
ц
;lstm_145/lstm_cell_145/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_145/lstm_cell_145/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_145/lstm_cell_145/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_145/lstm_cell_145/bias
ѕ
/lstm_145/lstm_cell_145/bias/Read/ReadVariableOpReadVariableOplstm_145/lstm_cell_145/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_146/lstm_cell_146/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_146/lstm_cell_146/kernel
Ј
1lstm_146/lstm_cell_146/kernel/Read/ReadVariableOpReadVariableOplstm_146/lstm_cell_146/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_146/lstm_cell_146/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_146/lstm_cell_146/recurrent_kernel
Б
;lstm_146/lstm_cell_146/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_146/lstm_cell_146/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_146/lstm_cell_146/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_146/lstm_cell_146/bias
Є
/lstm_146/lstm_cell_146/bias/Read/ReadVariableOpReadVariableOplstm_146/lstm_cell_146/bias*
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
ѕ
Adam/dense_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_48/kernel/m
Ђ
*Adam/dense_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/m*
_output_shapes

:
*
dtype0
ђ
Adam/dense_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_48/bias/m
y
(Adam/dense_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_144/lstm_cell_144/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_144/lstm_cell_144/kernel/m
ъ
8Adam/lstm_144/lstm_cell_144/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_144/lstm_cell_144/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_144/lstm_cell_144/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m
▓
BAdam/lstm_144/lstm_cell_144/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_144/lstm_cell_144/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_144/lstm_cell_144/bias/m
ќ
6Adam/lstm_144/lstm_cell_144/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_144/lstm_cell_144/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_145/lstm_cell_145/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_145/lstm_cell_145/kernel/m
ъ
8Adam/lstm_145/lstm_cell_145/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_145/lstm_cell_145/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_145/lstm_cell_145/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m
▓
BAdam/lstm_145/lstm_cell_145/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_145/lstm_cell_145/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_145/lstm_cell_145/bias/m
ќ
6Adam/lstm_145/lstm_cell_145/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_145/lstm_cell_145/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_146/lstm_cell_146/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_146/lstm_cell_146/kernel/m
Ю
8Adam/lstm_146/lstm_cell_146/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_146/lstm_cell_146/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_146/lstm_cell_146/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m
▒
BAdam/lstm_146/lstm_cell_146/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_146/lstm_cell_146/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_146/lstm_cell_146/bias/m
Ћ
6Adam/lstm_146/lstm_cell_146/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_146/lstm_cell_146/bias/m*
_output_shapes
:(*
dtype0
ѕ
Adam/dense_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_48/kernel/v
Ђ
*Adam/dense_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/kernel/v*
_output_shapes

:
*
dtype0
ђ
Adam/dense_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_48/bias/v
y
(Adam/dense_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_48/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_144/lstm_cell_144/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_144/lstm_cell_144/kernel/v
ъ
8Adam/lstm_144/lstm_cell_144/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_144/lstm_cell_144/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_144/lstm_cell_144/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v
▓
BAdam/lstm_144/lstm_cell_144/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_144/lstm_cell_144/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_144/lstm_cell_144/bias/v
ќ
6Adam/lstm_144/lstm_cell_144/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_144/lstm_cell_144/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_145/lstm_cell_145/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_145/lstm_cell_145/kernel/v
ъ
8Adam/lstm_145/lstm_cell_145/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_145/lstm_cell_145/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_145/lstm_cell_145/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v
▓
BAdam/lstm_145/lstm_cell_145/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_145/lstm_cell_145/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_145/lstm_cell_145/bias/v
ќ
6Adam/lstm_145/lstm_cell_145/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_145/lstm_cell_145/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_146/lstm_cell_146/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_146/lstm_cell_146/kernel/v
Ю
8Adam/lstm_146/lstm_cell_146/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_146/lstm_cell_146/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_146/lstm_cell_146/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v
▒
BAdam/lstm_146/lstm_cell_146/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_146/lstm_cell_146/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_146/lstm_cell_146/bias/v
Ћ
6Adam/lstm_146/lstm_cell_146/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_146/lstm_cell_146/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
▀A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*џA
valueљABЇA BєA
▓
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
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
Ї

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
ћ
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3mђ4mЂ5mѓ!vЃ"vё-vЁ.vє/vЄ0vѕ1vЅ2vі3vІ4vї5vЇ
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
Г
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
│
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
╣

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
│
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
╣

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
│
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
╣

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
VARIABLE_VALUEdense_48/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_48/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
 
Г
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
VARIABLE_VALUElstm_144/lstm_cell_144/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_144/lstm_cell_144/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_144/lstm_cell_144/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_145/lstm_cell_145/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_145/lstm_cell_145/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_145/lstm_cell_145/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_146/lstm_cell_146/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_146/lstm_cell_146/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_146/lstm_cell_146/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
Г
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
Г
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
Г
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
VARIABLE_VALUEAdam/dense_48/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_48/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_144/lstm_cell_144/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_144/lstm_cell_144/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_144/lstm_cell_144/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_145/lstm_cell_145/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_145/lstm_cell_145/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_145/lstm_cell_145/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_146/lstm_cell_146/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_146/lstm_cell_146/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_146/lstm_cell_146/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_48/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_48/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_144/lstm_cell_144/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_144/lstm_cell_144/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_144/lstm_cell_144/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_145/lstm_cell_145/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_145/lstm_cell_145/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_145/lstm_cell_145/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_146/lstm_cell_146/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_146/lstm_cell_146/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_146/lstm_cell_146/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_144_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_144_inputlstm_144/lstm_cell_144/kernel'lstm_144/lstm_cell_144/recurrent_kernellstm_144/lstm_cell_144/biaslstm_145/lstm_cell_145/kernel'lstm_145/lstm_cell_145/recurrent_kernellstm_145/lstm_cell_145/biaslstm_146/lstm_cell_146/kernel'lstm_146/lstm_cell_146/recurrent_kernellstm_146/lstm_cell_146/biasdense_48/kerneldense_48/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *.
f)R'
%__inference_signature_wrapper_2970375
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_48/kernel/Read/ReadVariableOp!dense_48/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_144/lstm_cell_144/kernel/Read/ReadVariableOp;lstm_144/lstm_cell_144/recurrent_kernel/Read/ReadVariableOp/lstm_144/lstm_cell_144/bias/Read/ReadVariableOp1lstm_145/lstm_cell_145/kernel/Read/ReadVariableOp;lstm_145/lstm_cell_145/recurrent_kernel/Read/ReadVariableOp/lstm_145/lstm_cell_145/bias/Read/ReadVariableOp1lstm_146/lstm_cell_146/kernel/Read/ReadVariableOp;lstm_146/lstm_cell_146/recurrent_kernel/Read/ReadVariableOp/lstm_146/lstm_cell_146/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_48/kernel/m/Read/ReadVariableOp(Adam/dense_48/bias/m/Read/ReadVariableOp8Adam/lstm_144/lstm_cell_144/kernel/m/Read/ReadVariableOpBAdam/lstm_144/lstm_cell_144/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_144/lstm_cell_144/bias/m/Read/ReadVariableOp8Adam/lstm_145/lstm_cell_145/kernel/m/Read/ReadVariableOpBAdam/lstm_145/lstm_cell_145/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_145/lstm_cell_145/bias/m/Read/ReadVariableOp8Adam/lstm_146/lstm_cell_146/kernel/m/Read/ReadVariableOpBAdam/lstm_146/lstm_cell_146/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_146/lstm_cell_146/bias/m/Read/ReadVariableOp*Adam/dense_48/kernel/v/Read/ReadVariableOp(Adam/dense_48/bias/v/Read/ReadVariableOp8Adam/lstm_144/lstm_cell_144/kernel/v/Read/ReadVariableOpBAdam/lstm_144/lstm_cell_144/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_144/lstm_cell_144/bias/v/Read/ReadVariableOp8Adam/lstm_145/lstm_cell_145/kernel/v/Read/ReadVariableOpBAdam/lstm_145/lstm_cell_145/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_145/lstm_cell_145/bias/v/Read/ReadVariableOp8Adam/lstm_146/lstm_cell_146/kernel/v/Read/ReadVariableOpBAdam/lstm_146/lstm_cell_146/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_146/lstm_cell_146/bias/v/Read/ReadVariableOpConst*5
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
GPU 2J 8ѓ *)
f$R"
 __inference__traced_save_2973587
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_48/kerneldense_48/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_144/lstm_cell_144/kernel'lstm_144/lstm_cell_144/recurrent_kernellstm_144/lstm_cell_144/biaslstm_145/lstm_cell_145/kernel'lstm_145/lstm_cell_145/recurrent_kernellstm_145/lstm_cell_145/biaslstm_146/lstm_cell_146/kernel'lstm_146/lstm_cell_146/recurrent_kernellstm_146/lstm_cell_146/biastotalcountAdam/dense_48/kernel/mAdam/dense_48/bias/m$Adam/lstm_144/lstm_cell_144/kernel/m.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m"Adam/lstm_144/lstm_cell_144/bias/m$Adam/lstm_145/lstm_cell_145/kernel/m.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m"Adam/lstm_145/lstm_cell_145/bias/m$Adam/lstm_146/lstm_cell_146/kernel/m.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m"Adam/lstm_146/lstm_cell_146/bias/mAdam/dense_48/kernel/vAdam/dense_48/bias/v$Adam/lstm_144/lstm_cell_144/kernel/v.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v"Adam/lstm_144/lstm_cell_144/bias/v$Adam/lstm_145/lstm_cell_145/kernel/v.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v"Adam/lstm_145/lstm_cell_145/bias/v$Adam/lstm_146/lstm_cell_146/kernel/v.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v"Adam/lstm_146/lstm_cell_146/bias/v*4
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
GPU 2J 8ѓ *,
f'R%
#__inference__traced_restore_2973717Ћш+
║
╚
while_cond_2972287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2972287___redundant_placeholder05
1while_while_cond_2972287___redundant_placeholder15
1while_while_cond_2972287___redundant_placeholder25
1while_while_cond_2972287___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
В
ш
/__inference_lstm_cell_491_layer_call_fn_2973380

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2969028o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
АC
Щ

lstm_144_while_body_2970488.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_3-
)lstm_144_while_lstm_144_strided_slice_1_0i
elstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0:	љR
?lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљM
>lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
lstm_144_while_identity
lstm_144_while_identity_1
lstm_144_while_identity_2
lstm_144_while_identity_3
lstm_144_while_identity_4
lstm_144_while_identity_5+
'lstm_144_while_lstm_144_strided_slice_1g
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorN
;lstm_144_while_lstm_cell_489_matmul_readvariableop_resource:	љP
=lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource:	dљK
<lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpб2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOpб4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOpЉ
@lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_144/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0lstm_144_while_placeholderIlstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp=lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_144/while/lstm_cell_489/MatMulMatMul9lstm_144/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp?lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_144/while/lstm_cell_489/MatMul_1MatMullstm_144_while_placeholder_2<lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_144/while/lstm_cell_489/addAddV2-lstm_144/while/lstm_cell_489/MatMul:product:0/lstm_144/while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp>lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_144/while/lstm_cell_489/BiasAddBiasAdd$lstm_144/while/lstm_cell_489/add:z:0;lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_144/while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_144/while/lstm_cell_489/splitSplit5lstm_144/while/lstm_cell_489/split/split_dim:output:0-lstm_144/while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_144/while/lstm_cell_489/SigmoidSigmoid+lstm_144/while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_144/while/lstm_cell_489/Sigmoid_1Sigmoid+lstm_144/while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_144/while/lstm_cell_489/mulMul*lstm_144/while/lstm_cell_489/Sigmoid_1:y:0lstm_144_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_144/while/lstm_cell_489/ReluRelu+lstm_144/while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_144/while/lstm_cell_489/mul_1Mul(lstm_144/while/lstm_cell_489/Sigmoid:y:0/lstm_144/while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_144/while/lstm_cell_489/add_1AddV2$lstm_144/while/lstm_cell_489/mul:z:0&lstm_144/while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_144/while/lstm_cell_489/Sigmoid_2Sigmoid+lstm_144/while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_144/while/lstm_cell_489/Relu_1Relu&lstm_144/while/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_144/while/lstm_cell_489/mul_2Mul*lstm_144/while/lstm_cell_489/Sigmoid_2:y:01lstm_144/while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_144/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_144_while_placeholder_1lstm_144_while_placeholder&lstm_144/while/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_144/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_144/while/addAddV2lstm_144_while_placeholderlstm_144/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_144/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_144/while/add_1AddV2*lstm_144_while_lstm_144_while_loop_counterlstm_144/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_144/while/IdentityIdentitylstm_144/while/add_1:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: ј
lstm_144/while/Identity_1Identity0lstm_144_while_lstm_144_while_maximum_iterations^lstm_144/while/NoOp*
T0*
_output_shapes
: t
lstm_144/while/Identity_2Identitylstm_144/while/add:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: А
lstm_144/while/Identity_3IdentityClstm_144/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_144/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_144/while/Identity_4Identity&lstm_144/while/lstm_cell_489/mul_2:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_144/while/Identity_5Identity&lstm_144/while/lstm_cell_489/add_1:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_144/while/NoOpNoOp4^lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp3^lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp5^lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_144_while_identity lstm_144/while/Identity:output:0"?
lstm_144_while_identity_1"lstm_144/while/Identity_1:output:0"?
lstm_144_while_identity_2"lstm_144/while/Identity_2:output:0"?
lstm_144_while_identity_3"lstm_144/while/Identity_3:output:0"?
lstm_144_while_identity_4"lstm_144/while/Identity_4:output:0"?
lstm_144_while_identity_5"lstm_144/while/Identity_5:output:0"T
'lstm_144_while_lstm_144_strided_slice_1)lstm_144_while_lstm_144_strided_slice_1_0"~
<lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource>lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0"ђ
=lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource?lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0"|
;lstm_144_while_lstm_cell_489_matmul_readvariableop_resource=lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0"╠
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp2h
2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp2l
4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
АC
Щ

lstm_145_while_body_2970627.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_3-
)lstm_145_while_lstm_145_strided_slice_1_0i
elstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚R
?lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚M
>lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
lstm_145_while_identity
lstm_145_while_identity_1
lstm_145_while_identity_2
lstm_145_while_identity_3
lstm_145_while_identity_4
lstm_145_while_identity_5+
'lstm_145_while_lstm_145_strided_slice_1g
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorN
;lstm_145_while_lstm_cell_490_matmul_readvariableop_resource:	d╚P
=lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚K
<lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpб2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOpб4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOpЉ
@lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_145/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0lstm_145_while_placeholderIlstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp=lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_145/while/lstm_cell_490/MatMulMatMul9lstm_145/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp?lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_145/while/lstm_cell_490/MatMul_1MatMullstm_145_while_placeholder_2<lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_145/while/lstm_cell_490/addAddV2-lstm_145/while/lstm_cell_490/MatMul:product:0/lstm_145/while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp>lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_145/while/lstm_cell_490/BiasAddBiasAdd$lstm_145/while/lstm_cell_490/add:z:0;lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_145/while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_145/while/lstm_cell_490/splitSplit5lstm_145/while/lstm_cell_490/split/split_dim:output:0-lstm_145/while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_145/while/lstm_cell_490/SigmoidSigmoid+lstm_145/while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_145/while/lstm_cell_490/Sigmoid_1Sigmoid+lstm_145/while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_145/while/lstm_cell_490/mulMul*lstm_145/while/lstm_cell_490/Sigmoid_1:y:0lstm_145_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_145/while/lstm_cell_490/ReluRelu+lstm_145/while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_145/while/lstm_cell_490/mul_1Mul(lstm_145/while/lstm_cell_490/Sigmoid:y:0/lstm_145/while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_145/while/lstm_cell_490/add_1AddV2$lstm_145/while/lstm_cell_490/mul:z:0&lstm_145/while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_145/while/lstm_cell_490/Sigmoid_2Sigmoid+lstm_145/while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_145/while/lstm_cell_490/Relu_1Relu&lstm_145/while/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_145/while/lstm_cell_490/mul_2Mul*lstm_145/while/lstm_cell_490/Sigmoid_2:y:01lstm_145/while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_145/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_145_while_placeholder_1lstm_145_while_placeholder&lstm_145/while/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_145/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_145/while/addAddV2lstm_145_while_placeholderlstm_145/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_145/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_145/while/add_1AddV2*lstm_145_while_lstm_145_while_loop_counterlstm_145/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_145/while/IdentityIdentitylstm_145/while/add_1:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: ј
lstm_145/while/Identity_1Identity0lstm_145_while_lstm_145_while_maximum_iterations^lstm_145/while/NoOp*
T0*
_output_shapes
: t
lstm_145/while/Identity_2Identitylstm_145/while/add:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: А
lstm_145/while/Identity_3IdentityClstm_145/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_145/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_145/while/Identity_4Identity&lstm_145/while/lstm_cell_490/mul_2:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_145/while/Identity_5Identity&lstm_145/while/lstm_cell_490/add_1:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_145/while/NoOpNoOp4^lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp3^lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp5^lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_145_while_identity lstm_145/while/Identity:output:0"?
lstm_145_while_identity_1"lstm_145/while/Identity_1:output:0"?
lstm_145_while_identity_2"lstm_145/while/Identity_2:output:0"?
lstm_145_while_identity_3"lstm_145/while/Identity_3:output:0"?
lstm_145_while_identity_4"lstm_145/while/Identity_4:output:0"?
lstm_145_while_identity_5"lstm_145/while/Identity_5:output:0"T
'lstm_145_while_lstm_145_strided_slice_1)lstm_145_while_lstm_145_strided_slice_1_0"~
<lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource>lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0"ђ
=lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource?lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0"|
;lstm_145_while_lstm_cell_490_matmul_readvariableop_resource=lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0"╠
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp2h
2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp2l
4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
▀
ѕ
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2973216

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
е8
І
E__inference_lstm_146_layer_call_and_return_conditional_losses_2968965

inputs'
lstm_cell_491_2968883:2('
lstm_cell_491_2968885:
(#
lstm_cell_491_2968887:(
identityѕб%lstm_cell_491/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_491/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_491_2968883lstm_cell_491_2968885lstm_cell_491_2968887*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2968882n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_491_2968883lstm_cell_491_2968885lstm_cell_491_2968887*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2968896*
condR
while_cond_2968895*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_491/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_491/StatefulPartitionedCall%lstm_cell_491/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
║
╚
while_cond_2970075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2970075___redundant_placeholder05
1while_while_cond_2970075___redundant_placeholder15
1while_while_cond_2970075___redundant_placeholder25
1while_while_cond_2970075___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2969745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2969745___redundant_placeholder05
1while_while_cond_2969745___redundant_placeholder15
1while_while_cond_2969745___redundant_placeholder25
1while_while_cond_2969745___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2969086
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2969086___redundant_placeholder05
1while_while_cond_2969086___redundant_placeholder15
1while_while_cond_2969086___redundant_placeholder25
1while_while_cond_2969086___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_2969380
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_490_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_490/BiasAdd/ReadVariableOpб)while/lstm_cell_490/MatMul/ReadVariableOpб+while/lstm_cell_490/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_490/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_490/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_490/addAddV2$while/lstm_cell_490/MatMul:product:0&while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_490/BiasAddBiasAddwhile/lstm_cell_490/add:z:02while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_490/splitSplit,while/lstm_cell_490/split/split_dim:output:0$while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_490/SigmoidSigmoid"while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_1Sigmoid"while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_490/mulMul!while/lstm_cell_490/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_490/ReluRelu"while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_490/mul_1Mulwhile/lstm_cell_490/Sigmoid:y:0&while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_490/add_1AddV2while/lstm_cell_490/mul:z:0while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_2Sigmoid"while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_490/Relu_1Reluwhile/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_490/mul_2Mul!while/lstm_cell_490/Sigmoid_2:y:0(while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_490/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_490/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_490/BiasAdd/ReadVariableOp*^while/lstm_cell_490/MatMul/ReadVariableOp,^while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_490_biasadd_readvariableop_resource5while_lstm_cell_490_biasadd_readvariableop_resource_0"n
4while_lstm_cell_490_matmul_1_readvariableop_resource6while_lstm_cell_490_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_490_matmul_readvariableop_resource4while_lstm_cell_490_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_490/BiasAdd/ReadVariableOp*while/lstm_cell_490/BiasAdd/ReadVariableOp2V
)while/lstm_cell_490/MatMul/ReadVariableOp)while/lstm_cell_490/MatMul/ReadVariableOp2Z
+while/lstm_cell_490/MatMul_1/ReadVariableOp+while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2972430
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2972430___redundant_placeholder05
1while_while_cond_2972430___redundant_placeholder15
1while_while_cond_2972430___redundant_placeholder25
1while_while_cond_2972430___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969995

inputs?
,lstm_cell_490_matmul_readvariableop_resource:	d╚A
.lstm_cell_490_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_490_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_490/BiasAdd/ReadVariableOpб#lstm_cell_490/MatMul/ReadVariableOpб%lstm_cell_490/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_490/MatMul/ReadVariableOpReadVariableOp,lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_490/MatMulMatMulstrided_slice_2:output:0+lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_490/MatMul_1MatMulzeros:output:0-lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_490/addAddV2lstm_cell_490/MatMul:product:0 lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_490/BiasAddBiasAddlstm_cell_490/add:z:0,lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_490/splitSplit&lstm_cell_490/split/split_dim:output:0lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_490/SigmoidSigmoidlstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_1Sigmoidlstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_490/mulMullstm_cell_490/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_490/ReluRelulstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_490/mul_1Mullstm_cell_490/Sigmoid:y:0 lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_490/add_1AddV2lstm_cell_490/mul:z:0lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_2Sigmoidlstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_490/Relu_1Relulstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_490/mul_2Mullstm_cell_490/Sigmoid_2:y:0"lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_490_matmul_readvariableop_resource.lstm_cell_490_matmul_1_readvariableop_resource-lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2969911*
condR
while_cond_2969910*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_490/BiasAdd/ReadVariableOp$^lstm_cell_490/MatMul/ReadVariableOp&^lstm_cell_490/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_490/BiasAdd/ReadVariableOp$lstm_cell_490/BiasAdd/ReadVariableOp2J
#lstm_cell_490/MatMul/ReadVariableOp#lstm_cell_490/MatMul/ReadVariableOp2N
%lstm_cell_490/MatMul_1/ReadVariableOp%lstm_cell_490/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
║
╚
while_cond_2972617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2972617___redundant_placeholder05
1while_while_cond_2972617___redundant_placeholder15
1while_while_cond_2972617___redundant_placeholder25
1while_while_cond_2972617___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
њK
б
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972845
inputs_0>
,lstm_cell_491_matmul_readvariableop_resource:2(@
.lstm_cell_491_matmul_1_readvariableop_resource:
(;
-lstm_cell_491_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_491/BiasAdd/ReadVariableOpб#lstm_cell_491/MatMul/ReadVariableOpб%lstm_cell_491/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_491/MatMul/ReadVariableOpReadVariableOp,lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_491/MatMulMatMulstrided_slice_2:output:0+lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_491/MatMul_1MatMulzeros:output:0-lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_491/addAddV2lstm_cell_491/MatMul:product:0 lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_491/BiasAddBiasAddlstm_cell_491/add:z:0,lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_491/splitSplit&lstm_cell_491/split/split_dim:output:0lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_491/SigmoidSigmoidlstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_1Sigmoidlstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_491/mulMullstm_cell_491/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_491/ReluRelulstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_491/mul_1Mullstm_cell_491/Sigmoid:y:0 lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_491/add_1AddV2lstm_cell_491/mul:z:0lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_2Sigmoidlstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_491/Relu_1Relulstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_491/mul_2Mullstm_cell_491/Sigmoid_2:y:0"lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_491_matmul_readvariableop_resource.lstm_cell_491_matmul_1_readvariableop_resource-lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2972761*
condR
while_cond_2972760*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_491/BiasAdd/ReadVariableOp$^lstm_cell_491/MatMul/ReadVariableOp&^lstm_cell_491/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_491/BiasAdd/ReadVariableOp$lstm_cell_491/BiasAdd/ReadVariableOp2J
#lstm_cell_491/MatMul/ReadVariableOp#lstm_cell_491/MatMul/ReadVariableOp2N
%lstm_cell_491/MatMul_1/ReadVariableOp%lstm_cell_491/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
║
╚
while_cond_2969229
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2969229___redundant_placeholder05
1while_while_cond_2969229___redundant_placeholder15
1while_while_cond_2969229___redundant_placeholder25
1while_while_cond_2969229___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Н
Ё
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2973444

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
Ѕ#
в
while_body_2968896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_491_2968920_0:2(/
while_lstm_cell_491_2968922_0:
(+
while_lstm_cell_491_2968924_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_491_2968920:2(-
while_lstm_cell_491_2968922:
()
while_lstm_cell_491_2968924:(ѕб+while/lstm_cell_491/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_491/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_491_2968920_0while_lstm_cell_491_2968922_0while_lstm_cell_491_2968924_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2968882П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_491/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_491/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_491/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_491/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_491_2968920while_lstm_cell_491_2968920_0"<
while_lstm_cell_491_2968922while_lstm_cell_491_2968922_0"<
while_lstm_cell_491_2968924while_lstm_cell_491_2968924_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_491/StatefulPartitionedCall+while/lstm_cell_491/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
Ѓ
и
*__inference_lstm_145_layer_call_fn_2971943

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969995s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
я
 
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970310
lstm_144_input#
lstm_144_2970283:	љ#
lstm_144_2970285:	dљ
lstm_144_2970287:	љ#
lstm_145_2970290:	d╚#
lstm_145_2970292:	2╚
lstm_145_2970294:	╚"
lstm_146_2970297:2("
lstm_146_2970299:
(
lstm_146_2970301:("
dense_48_2970304:

dense_48_2970306:
identityѕб dense_48/StatefulPartitionedCallб lstm_144/StatefulPartitionedCallб lstm_145/StatefulPartitionedCallб lstm_146/StatefulPartitionedCallЊ
 lstm_144/StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputlstm_144_2970283lstm_144_2970285lstm_144_2970287*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2969314«
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_144/StatefulPartitionedCall:output:0lstm_145_2970290lstm_145_2970292lstm_145_2970294*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969464ф
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_145/StatefulPartitionedCall:output:0lstm_146_2970297lstm_146_2970299lstm_146_2970301*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969614ќ
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)lstm_146/StatefulPartitionedCall:output:0dense_48_2970304dense_48_2970306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2969632x
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_48/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_144_input
Уц
ќ
#__inference__traced_restore_2973717
file_prefix2
 assignvariableop_dense_48_kernel:
.
 assignvariableop_1_dense_48_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_144_lstm_cell_144_kernel:	љM
:assignvariableop_8_lstm_144_lstm_cell_144_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_144_lstm_cell_144_bias:	љD
1assignvariableop_10_lstm_145_lstm_cell_145_kernel:	d╚N
;assignvariableop_11_lstm_145_lstm_cell_145_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_145_lstm_cell_145_bias:	╚C
1assignvariableop_13_lstm_146_lstm_cell_146_kernel:2(M
;assignvariableop_14_lstm_146_lstm_cell_146_recurrent_kernel:
(=
/assignvariableop_15_lstm_146_lstm_cell_146_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_48_kernel_m:
6
(assignvariableop_19_adam_dense_48_bias_m:K
8assignvariableop_20_adam_lstm_144_lstm_cell_144_kernel_m:	љU
Bassignvariableop_21_adam_lstm_144_lstm_cell_144_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_144_lstm_cell_144_bias_m:	љK
8assignvariableop_23_adam_lstm_145_lstm_cell_145_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_145_lstm_cell_145_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_145_lstm_cell_145_bias_m:	╚J
8assignvariableop_26_adam_lstm_146_lstm_cell_146_kernel_m:2(T
Bassignvariableop_27_adam_lstm_146_lstm_cell_146_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_146_lstm_cell_146_bias_m:(<
*assignvariableop_29_adam_dense_48_kernel_v:
6
(assignvariableop_30_adam_dense_48_bias_v:K
8assignvariableop_31_adam_lstm_144_lstm_cell_144_kernel_v:	љU
Bassignvariableop_32_adam_lstm_144_lstm_cell_144_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_144_lstm_cell_144_bias_v:	љK
8assignvariableop_34_adam_lstm_145_lstm_cell_145_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_145_lstm_cell_145_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_145_lstm_cell_145_bias_v:	╚J
8assignvariableop_37_adam_lstm_146_lstm_cell_146_kernel_v:2(T
Bassignvariableop_38_adam_lstm_146_lstm_cell_146_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_146_lstm_cell_146_bias_v:(
identity_41ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9╚
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┬
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ь
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*║
_output_shapesД
ц:::::::::::::::::::::::::::::::::::::::::*7
dtypes-
+2)	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOpAssignVariableOp assignvariableop_dense_48_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_48_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:І
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_144_lstm_cell_144_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_144_lstm_cell_144_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_144_lstm_cell_144_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_145_lstm_cell_145_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_145_lstm_cell_145_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_145_lstm_cell_145_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_146_lstm_cell_146_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_146_lstm_cell_146_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_146_lstm_cell_146_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_48_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_48_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_144_lstm_cell_144_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_144_lstm_cell_144_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_144_lstm_cell_144_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_145_lstm_cell_145_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_145_lstm_cell_145_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_145_lstm_cell_145_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_146_lstm_cell_146_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_146_lstm_cell_146_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_146_lstm_cell_146_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_48_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_48_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_144_lstm_cell_144_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_144_lstm_cell_144_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_144_lstm_cell_144_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_145_lstm_cell_145_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_145_lstm_cell_145_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_145_lstm_cell_145_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_146_lstm_cell_146_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_146_lstm_cell_146_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_146_lstm_cell_146_bias_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ┐
Identity_40Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_41IdentityIdentity_40:output:0^NoOp_1*
T0*
_output_shapes
: г
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
Л8
┌
while_body_2971529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_489_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_489_matmul_readvariableop_resource:	љG
4while_lstm_cell_489_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_489/BiasAdd/ReadVariableOpб)while/lstm_cell_489/MatMul/ReadVariableOpб+while/lstm_cell_489/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_489/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_489/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_489/addAddV2$while/lstm_cell_489/MatMul:product:0&while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_489/BiasAddBiasAddwhile/lstm_cell_489/add:z:02while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_489/splitSplit,while/lstm_cell_489/split/split_dim:output:0$while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_489/SigmoidSigmoid"while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_1Sigmoid"while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_489/mulMul!while/lstm_cell_489/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_489/ReluRelu"while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_489/mul_1Mulwhile/lstm_cell_489/Sigmoid:y:0&while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_489/add_1AddV2while/lstm_cell_489/mul:z:0while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_2Sigmoid"while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_489/Relu_1Reluwhile/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_489/mul_2Mul!while/lstm_cell_489/Sigmoid_2:y:0(while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_489/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_489/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_489/BiasAdd/ReadVariableOp*^while/lstm_cell_489/MatMul/ReadVariableOp,^while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_489_biasadd_readvariableop_resource5while_lstm_cell_489_biasadd_readvariableop_resource_0"n
4while_lstm_cell_489_matmul_1_readvariableop_resource6while_lstm_cell_489_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_489_matmul_readvariableop_resource4while_lstm_cell_489_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_489/BiasAdd/ReadVariableOp*while/lstm_cell_489/BiasAdd/ReadVariableOp2V
)while/lstm_cell_489/MatMul/ReadVariableOp)while/lstm_cell_489/MatMul/ReadVariableOp2Z
+while/lstm_cell_489/MatMul_1/ReadVariableOp+while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
к
э
J__inference_sequential_48_layer_call_and_return_conditional_losses_2969639

inputs#
lstm_144_2969315:	љ#
lstm_144_2969317:	dљ
lstm_144_2969319:	љ#
lstm_145_2969465:	d╚#
lstm_145_2969467:	2╚
lstm_145_2969469:	╚"
lstm_146_2969615:2("
lstm_146_2969617:
(
lstm_146_2969619:("
dense_48_2969633:

dense_48_2969635:
identityѕб dense_48/StatefulPartitionedCallб lstm_144/StatefulPartitionedCallб lstm_145/StatefulPartitionedCallб lstm_146/StatefulPartitionedCallІ
 lstm_144/StatefulPartitionedCallStatefulPartitionedCallinputslstm_144_2969315lstm_144_2969317lstm_144_2969319*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2969314«
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_144/StatefulPartitionedCall:output:0lstm_145_2969465lstm_145_2969467lstm_145_2969469*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969464ф
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_145/StatefulPartitionedCall:output:0lstm_146_2969615lstm_146_2969617lstm_146_2969619*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969614ќ
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)lstm_146/StatefulPartitionedCall:output:0dense_48_2969633dense_48_2969635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2969632x
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_48/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄

Џ
/__inference_sequential_48_layer_call_fn_2970429

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970228o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_2971815
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_489_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_489_matmul_readvariableop_resource:	љG
4while_lstm_cell_489_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_489/BiasAdd/ReadVariableOpб)while/lstm_cell_489/MatMul/ReadVariableOpб+while/lstm_cell_489/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_489/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_489/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_489/addAddV2$while/lstm_cell_489/MatMul:product:0&while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_489/BiasAddBiasAddwhile/lstm_cell_489/add:z:02while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_489/splitSplit,while/lstm_cell_489/split/split_dim:output:0$while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_489/SigmoidSigmoid"while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_1Sigmoid"while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_489/mulMul!while/lstm_cell_489/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_489/ReluRelu"while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_489/mul_1Mulwhile/lstm_cell_489/Sigmoid:y:0&while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_489/add_1AddV2while/lstm_cell_489/mul:z:0while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_2Sigmoid"while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_489/Relu_1Reluwhile/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_489/mul_2Mul!while/lstm_cell_489/Sigmoid_2:y:0(while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_489/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_489/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_489/BiasAdd/ReadVariableOp*^while/lstm_cell_489/MatMul/ReadVariableOp,^while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_489_biasadd_readvariableop_resource5while_lstm_cell_489_biasadd_readvariableop_resource_0"n
4while_lstm_cell_489_matmul_1_readvariableop_resource6while_lstm_cell_489_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_489_matmul_readvariableop_resource4while_lstm_cell_489_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_489/BiasAdd/ReadVariableOp*while/lstm_cell_489/BiasAdd/ReadVariableOp2V
)while/lstm_cell_489/MatMul/ReadVariableOp)while/lstm_cell_489/MatMul/ReadVariableOp2Z
+while/lstm_cell_489/MatMul_1/ReadVariableOp+while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
Л8
┌
while_body_2972145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_490_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_490/BiasAdd/ReadVariableOpб)while/lstm_cell_490/MatMul/ReadVariableOpб+while/lstm_cell_490/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_490/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_490/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_490/addAddV2$while/lstm_cell_490/MatMul:product:0&while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_490/BiasAddBiasAddwhile/lstm_cell_490/add:z:02while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_490/splitSplit,while/lstm_cell_490/split/split_dim:output:0$while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_490/SigmoidSigmoid"while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_1Sigmoid"while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_490/mulMul!while/lstm_cell_490/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_490/ReluRelu"while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_490/mul_1Mulwhile/lstm_cell_490/Sigmoid:y:0&while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_490/add_1AddV2while/lstm_cell_490/mul:z:0while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_2Sigmoid"while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_490/Relu_1Reluwhile/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_490/mul_2Mul!while/lstm_cell_490/Sigmoid_2:y:0(while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_490/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_490/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_490/BiasAdd/ReadVariableOp*^while/lstm_cell_490/MatMul/ReadVariableOp,^while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_490_biasadd_readvariableop_resource5while_lstm_cell_490_biasadd_readvariableop_resource_0"n
4while_lstm_cell_490_matmul_1_readvariableop_resource6while_lstm_cell_490_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_490_matmul_readvariableop_resource4while_lstm_cell_490_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_490/BiasAdd/ReadVariableOp*while/lstm_cell_490/BiasAdd/ReadVariableOp2V
)while/lstm_cell_490/MatMul/ReadVariableOp)while/lstm_cell_490/MatMul/ReadVariableOp2Z
+while/lstm_cell_490/MatMul_1/ReadVariableOp+while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2972760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2972760___redundant_placeholder05
1while_while_cond_2972760___redundant_placeholder15
1while_while_cond_2972760___redundant_placeholder25
1while_while_cond_2972760___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_145_while_cond_2971053.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_30
,lstm_145_while_less_lstm_145_strided_slice_1G
Clstm_145_while_lstm_145_while_cond_2971053___redundant_placeholder0G
Clstm_145_while_lstm_145_while_cond_2971053___redundant_placeholder1G
Clstm_145_while_lstm_145_while_cond_2971053___redundant_placeholder2G
Clstm_145_while_lstm_145_while_cond_2971053___redundant_placeholder3
lstm_145_while_identity
є
lstm_145/while/LessLesslstm_145_while_placeholder,lstm_145_while_less_lstm_145_strided_slice_1*
T0*
_output_shapes
: ]
lstm_145/while/IdentityIdentitylstm_145/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_145_while_identity lstm_145/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
З

Б
/__inference_sequential_48_layer_call_fn_2969664
lstm_144_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_2969639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_144_input
аK
Ц
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971470
inputs_0?
,lstm_cell_489_matmul_readvariableop_resource:	љA
.lstm_cell_489_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_489_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_489/BiasAdd/ReadVariableOpб#lstm_cell_489/MatMul/ReadVariableOpб%lstm_cell_489/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_489/MatMul/ReadVariableOpReadVariableOp,lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_489/MatMulMatMulstrided_slice_2:output:0+lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_489/MatMul_1MatMulzeros:output:0-lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_489/addAddV2lstm_cell_489/MatMul:product:0 lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_489/BiasAddBiasAddlstm_cell_489/add:z:0,lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_489/splitSplit&lstm_cell_489/split/split_dim:output:0lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_489/SigmoidSigmoidlstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_1Sigmoidlstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_489/mulMullstm_cell_489/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_489/ReluRelulstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_489/mul_1Mullstm_cell_489/Sigmoid:y:0 lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_489/add_1AddV2lstm_cell_489/mul:z:0lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_2Sigmoidlstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_489/Relu_1Relulstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_489/mul_2Mullstm_cell_489/Sigmoid_2:y:0"lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_489_matmul_readvariableop_resource.lstm_cell_489_matmul_1_readvariableop_resource-lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2971386*
condR
while_cond_2971385*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_489/BiasAdd/ReadVariableOp$^lstm_cell_489/MatMul/ReadVariableOp&^lstm_cell_489/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_489/BiasAdd/ReadVariableOp$lstm_cell_489/BiasAdd/ReadVariableOp2J
#lstm_cell_489/MatMul/ReadVariableOp#lstm_cell_489/MatMul/ReadVariableOp2N
%lstm_cell_489/MatMul_1/ReadVariableOp%lstm_cell_489/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
аK
Ц
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971613
inputs_0?
,lstm_cell_489_matmul_readvariableop_resource:	љA
.lstm_cell_489_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_489_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_489/BiasAdd/ReadVariableOpб#lstm_cell_489/MatMul/ReadVariableOpб%lstm_cell_489/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_489/MatMul/ReadVariableOpReadVariableOp,lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_489/MatMulMatMulstrided_slice_2:output:0+lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_489/MatMul_1MatMulzeros:output:0-lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_489/addAddV2lstm_cell_489/MatMul:product:0 lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_489/BiasAddBiasAddlstm_cell_489/add:z:0,lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_489/splitSplit&lstm_cell_489/split/split_dim:output:0lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_489/SigmoidSigmoidlstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_1Sigmoidlstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_489/mulMullstm_cell_489/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_489/ReluRelulstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_489/mul_1Mullstm_cell_489/Sigmoid:y:0 lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_489/add_1AddV2lstm_cell_489/mul:z:0lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_2Sigmoidlstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_489/Relu_1Relulstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_489/mul_2Mullstm_cell_489/Sigmoid_2:y:0"lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_489_matmul_readvariableop_resource.lstm_cell_489_matmul_1_readvariableop_resource-lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2971529*
condR
while_cond_2971528*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  d├
NoOpNoOp%^lstm_cell_489/BiasAdd/ReadVariableOp$^lstm_cell_489/MatMul/ReadVariableOp&^lstm_cell_489/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_489/BiasAdd/ReadVariableOp$lstm_cell_489/BiasAdd/ReadVariableOp2J
#lstm_cell_489/MatMul/ReadVariableOp#lstm_cell_489/MatMul/ReadVariableOp2N
%lstm_cell_489/MatMul_1/ReadVariableOp%lstm_cell_489/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
ПJ
а
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972988

inputs>
,lstm_cell_491_matmul_readvariableop_resource:2(@
.lstm_cell_491_matmul_1_readvariableop_resource:
(;
-lstm_cell_491_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_491/BiasAdd/ReadVariableOpб#lstm_cell_491/MatMul/ReadVariableOpб%lstm_cell_491/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_491/MatMul/ReadVariableOpReadVariableOp,lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_491/MatMulMatMulstrided_slice_2:output:0+lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_491/MatMul_1MatMulzeros:output:0-lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_491/addAddV2lstm_cell_491/MatMul:product:0 lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_491/BiasAddBiasAddlstm_cell_491/add:z:0,lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_491/splitSplit&lstm_cell_491/split/split_dim:output:0lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_491/SigmoidSigmoidlstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_1Sigmoidlstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_491/mulMullstm_cell_491/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_491/ReluRelulstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_491/mul_1Mullstm_cell_491/Sigmoid:y:0 lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_491/add_1AddV2lstm_cell_491/mul:z:0lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_2Sigmoidlstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_491/Relu_1Relulstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_491/mul_2Mullstm_cell_491/Sigmoid_2:y:0"lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_491_matmul_readvariableop_resource.lstm_cell_491_matmul_1_readvariableop_resource-lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2972904*
condR
while_cond_2972903*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_491/BiasAdd/ReadVariableOp$^lstm_cell_491/MatMul/ReadVariableOp&^lstm_cell_491/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_491/BiasAdd/ReadVariableOp$lstm_cell_491/BiasAdd/ReadVariableOp2J
#lstm_cell_491/MatMul/ReadVariableOp#lstm_cell_491/MatMul/ReadVariableOp2N
%lstm_cell_491/MatMul_1/ReadVariableOp%lstm_cell_491/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
─8
н
while_body_2972904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_491_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_491_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_491_matmul_readvariableop_resource:2(F
4while_lstm_cell_491_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_491/BiasAdd/ReadVariableOpб)while/lstm_cell_491/MatMul/ReadVariableOpб+while/lstm_cell_491/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_491/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_491/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_491/addAddV2$while/lstm_cell_491/MatMul:product:0&while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_491/BiasAddBiasAddwhile/lstm_cell_491/add:z:02while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_491/splitSplit,while/lstm_cell_491/split/split_dim:output:0$while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_491/SigmoidSigmoid"while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_1Sigmoid"while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_491/mulMul!while/lstm_cell_491/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_491/ReluRelu"while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_491/mul_1Mulwhile/lstm_cell_491/Sigmoid:y:0&while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_491/add_1AddV2while/lstm_cell_491/mul:z:0while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_2Sigmoid"while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_491/Relu_1Reluwhile/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_491/mul_2Mul!while/lstm_cell_491/Sigmoid_2:y:0(while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_491/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_491/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_491/BiasAdd/ReadVariableOp*^while/lstm_cell_491/MatMul/ReadVariableOp,^while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_491_biasadd_readvariableop_resource5while_lstm_cell_491_biasadd_readvariableop_resource_0"n
4while_lstm_cell_491_matmul_1_readvariableop_resource6while_lstm_cell_491_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_491_matmul_readvariableop_resource4while_lstm_cell_491_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_491/BiasAdd/ReadVariableOp*while/lstm_cell_491/BiasAdd/ReadVariableOp2V
)while/lstm_cell_491/MatMul/ReadVariableOp)while/lstm_cell_491/MatMul/ReadVariableOp2Z
+while/lstm_cell_491/MatMul_1/ReadVariableOp+while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
─
Ќ
*__inference_dense_48_layer_call_fn_2973140

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2969632o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
┐
ћ
)sequential_48_lstm_145_while_cond_2967885J
Fsequential_48_lstm_145_while_sequential_48_lstm_145_while_loop_counterP
Lsequential_48_lstm_145_while_sequential_48_lstm_145_while_maximum_iterations,
(sequential_48_lstm_145_while_placeholder.
*sequential_48_lstm_145_while_placeholder_1.
*sequential_48_lstm_145_while_placeholder_2.
*sequential_48_lstm_145_while_placeholder_3L
Hsequential_48_lstm_145_while_less_sequential_48_lstm_145_strided_slice_1c
_sequential_48_lstm_145_while_sequential_48_lstm_145_while_cond_2967885___redundant_placeholder0c
_sequential_48_lstm_145_while_sequential_48_lstm_145_while_cond_2967885___redundant_placeholder1c
_sequential_48_lstm_145_while_sequential_48_lstm_145_while_cond_2967885___redundant_placeholder2c
_sequential_48_lstm_145_while_sequential_48_lstm_145_while_cond_2967885___redundant_placeholder3)
%sequential_48_lstm_145_while_identity
Й
!sequential_48/lstm_145/while/LessLess(sequential_48_lstm_145_while_placeholderHsequential_48_lstm_145_while_less_sequential_48_lstm_145_strided_slice_1*
T0*
_output_shapes
: y
%sequential_48/lstm_145/while/IdentityIdentity%sequential_48/lstm_145/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_48_lstm_145_while_identity.sequential_48/lstm_145/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
О
є
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968182

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
аK
Ц
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972229
inputs_0?
,lstm_cell_490_matmul_readvariableop_resource:	d╚A
.lstm_cell_490_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_490_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_490/BiasAdd/ReadVariableOpб#lstm_cell_490/MatMul/ReadVariableOpб%lstm_cell_490/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_490/MatMul/ReadVariableOpReadVariableOp,lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_490/MatMulMatMulstrided_slice_2:output:0+lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_490/MatMul_1MatMulzeros:output:0-lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_490/addAddV2lstm_cell_490/MatMul:product:0 lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_490/BiasAddBiasAddlstm_cell_490/add:z:0,lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_490/splitSplit&lstm_cell_490/split/split_dim:output:0lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_490/SigmoidSigmoidlstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_1Sigmoidlstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_490/mulMullstm_cell_490/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_490/ReluRelulstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_490/mul_1Mullstm_cell_490/Sigmoid:y:0 lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_490/add_1AddV2lstm_cell_490/mul:z:0lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_2Sigmoidlstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_490/Relu_1Relulstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_490/mul_2Mullstm_cell_490/Sigmoid_2:y:0"lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_490_matmul_readvariableop_resource.lstm_cell_490_matmul_1_readvariableop_resource-lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2972145*
condR
while_cond_2972144*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_490/BiasAdd/ReadVariableOp$^lstm_cell_490/MatMul/ReadVariableOp&^lstm_cell_490/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_490/BiasAdd/ReadVariableOp$lstm_cell_490/BiasAdd/ReadVariableOp2J
#lstm_cell_490/MatMul/ReadVariableOp#lstm_cell_490/MatMul/ReadVariableOp2N
%lstm_cell_490/MatMul_1/ReadVariableOp%lstm_cell_490/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
РW
Ъ
 __inference__traced_save_2973587
file_prefix.
*savev2_dense_48_kernel_read_readvariableop,
(savev2_dense_48_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_144_lstm_cell_144_kernel_read_readvariableopF
Bsavev2_lstm_144_lstm_cell_144_recurrent_kernel_read_readvariableop:
6savev2_lstm_144_lstm_cell_144_bias_read_readvariableop<
8savev2_lstm_145_lstm_cell_145_kernel_read_readvariableopF
Bsavev2_lstm_145_lstm_cell_145_recurrent_kernel_read_readvariableop:
6savev2_lstm_145_lstm_cell_145_bias_read_readvariableop<
8savev2_lstm_146_lstm_cell_146_kernel_read_readvariableopF
Bsavev2_lstm_146_lstm_cell_146_recurrent_kernel_read_readvariableop:
6savev2_lstm_146_lstm_cell_146_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_48_kernel_m_read_readvariableop3
/savev2_adam_dense_48_bias_m_read_readvariableopC
?savev2_adam_lstm_144_lstm_cell_144_kernel_m_read_readvariableopM
Isavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_144_lstm_cell_144_bias_m_read_readvariableopC
?savev2_adam_lstm_145_lstm_cell_145_kernel_m_read_readvariableopM
Isavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_145_lstm_cell_145_bias_m_read_readvariableopC
?savev2_adam_lstm_146_lstm_cell_146_kernel_m_read_readvariableopM
Isavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_146_lstm_cell_146_bias_m_read_readvariableop5
1savev2_adam_dense_48_kernel_v_read_readvariableop3
/savev2_adam_dense_48_bias_v_read_readvariableopC
?savev2_adam_lstm_144_lstm_cell_144_kernel_v_read_readvariableopM
Isavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_144_lstm_cell_144_bias_v_read_readvariableopC
?savev2_adam_lstm_145_lstm_cell_145_kernel_v_read_readvariableopM
Isavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_145_lstm_cell_145_bias_v_read_readvariableopC
?savev2_adam_lstm_146_lstm_cell_146_kernel_v_read_readvariableopM
Isavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_146_lstm_cell_146_bias_v_read_readvariableop
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
: ┼
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*Ь
valueСBр)B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:)*
dtype0*e
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ж
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_48_kernel_read_readvariableop(savev2_dense_48_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_144_lstm_cell_144_kernel_read_readvariableopBsavev2_lstm_144_lstm_cell_144_recurrent_kernel_read_readvariableop6savev2_lstm_144_lstm_cell_144_bias_read_readvariableop8savev2_lstm_145_lstm_cell_145_kernel_read_readvariableopBsavev2_lstm_145_lstm_cell_145_recurrent_kernel_read_readvariableop6savev2_lstm_145_lstm_cell_145_bias_read_readvariableop8savev2_lstm_146_lstm_cell_146_kernel_read_readvariableopBsavev2_lstm_146_lstm_cell_146_recurrent_kernel_read_readvariableop6savev2_lstm_146_lstm_cell_146_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_48_kernel_m_read_readvariableop/savev2_adam_dense_48_bias_m_read_readvariableop?savev2_adam_lstm_144_lstm_cell_144_kernel_m_read_readvariableopIsavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_144_lstm_cell_144_bias_m_read_readvariableop?savev2_adam_lstm_145_lstm_cell_145_kernel_m_read_readvariableopIsavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_145_lstm_cell_145_bias_m_read_readvariableop?savev2_adam_lstm_146_lstm_cell_146_kernel_m_read_readvariableopIsavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_146_lstm_cell_146_bias_m_read_readvariableop1savev2_adam_dense_48_kernel_v_read_readvariableop/savev2_adam_dense_48_bias_v_read_readvariableop?savev2_adam_lstm_144_lstm_cell_144_kernel_v_read_readvariableopIsavev2_adam_lstm_144_lstm_cell_144_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_144_lstm_cell_144_bias_v_read_readvariableop?savev2_adam_lstm_145_lstm_cell_145_kernel_v_read_readvariableopIsavev2_adam_lstm_145_lstm_cell_145_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_145_lstm_cell_145_bias_v_read_readvariableop?savev2_adam_lstm_146_lstm_cell_146_kernel_v_read_readvariableopIsavev2_adam_lstm_146_lstm_cell_146_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_146_lstm_cell_146_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *7
dtypes-
+2)	љ
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

identity_1Identity_1:output:0*М
_input_shapes┴
Й: :
:: : : : : :	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(: : :
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
(:(:
::	љ:	dљ:љ:	d╚:	2╚:╚:2(:
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
:	љ:%	!

_output_shapes
:	dљ:!


_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!

_output_shapes
:	dљ:!

_output_shapes	
:љ:%!

_output_shapes
:	d╚:%!

_output_shapes
:	2╚:!

_output_shapes	
:╚:$ 

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
:	љ:%!!

_output_shapes
:	dљ:!"

_output_shapes	
:љ:%#!

_output_shapes
:	d╚:%$!

_output_shapes
:	2╚:!%

_output_shapes	
:╚:$& 

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
Л8
┌
while_body_2970076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_489_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_489_matmul_readvariableop_resource:	љG
4while_lstm_cell_489_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_489/BiasAdd/ReadVariableOpб)while/lstm_cell_489/MatMul/ReadVariableOpб+while/lstm_cell_489/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_489/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_489/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_489/addAddV2$while/lstm_cell_489/MatMul:product:0&while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_489/BiasAddBiasAddwhile/lstm_cell_489/add:z:02while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_489/splitSplit,while/lstm_cell_489/split/split_dim:output:0$while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_489/SigmoidSigmoid"while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_1Sigmoid"while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_489/mulMul!while/lstm_cell_489/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_489/ReluRelu"while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_489/mul_1Mulwhile/lstm_cell_489/Sigmoid:y:0&while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_489/add_1AddV2while/lstm_cell_489/mul:z:0while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_2Sigmoid"while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_489/Relu_1Reluwhile/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_489/mul_2Mul!while/lstm_cell_489/Sigmoid_2:y:0(while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_489/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_489/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_489/BiasAdd/ReadVariableOp*^while/lstm_cell_489/MatMul/ReadVariableOp,^while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_489_biasadd_readvariableop_resource5while_lstm_cell_489_biasadd_readvariableop_resource_0"n
4while_lstm_cell_489_matmul_1_readvariableop_resource6while_lstm_cell_489_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_489_matmul_readvariableop_resource4while_lstm_cell_489_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_489/BiasAdd/ReadVariableOp*while/lstm_cell_489/BiasAdd/ReadVariableOp2V
)while/lstm_cell_489/MatMul/ReadVariableOp)while/lstm_cell_489/MatMul/ReadVariableOp2Z
+while/lstm_cell_489/MatMul_1/ReadVariableOp+while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2969379
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2969379___redundant_placeholder05
1while_while_cond_2969379___redundant_placeholder15
1while_while_cond_2969379___redundant_placeholder25
1while_while_cond_2969379___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
О
є
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968678

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
и

Ч
lstm_144_while_cond_2970487.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_30
,lstm_144_while_less_lstm_144_strided_slice_1G
Clstm_144_while_lstm_144_while_cond_2970487___redundant_placeholder0G
Clstm_144_while_lstm_144_while_cond_2970487___redundant_placeholder1G
Clstm_144_while_lstm_144_while_cond_2970487___redundant_placeholder2G
Clstm_144_while_lstm_144_while_cond_2970487___redundant_placeholder3
lstm_144_while_identity
є
lstm_144/while/LessLesslstm_144_while_placeholder,lstm_144_while_less_lstm_144_strided_slice_1*
T0*
_output_shapes
: ]
lstm_144/while/IdentityIdentitylstm_144/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_144_while_identity lstm_144/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
њK
б
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972702
inputs_0>
,lstm_cell_491_matmul_readvariableop_resource:2(@
.lstm_cell_491_matmul_1_readvariableop_resource:
(;
-lstm_cell_491_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_491/BiasAdd/ReadVariableOpб#lstm_cell_491/MatMul/ReadVariableOpб%lstm_cell_491/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_491/MatMul/ReadVariableOpReadVariableOp,lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_491/MatMulMatMulstrided_slice_2:output:0+lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_491/MatMul_1MatMulzeros:output:0-lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_491/addAddV2lstm_cell_491/MatMul:product:0 lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_491/BiasAddBiasAddlstm_cell_491/add:z:0,lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_491/splitSplit&lstm_cell_491/split/split_dim:output:0lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_491/SigmoidSigmoidlstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_1Sigmoidlstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_491/mulMullstm_cell_491/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_491/ReluRelulstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_491/mul_1Mullstm_cell_491/Sigmoid:y:0 lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_491/add_1AddV2lstm_cell_491/mul:z:0lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_2Sigmoidlstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_491/Relu_1Relulstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_491/mul_2Mullstm_cell_491/Sigmoid_2:y:0"lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_491_matmul_readvariableop_resource.lstm_cell_491_matmul_1_readvariableop_resource-lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2972618*
condR
while_cond_2972617*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
├
NoOpNoOp%^lstm_cell_491/BiasAdd/ReadVariableOp$^lstm_cell_491/MatMul/ReadVariableOp&^lstm_cell_491/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_491/BiasAdd/ReadVariableOp$lstm_cell_491/BiasAdd/ReadVariableOp2J
#lstm_cell_491/MatMul/ReadVariableOp#lstm_cell_491/MatMul/ReadVariableOp2N
%lstm_cell_491/MatMul_1/ReadVariableOp%lstm_cell_491/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
ПJ
а
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969830

inputs>
,lstm_cell_491_matmul_readvariableop_resource:2(@
.lstm_cell_491_matmul_1_readvariableop_resource:
(;
-lstm_cell_491_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_491/BiasAdd/ReadVariableOpб#lstm_cell_491/MatMul/ReadVariableOpб%lstm_cell_491/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_491/MatMul/ReadVariableOpReadVariableOp,lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_491/MatMulMatMulstrided_slice_2:output:0+lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_491/MatMul_1MatMulzeros:output:0-lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_491/addAddV2lstm_cell_491/MatMul:product:0 lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_491/BiasAddBiasAddlstm_cell_491/add:z:0,lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_491/splitSplit&lstm_cell_491/split/split_dim:output:0lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_491/SigmoidSigmoidlstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_1Sigmoidlstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_491/mulMullstm_cell_491/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_491/ReluRelulstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_491/mul_1Mullstm_cell_491/Sigmoid:y:0 lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_491/add_1AddV2lstm_cell_491/mul:z:0lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_2Sigmoidlstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_491/Relu_1Relulstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_491/mul_2Mullstm_cell_491/Sigmoid_2:y:0"lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_491_matmul_readvariableop_resource.lstm_cell_491_matmul_1_readvariableop_resource-lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2969746*
condR
while_cond_2969745*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_491/BiasAdd/ReadVariableOp$^lstm_cell_491/MatMul/ReadVariableOp&^lstm_cell_491/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_491/BiasAdd/ReadVariableOp$lstm_cell_491/BiasAdd/ReadVariableOp2J
#lstm_cell_491/MatMul/ReadVariableOp#lstm_cell_491/MatMul/ReadVariableOp2N
%lstm_cell_491/MatMul_1/ReadVariableOp%lstm_cell_491/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_2968195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2968195___redundant_placeholder05
1while_while_cond_2968195___redundant_placeholder15
1while_while_cond_2968195___redundant_placeholder25
1while_while_cond_2968195___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
╚	
Ш
E__inference_dense_48_layer_call_and_return_conditional_losses_2969632

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
»8
ј
E__inference_lstm_145_layer_call_and_return_conditional_losses_2968615

inputs(
lstm_cell_490_2968533:	d╚(
lstm_cell_490_2968535:	2╚$
lstm_cell_490_2968537:	╚
identityѕб%lstm_cell_490/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_490/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_490_2968533lstm_cell_490_2968535lstm_cell_490_2968537*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968532n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_490_2968533lstm_cell_490_2968535lstm_cell_490_2968537*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2968546*
condR
while_cond_2968545*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_490/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_490/StatefulPartitionedCall%lstm_cell_490/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Ј#
ы
while_body_2968737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_490_2968761_0:	d╚0
while_lstm_cell_490_2968763_0:	2╚,
while_lstm_cell_490_2968765_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_490_2968761:	d╚.
while_lstm_cell_490_2968763:	2╚*
while_lstm_cell_490_2968765:	╚ѕб+while/lstm_cell_490/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_490/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_490_2968761_0while_lstm_cell_490_2968763_0while_lstm_cell_490_2968765_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968678П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_490/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_490/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_490/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_490/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_490_2968761while_lstm_cell_490_2968761_0"<
while_lstm_cell_490_2968763while_lstm_cell_490_2968763_0"<
while_lstm_cell_490_2968765while_lstm_cell_490_2968765_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_490/StatefulPartitionedCall+while/lstm_cell_490/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2971671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2971671___redundant_placeholder05
1while_while_cond_2971671___redundant_placeholder15
1while_while_cond_2971671___redundant_placeholder25
1while_while_cond_2971671___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
─8
н
while_body_2972761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_491_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_491_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_491_matmul_readvariableop_resource:2(F
4while_lstm_cell_491_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_491/BiasAdd/ReadVariableOpб)while/lstm_cell_491/MatMul/ReadVariableOpб+while/lstm_cell_491/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_491/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_491/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_491/addAddV2$while/lstm_cell_491/MatMul:product:0&while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_491/BiasAddBiasAddwhile/lstm_cell_491/add:z:02while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_491/splitSplit,while/lstm_cell_491/split/split_dim:output:0$while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_491/SigmoidSigmoid"while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_1Sigmoid"while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_491/mulMul!while/lstm_cell_491/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_491/ReluRelu"while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_491/mul_1Mulwhile/lstm_cell_491/Sigmoid:y:0&while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_491/add_1AddV2while/lstm_cell_491/mul:z:0while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_2Sigmoid"while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_491/Relu_1Reluwhile/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_491/mul_2Mul!while/lstm_cell_491/Sigmoid_2:y:0(while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_491/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_491/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_491/BiasAdd/ReadVariableOp*^while/lstm_cell_491/MatMul/ReadVariableOp,^while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_491_biasadd_readvariableop_resource5while_lstm_cell_491_biasadd_readvariableop_resource_0"n
4while_lstm_cell_491_matmul_1_readvariableop_resource6while_lstm_cell_491_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_491_matmul_readvariableop_resource4while_lstm_cell_491_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_491/BiasAdd/ReadVariableOp*while/lstm_cell_491/BiasAdd/ReadVariableOp2V
)while/lstm_cell_491/MatMul/ReadVariableOp)while/lstm_cell_491/MatMul/ReadVariableOp2Z
+while/lstm_cell_491/MatMul_1/ReadVariableOp+while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
№
Э
/__inference_lstm_cell_490_layer_call_fn_2973282

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
Э
┤
*__inference_lstm_146_layer_call_fn_2972559

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969830o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Н
Ё
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2973412

inputs
states_0
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
─8
н
while_body_2969530
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_491_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_491_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_491_matmul_readvariableop_resource:2(F
4while_lstm_cell_491_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_491/BiasAdd/ReadVariableOpб)while/lstm_cell_491/MatMul/ReadVariableOpб+while/lstm_cell_491/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_491/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_491/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_491/addAddV2$while/lstm_cell_491/MatMul:product:0&while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_491/BiasAddBiasAddwhile/lstm_cell_491/add:z:02while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_491/splitSplit,while/lstm_cell_491/split/split_dim:output:0$while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_491/SigmoidSigmoid"while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_1Sigmoid"while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_491/mulMul!while/lstm_cell_491/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_491/ReluRelu"while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_491/mul_1Mulwhile/lstm_cell_491/Sigmoid:y:0&while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_491/add_1AddV2while/lstm_cell_491/mul:z:0while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_2Sigmoid"while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_491/Relu_1Reluwhile/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_491/mul_2Mul!while/lstm_cell_491/Sigmoid_2:y:0(while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_491/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_491/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_491/BiasAdd/ReadVariableOp*^while/lstm_cell_491/MatMul/ReadVariableOp,^while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_491_biasadd_readvariableop_resource5while_lstm_cell_491_biasadd_readvariableop_resource_0"n
4while_lstm_cell_491_matmul_1_readvariableop_resource6while_lstm_cell_491_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_491_matmul_readvariableop_resource4while_lstm_cell_491_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_491/BiasAdd/ReadVariableOp*while/lstm_cell_491/BiasAdd/ReadVariableOp2V
)while/lstm_cell_491/MatMul/ReadVariableOp)while/lstm_cell_491/MatMul/ReadVariableOp2Z
+while/lstm_cell_491/MatMul_1/ReadVariableOp+while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
аK
Ц
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972086
inputs_0?
,lstm_cell_490_matmul_readvariableop_resource:	d╚A
.lstm_cell_490_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_490_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_490/BiasAdd/ReadVariableOpб#lstm_cell_490/MatMul/ReadVariableOpб%lstm_cell_490/MatMul_1/ReadVariableOpбwhile=
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_490/MatMul/ReadVariableOpReadVariableOp,lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_490/MatMulMatMulstrided_slice_2:output:0+lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_490/MatMul_1MatMulzeros:output:0-lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_490/addAddV2lstm_cell_490/MatMul:product:0 lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_490/BiasAddBiasAddlstm_cell_490/add:z:0,lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_490/splitSplit&lstm_cell_490/split/split_dim:output:0lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_490/SigmoidSigmoidlstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_1Sigmoidlstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_490/mulMullstm_cell_490/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_490/ReluRelulstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_490/mul_1Mullstm_cell_490/Sigmoid:y:0 lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_490/add_1AddV2lstm_cell_490/mul:z:0lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_2Sigmoidlstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_490/Relu_1Relulstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_490/mul_2Mullstm_cell_490/Sigmoid_2:y:0"lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_490_matmul_readvariableop_resource.lstm_cell_490_matmul_1_readvariableop_resource-lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2972002*
condR
while_cond_2972001*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2├
NoOpNoOp%^lstm_cell_490/BiasAdd/ReadVariableOp$^lstm_cell_490/MatMul/ReadVariableOp&^lstm_cell_490/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_490/BiasAdd/ReadVariableOp$lstm_cell_490/BiasAdd/ReadVariableOp2J
#lstm_cell_490/MatMul/ReadVariableOp#lstm_cell_490/MatMul/ReadVariableOp2N
%lstm_cell_490/MatMul_1/ReadVariableOp%lstm_cell_490/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
Ѓ
и
*__inference_lstm_144_layer_call_fn_2971327

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2970160s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▄

Џ
/__inference_sequential_48_layer_call_fn_2970402

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_2969639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ѓ
и
*__inference_lstm_144_layer_call_fn_2971316

inputs
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2969314s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_2971672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_489_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_489_matmul_readvariableop_resource:	љG
4while_lstm_cell_489_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_489/BiasAdd/ReadVariableOpб)while/lstm_cell_489/MatMul/ReadVariableOpб+while/lstm_cell_489/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_489/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_489/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_489/addAddV2$while/lstm_cell_489/MatMul:product:0&while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_489/BiasAddBiasAddwhile/lstm_cell_489/add:z:02while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_489/splitSplit,while/lstm_cell_489/split/split_dim:output:0$while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_489/SigmoidSigmoid"while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_1Sigmoid"while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_489/mulMul!while/lstm_cell_489/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_489/ReluRelu"while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_489/mul_1Mulwhile/lstm_cell_489/Sigmoid:y:0&while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_489/add_1AddV2while/lstm_cell_489/mul:z:0while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_2Sigmoid"while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_489/Relu_1Reluwhile/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_489/mul_2Mul!while/lstm_cell_489/Sigmoid_2:y:0(while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_489/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_489/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_489/BiasAdd/ReadVariableOp*^while/lstm_cell_489/MatMul/ReadVariableOp,^while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_489_biasadd_readvariableop_resource5while_lstm_cell_489_biasadd_readvariableop_resource_0"n
4while_lstm_cell_489_matmul_1_readvariableop_resource6while_lstm_cell_489_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_489_matmul_readvariableop_resource4while_lstm_cell_489_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_489/BiasAdd/ReadVariableOp*while/lstm_cell_489/BiasAdd/ReadVariableOp2V
)while/lstm_cell_489/MatMul/ReadVariableOp)while/lstm_cell_489/MatMul/ReadVariableOp2Z
+while/lstm_cell_489/MatMul_1/ReadVariableOp+while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
═
Ѓ
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2968882

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
»8
ј
E__inference_lstm_144_layer_call_and_return_conditional_losses_2968456

inputs(
lstm_cell_489_2968374:	љ(
lstm_cell_489_2968376:	dљ$
lstm_cell_489_2968378:	љ
identityѕб%lstm_cell_489/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_489/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_489_2968374lstm_cell_489_2968376lstm_cell_489_2968378*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968328n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_489_2968374lstm_cell_489_2968376lstm_cell_489_2968378*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2968387*
condR
while_cond_2968386*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_489/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_489/StatefulPartitionedCall%lstm_cell_489/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
┐
ћ
)sequential_48_lstm_144_while_cond_2967746J
Fsequential_48_lstm_144_while_sequential_48_lstm_144_while_loop_counterP
Lsequential_48_lstm_144_while_sequential_48_lstm_144_while_maximum_iterations,
(sequential_48_lstm_144_while_placeholder.
*sequential_48_lstm_144_while_placeholder_1.
*sequential_48_lstm_144_while_placeholder_2.
*sequential_48_lstm_144_while_placeholder_3L
Hsequential_48_lstm_144_while_less_sequential_48_lstm_144_strided_slice_1c
_sequential_48_lstm_144_while_sequential_48_lstm_144_while_cond_2967746___redundant_placeholder0c
_sequential_48_lstm_144_while_sequential_48_lstm_144_while_cond_2967746___redundant_placeholder1c
_sequential_48_lstm_144_while_sequential_48_lstm_144_while_cond_2967746___redundant_placeholder2c
_sequential_48_lstm_144_while_sequential_48_lstm_144_while_cond_2967746___redundant_placeholder3)
%sequential_48_lstm_144_while_identity
Й
!sequential_48/lstm_144/while/LessLess(sequential_48_lstm_144_while_placeholderHsequential_48_lstm_144_while_less_sequential_48_lstm_144_strided_slice_1*
T0*
_output_shapes
: y
%sequential_48/lstm_144/while/IdentityIdentity%sequential_48/lstm_144/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_48_lstm_144_while_identity.sequential_48/lstm_144/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
Ј#
ы
while_body_2968387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_489_2968411_0:	љ0
while_lstm_cell_489_2968413_0:	dљ,
while_lstm_cell_489_2968415_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_489_2968411:	љ.
while_lstm_cell_489_2968413:	dљ*
while_lstm_cell_489_2968415:	љѕб+while/lstm_cell_489/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_489/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_489_2968411_0while_lstm_cell_489_2968413_0while_lstm_cell_489_2968415_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968328П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_489/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_489/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_489/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_489/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_489_2968411while_lstm_cell_489_2968411_0"<
while_lstm_cell_489_2968413while_lstm_cell_489_2968413_0"<
while_lstm_cell_489_2968415while_lstm_cell_489_2968415_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_489/StatefulPartitionedCall+while/lstm_cell_489/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
─8
н
while_body_2973047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_491_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_491_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_491_matmul_readvariableop_resource:2(F
4while_lstm_cell_491_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_491/BiasAdd/ReadVariableOpб)while/lstm_cell_491/MatMul/ReadVariableOpб+while/lstm_cell_491/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_491/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_491/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_491/addAddV2$while/lstm_cell_491/MatMul:product:0&while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_491/BiasAddBiasAddwhile/lstm_cell_491/add:z:02while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_491/splitSplit,while/lstm_cell_491/split/split_dim:output:0$while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_491/SigmoidSigmoid"while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_1Sigmoid"while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_491/mulMul!while/lstm_cell_491/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_491/ReluRelu"while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_491/mul_1Mulwhile/lstm_cell_491/Sigmoid:y:0&while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_491/add_1AddV2while/lstm_cell_491/mul:z:0while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_2Sigmoid"while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_491/Relu_1Reluwhile/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_491/mul_2Mul!while/lstm_cell_491/Sigmoid_2:y:0(while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_491/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_491/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_491/BiasAdd/ReadVariableOp*^while/lstm_cell_491/MatMul/ReadVariableOp,^while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_491_biasadd_readvariableop_resource5while_lstm_cell_491_biasadd_readvariableop_resource_0"n
4while_lstm_cell_491_matmul_1_readvariableop_resource6while_lstm_cell_491_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_491_matmul_readvariableop_resource4while_lstm_cell_491_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_491/BiasAdd/ReadVariableOp*while/lstm_cell_491/BiasAdd/ReadVariableOp2V
)while/lstm_cell_491/MatMul/ReadVariableOp)while/lstm_cell_491/MatMul/ReadVariableOp2Z
+while/lstm_cell_491/MatMul_1/ReadVariableOp+while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972515

inputs?
,lstm_cell_490_matmul_readvariableop_resource:	d╚A
.lstm_cell_490_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_490_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_490/BiasAdd/ReadVariableOpб#lstm_cell_490/MatMul/ReadVariableOpб%lstm_cell_490/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_490/MatMul/ReadVariableOpReadVariableOp,lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_490/MatMulMatMulstrided_slice_2:output:0+lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_490/MatMul_1MatMulzeros:output:0-lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_490/addAddV2lstm_cell_490/MatMul:product:0 lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_490/BiasAddBiasAddlstm_cell_490/add:z:0,lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_490/splitSplit&lstm_cell_490/split/split_dim:output:0lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_490/SigmoidSigmoidlstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_1Sigmoidlstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_490/mulMullstm_cell_490/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_490/ReluRelulstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_490/mul_1Mullstm_cell_490/Sigmoid:y:0 lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_490/add_1AddV2lstm_cell_490/mul:z:0lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_2Sigmoidlstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_490/Relu_1Relulstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_490/mul_2Mullstm_cell_490/Sigmoid_2:y:0"lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_490_matmul_readvariableop_resource.lstm_cell_490_matmul_1_readvariableop_resource-lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2972431*
condR
while_cond_2972430*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_490/BiasAdd/ReadVariableOp$^lstm_cell_490/MatMul/ReadVariableOp&^lstm_cell_490/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_490/BiasAdd/ReadVariableOp$lstm_cell_490/BiasAdd/ReadVariableOp2J
#lstm_cell_490/MatMul/ReadVariableOp#lstm_cell_490/MatMul/ReadVariableOp2N
%lstm_cell_490/MatMul_1/ReadVariableOp%lstm_cell_490/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_2969230
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_489_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_489_matmul_readvariableop_resource:	љG
4while_lstm_cell_489_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_489/BiasAdd/ReadVariableOpб)while/lstm_cell_489/MatMul/ReadVariableOpб+while/lstm_cell_489/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_489/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_489/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_489/addAddV2$while/lstm_cell_489/MatMul:product:0&while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_489/BiasAddBiasAddwhile/lstm_cell_489/add:z:02while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_489/splitSplit,while/lstm_cell_489/split/split_dim:output:0$while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_489/SigmoidSigmoid"while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_1Sigmoid"while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_489/mulMul!while/lstm_cell_489/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_489/ReluRelu"while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_489/mul_1Mulwhile/lstm_cell_489/Sigmoid:y:0&while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_489/add_1AddV2while/lstm_cell_489/mul:z:0while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_2Sigmoid"while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_489/Relu_1Reluwhile/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_489/mul_2Mul!while/lstm_cell_489/Sigmoid_2:y:0(while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_489/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_489/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_489/BiasAdd/ReadVariableOp*^while/lstm_cell_489/MatMul/ReadVariableOp,^while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_489_biasadd_readvariableop_resource5while_lstm_cell_489_biasadd_readvariableop_resource_0"n
4while_lstm_cell_489_matmul_1_readvariableop_resource6while_lstm_cell_489_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_489_matmul_readvariableop_resource4while_lstm_cell_489_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_489/BiasAdd/ReadVariableOp*while/lstm_cell_489/BiasAdd/ReadVariableOp2V
)while/lstm_cell_489/MatMul/ReadVariableOp)while/lstm_cell_489/MatMul/ReadVariableOp2Z
+while/lstm_cell_489/MatMul_1/ReadVariableOp+while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
жЂ
ќ
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970856

inputsH
5lstm_144_lstm_cell_489_matmul_readvariableop_resource:	љJ
7lstm_144_lstm_cell_489_matmul_1_readvariableop_resource:	dљE
6lstm_144_lstm_cell_489_biasadd_readvariableop_resource:	љH
5lstm_145_lstm_cell_490_matmul_readvariableop_resource:	d╚J
7lstm_145_lstm_cell_490_matmul_1_readvariableop_resource:	2╚E
6lstm_145_lstm_cell_490_biasadd_readvariableop_resource:	╚G
5lstm_146_lstm_cell_491_matmul_readvariableop_resource:2(I
7lstm_146_lstm_cell_491_matmul_1_readvariableop_resource:
(D
6lstm_146_lstm_cell_491_biasadd_readvariableop_resource:(9
'dense_48_matmul_readvariableop_resource:
6
(dense_48_biasadd_readvariableop_resource:
identityѕбdense_48/BiasAdd/ReadVariableOpбdense_48/MatMul/ReadVariableOpб-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOpб,lstm_144/lstm_cell_489/MatMul/ReadVariableOpб.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOpбlstm_144/whileб-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOpб,lstm_145/lstm_cell_490/MatMul/ReadVariableOpб.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOpбlstm_145/whileб-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOpб,lstm_146/lstm_cell_491/MatMul/ReadVariableOpб.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOpбlstm_146/whileD
lstm_144/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_144/strided_sliceStridedSlicelstm_144/Shape:output:0%lstm_144/strided_slice/stack:output:0'lstm_144/strided_slice/stack_1:output:0'lstm_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_144/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_144/zeros/packedPacklstm_144/strided_slice:output:0 lstm_144/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_144/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_144/zerosFilllstm_144/zeros/packed:output:0lstm_144/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_144/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_144/zeros_1/packedPacklstm_144/strided_slice:output:0"lstm_144/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_144/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_144/zeros_1Fill lstm_144/zeros_1/packed:output:0lstm_144/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_144/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_144/transpose	Transposeinputs lstm_144/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_144/Shape_1Shapelstm_144/transpose:y:0*
T0*
_output_shapes
:h
lstm_144/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_144/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_144/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_144/strided_slice_1StridedSlicelstm_144/Shape_1:output:0'lstm_144/strided_slice_1/stack:output:0)lstm_144/strided_slice_1/stack_1:output:0)lstm_144/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_144/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_144/TensorArrayV2TensorListReserve-lstm_144/TensorArrayV2/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_144/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_144/transpose:y:0Glstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_144/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_144/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_144/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_144/strided_slice_2StridedSlicelstm_144/transpose:y:0'lstm_144/strided_slice_2/stack:output:0)lstm_144/strided_slice_2/stack_1:output:0)lstm_144/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_144/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp5lstm_144_lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_144/lstm_cell_489/MatMulMatMul!lstm_144/strided_slice_2:output:04lstm_144/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp7lstm_144_lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_144/lstm_cell_489/MatMul_1MatMullstm_144/zeros:output:06lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_144/lstm_cell_489/addAddV2'lstm_144/lstm_cell_489/MatMul:product:0)lstm_144/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp6lstm_144_lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_144/lstm_cell_489/BiasAddBiasAddlstm_144/lstm_cell_489/add:z:05lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_144/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_144/lstm_cell_489/splitSplit/lstm_144/lstm_cell_489/split/split_dim:output:0'lstm_144/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_144/lstm_cell_489/SigmoidSigmoid%lstm_144/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_144/lstm_cell_489/Sigmoid_1Sigmoid%lstm_144/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_144/lstm_cell_489/mulMul$lstm_144/lstm_cell_489/Sigmoid_1:y:0lstm_144/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_144/lstm_cell_489/ReluRelu%lstm_144/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dц
lstm_144/lstm_cell_489/mul_1Mul"lstm_144/lstm_cell_489/Sigmoid:y:0)lstm_144/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_144/lstm_cell_489/add_1AddV2lstm_144/lstm_cell_489/mul:z:0 lstm_144/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_144/lstm_cell_489/Sigmoid_2Sigmoid%lstm_144/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dy
lstm_144/lstm_cell_489/Relu_1Relu lstm_144/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_144/lstm_cell_489/mul_2Mul$lstm_144/lstm_cell_489/Sigmoid_2:y:0+lstm_144/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_144/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_144/TensorArrayV2_1TensorListReserve/lstm_144/TensorArrayV2_1/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_144/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_144/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_144/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_144/whileWhile$lstm_144/while/loop_counter:output:0*lstm_144/while/maximum_iterations:output:0lstm_144/time:output:0!lstm_144/TensorArrayV2_1:handle:0lstm_144/zeros:output:0lstm_144/zeros_1:output:0!lstm_144/strided_slice_1:output:0@lstm_144/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_144_lstm_cell_489_matmul_readvariableop_resource7lstm_144_lstm_cell_489_matmul_1_readvariableop_resource6lstm_144_lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_144_while_body_2970488*'
condR
lstm_144_while_cond_2970487*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_144/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_144/TensorArrayV2Stack/TensorListStackTensorListStacklstm_144/while:output:3Blstm_144/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_144/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_144/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_144/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_144/strided_slice_3StridedSlice4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_144/strided_slice_3/stack:output:0)lstm_144/strided_slice_3/stack_1:output:0)lstm_144/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_144/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_144/transpose_1	Transpose4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_144/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_144/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_145/ShapeShapelstm_144/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_145/strided_sliceStridedSlicelstm_145/Shape:output:0%lstm_145/strided_slice/stack:output:0'lstm_145/strided_slice/stack_1:output:0'lstm_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_145/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_145/zeros/packedPacklstm_145/strided_slice:output:0 lstm_145/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_145/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_145/zerosFilllstm_145/zeros/packed:output:0lstm_145/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_145/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_145/zeros_1/packedPacklstm_145/strided_slice:output:0"lstm_145/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_145/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_145/zeros_1Fill lstm_145/zeros_1/packed:output:0lstm_145/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_145/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_145/transpose	Transposelstm_144/transpose_1:y:0 lstm_145/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_145/Shape_1Shapelstm_145/transpose:y:0*
T0*
_output_shapes
:h
lstm_145/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_145/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_145/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_145/strided_slice_1StridedSlicelstm_145/Shape_1:output:0'lstm_145/strided_slice_1/stack:output:0)lstm_145/strided_slice_1/stack_1:output:0)lstm_145/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_145/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_145/TensorArrayV2TensorListReserve-lstm_145/TensorArrayV2/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_145/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_145/transpose:y:0Glstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_145/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_145/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_145/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_145/strided_slice_2StridedSlicelstm_145/transpose:y:0'lstm_145/strided_slice_2/stack:output:0)lstm_145/strided_slice_2/stack_1:output:0)lstm_145/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_145/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp5lstm_145_lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_145/lstm_cell_490/MatMulMatMul!lstm_145/strided_slice_2:output:04lstm_145/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp7lstm_145_lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_145/lstm_cell_490/MatMul_1MatMullstm_145/zeros:output:06lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_145/lstm_cell_490/addAddV2'lstm_145/lstm_cell_490/MatMul:product:0)lstm_145/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp6lstm_145_lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_145/lstm_cell_490/BiasAddBiasAddlstm_145/lstm_cell_490/add:z:05lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_145/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_145/lstm_cell_490/splitSplit/lstm_145/lstm_cell_490/split/split_dim:output:0'lstm_145/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_145/lstm_cell_490/SigmoidSigmoid%lstm_145/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_145/lstm_cell_490/Sigmoid_1Sigmoid%lstm_145/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_145/lstm_cell_490/mulMul$lstm_145/lstm_cell_490/Sigmoid_1:y:0lstm_145/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_145/lstm_cell_490/ReluRelu%lstm_145/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_145/lstm_cell_490/mul_1Mul"lstm_145/lstm_cell_490/Sigmoid:y:0)lstm_145/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_145/lstm_cell_490/add_1AddV2lstm_145/lstm_cell_490/mul:z:0 lstm_145/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_145/lstm_cell_490/Sigmoid_2Sigmoid%lstm_145/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2y
lstm_145/lstm_cell_490/Relu_1Relu lstm_145/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_145/lstm_cell_490/mul_2Mul$lstm_145/lstm_cell_490/Sigmoid_2:y:0+lstm_145/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_145/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_145/TensorArrayV2_1TensorListReserve/lstm_145/TensorArrayV2_1/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_145/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_145/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_145/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_145/whileWhile$lstm_145/while/loop_counter:output:0*lstm_145/while/maximum_iterations:output:0lstm_145/time:output:0!lstm_145/TensorArrayV2_1:handle:0lstm_145/zeros:output:0lstm_145/zeros_1:output:0!lstm_145/strided_slice_1:output:0@lstm_145/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_145_lstm_cell_490_matmul_readvariableop_resource7lstm_145_lstm_cell_490_matmul_1_readvariableop_resource6lstm_145_lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_145_while_body_2970627*'
condR
lstm_145_while_cond_2970626*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_145/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_145/TensorArrayV2Stack/TensorListStackTensorListStacklstm_145/while:output:3Blstm_145/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_145/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_145/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_145/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_145/strided_slice_3StridedSlice4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_145/strided_slice_3/stack:output:0)lstm_145/strided_slice_3/stack_1:output:0)lstm_145/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_145/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_145/transpose_1	Transpose4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_145/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_145/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_146/ShapeShapelstm_145/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_146/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_146/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_146/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_146/strided_sliceStridedSlicelstm_146/Shape:output:0%lstm_146/strided_slice/stack:output:0'lstm_146/strided_slice/stack_1:output:0'lstm_146/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_146/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_146/zeros/packedPacklstm_146/strided_slice:output:0 lstm_146/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_146/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_146/zerosFilllstm_146/zeros/packed:output:0lstm_146/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_146/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_146/zeros_1/packedPacklstm_146/strided_slice:output:0"lstm_146/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_146/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_146/zeros_1Fill lstm_146/zeros_1/packed:output:0lstm_146/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_146/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_146/transpose	Transposelstm_145/transpose_1:y:0 lstm_146/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_146/Shape_1Shapelstm_146/transpose:y:0*
T0*
_output_shapes
:h
lstm_146/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_146/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_146/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_146/strided_slice_1StridedSlicelstm_146/Shape_1:output:0'lstm_146/strided_slice_1/stack:output:0)lstm_146/strided_slice_1/stack_1:output:0)lstm_146/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_146/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_146/TensorArrayV2TensorListReserve-lstm_146/TensorArrayV2/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_146/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_146/transpose:y:0Glstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_146/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_146/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_146/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_146/strided_slice_2StridedSlicelstm_146/transpose:y:0'lstm_146/strided_slice_2/stack:output:0)lstm_146/strided_slice_2/stack_1:output:0)lstm_146/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_146/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp5lstm_146_lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_146/lstm_cell_491/MatMulMatMul!lstm_146/strided_slice_2:output:04lstm_146/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp7lstm_146_lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_146/lstm_cell_491/MatMul_1MatMullstm_146/zeros:output:06lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_146/lstm_cell_491/addAddV2'lstm_146/lstm_cell_491/MatMul:product:0)lstm_146/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp6lstm_146_lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_146/lstm_cell_491/BiasAddBiasAddlstm_146/lstm_cell_491/add:z:05lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_146/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_146/lstm_cell_491/splitSplit/lstm_146/lstm_cell_491/split/split_dim:output:0'lstm_146/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_146/lstm_cell_491/SigmoidSigmoid%lstm_146/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_146/lstm_cell_491/Sigmoid_1Sigmoid%lstm_146/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_146/lstm_cell_491/mulMul$lstm_146/lstm_cell_491/Sigmoid_1:y:0lstm_146/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_146/lstm_cell_491/ReluRelu%lstm_146/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_146/lstm_cell_491/mul_1Mul"lstm_146/lstm_cell_491/Sigmoid:y:0)lstm_146/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_146/lstm_cell_491/add_1AddV2lstm_146/lstm_cell_491/mul:z:0 lstm_146/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_146/lstm_cell_491/Sigmoid_2Sigmoid%lstm_146/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
y
lstm_146/lstm_cell_491/Relu_1Relu lstm_146/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_146/lstm_cell_491/mul_2Mul$lstm_146/lstm_cell_491/Sigmoid_2:y:0+lstm_146/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_146/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_146/TensorArrayV2_1TensorListReserve/lstm_146/TensorArrayV2_1/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_146/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_146/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_146/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_146/whileWhile$lstm_146/while/loop_counter:output:0*lstm_146/while/maximum_iterations:output:0lstm_146/time:output:0!lstm_146/TensorArrayV2_1:handle:0lstm_146/zeros:output:0lstm_146/zeros_1:output:0!lstm_146/strided_slice_1:output:0@lstm_146/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_146_lstm_cell_491_matmul_readvariableop_resource7lstm_146_lstm_cell_491_matmul_1_readvariableop_resource6lstm_146_lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_146_while_body_2970766*'
condR
lstm_146_while_cond_2970765*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_146/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_146/TensorArrayV2Stack/TensorListStackTensorListStacklstm_146/while:output:3Blstm_146/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_146/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_146/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_146/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_146/strided_slice_3StridedSlice4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_146/strided_slice_3/stack:output:0)lstm_146/strided_slice_3/stack_1:output:0)lstm_146/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_146/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_146/transpose_1	Transpose4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_146/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_146/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_48/MatMulMatMul!lstm_146/strided_slice_3:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_48/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp.^lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp-^lstm_144/lstm_cell_489/MatMul/ReadVariableOp/^lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp^lstm_144/while.^lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp-^lstm_145/lstm_cell_490/MatMul/ReadVariableOp/^lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp^lstm_145/while.^lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp-^lstm_146/lstm_cell_491/MatMul/ReadVariableOp/^lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp^lstm_146/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2^
-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp2\
,lstm_144/lstm_cell_489/MatMul/ReadVariableOp,lstm_144/lstm_cell_489/MatMul/ReadVariableOp2`
.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp2 
lstm_144/whilelstm_144/while2^
-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp2\
,lstm_145/lstm_cell_490/MatMul/ReadVariableOp,lstm_145/lstm_cell_490/MatMul/ReadVariableOp2`
.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp2 
lstm_145/whilelstm_145/while2^
-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp2\
,lstm_146/lstm_cell_491/MatMul/ReadVariableOp,lstm_146/lstm_cell_491/MatMul/ReadVariableOp2`
.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp2 
lstm_146/whilelstm_146/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2973248

inputs
states_0
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
и

Ч
lstm_145_while_cond_2970626.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_30
,lstm_145_while_less_lstm_145_strided_slice_1G
Clstm_145_while_lstm_145_while_cond_2970626___redundant_placeholder0G
Clstm_145_while_lstm_145_while_cond_2970626___redundant_placeholder1G
Clstm_145_while_lstm_145_while_cond_2970626___redundant_placeholder2G
Clstm_145_while_lstm_145_while_cond_2970626___redundant_placeholder3
lstm_145_while_identity
є
lstm_145/while/LessLesslstm_145_while_placeholder,lstm_145_while_less_lstm_145_strided_slice_1*
T0*
_output_shapes
: ]
lstm_145/while/IdentityIdentitylstm_145/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_145_while_identity lstm_145/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_144_while_cond_2970914.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_30
,lstm_144_while_less_lstm_144_strided_slice_1G
Clstm_144_while_lstm_144_while_cond_2970914___redundant_placeholder0G
Clstm_144_while_lstm_144_while_cond_2970914___redundant_placeholder1G
Clstm_144_while_lstm_144_while_cond_2970914___redundant_placeholder2G
Clstm_144_while_lstm_144_while_cond_2970914___redundant_placeholder3
lstm_144_while_identity
є
lstm_144/while/LessLesslstm_144_while_placeholder,lstm_144_while_less_lstm_144_strided_slice_1*
T0*
_output_shapes
: ]
lstm_144/while/IdentityIdentitylstm_144/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_144_while_identity lstm_144/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2968895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2968895___redundant_placeholder05
1while_while_cond_2968895___redundant_placeholder15
1while_while_cond_2968895___redundant_placeholder25
1while_while_cond_2968895___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Л8
┌
while_body_2972431
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_490_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_490/BiasAdd/ReadVariableOpб)while/lstm_cell_490/MatMul/ReadVariableOpб+while/lstm_cell_490/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_490/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_490/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_490/addAddV2$while/lstm_cell_490/MatMul:product:0&while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_490/BiasAddBiasAddwhile/lstm_cell_490/add:z:02while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_490/splitSplit,while/lstm_cell_490/split/split_dim:output:0$while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_490/SigmoidSigmoid"while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_1Sigmoid"while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_490/mulMul!while/lstm_cell_490/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_490/ReluRelu"while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_490/mul_1Mulwhile/lstm_cell_490/Sigmoid:y:0&while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_490/add_1AddV2while/lstm_cell_490/mul:z:0while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_2Sigmoid"while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_490/Relu_1Reluwhile/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_490/mul_2Mul!while/lstm_cell_490/Sigmoid_2:y:0(while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_490/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_490/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_490/BiasAdd/ReadVariableOp*^while/lstm_cell_490/MatMul/ReadVariableOp,^while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_490_biasadd_readvariableop_resource5while_lstm_cell_490_biasadd_readvariableop_resource_0"n
4while_lstm_cell_490_matmul_1_readvariableop_resource6while_lstm_cell_490_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_490_matmul_readvariableop_resource4while_lstm_cell_490_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_490/BiasAdd/ReadVariableOp*while/lstm_cell_490/BiasAdd/ReadVariableOp2V
)while/lstm_cell_490/MatMul/ReadVariableOp)while/lstm_cell_490/MatMul/ReadVariableOp2Z
+while/lstm_cell_490/MatMul_1/ReadVariableOp+while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2971385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2971385___redundant_placeholder05
1while_while_cond_2971385___redundant_placeholder15
1while_while_cond_2971385___redundant_placeholder25
1while_while_cond_2971385___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
ПJ
а
E__inference_lstm_146_layer_call_and_return_conditional_losses_2973131

inputs>
,lstm_cell_491_matmul_readvariableop_resource:2(@
.lstm_cell_491_matmul_1_readvariableop_resource:
(;
-lstm_cell_491_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_491/BiasAdd/ReadVariableOpб#lstm_cell_491/MatMul/ReadVariableOpб%lstm_cell_491/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_491/MatMul/ReadVariableOpReadVariableOp,lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_491/MatMulMatMulstrided_slice_2:output:0+lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_491/MatMul_1MatMulzeros:output:0-lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_491/addAddV2lstm_cell_491/MatMul:product:0 lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_491/BiasAddBiasAddlstm_cell_491/add:z:0,lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_491/splitSplit&lstm_cell_491/split/split_dim:output:0lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_491/SigmoidSigmoidlstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_1Sigmoidlstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_491/mulMullstm_cell_491/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_491/ReluRelulstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_491/mul_1Mullstm_cell_491/Sigmoid:y:0 lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_491/add_1AddV2lstm_cell_491/mul:z:0lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_2Sigmoidlstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_491/Relu_1Relulstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_491/mul_2Mullstm_cell_491/Sigmoid_2:y:0"lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_491_matmul_readvariableop_resource.lstm_cell_491_matmul_1_readvariableop_resource-lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2973047*
condR
while_cond_2973046*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_491/BiasAdd/ReadVariableOp$^lstm_cell_491/MatMul/ReadVariableOp&^lstm_cell_491/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_491/BiasAdd/ReadVariableOp$lstm_cell_491/BiasAdd/ReadVariableOp2J
#lstm_cell_491/MatMul/ReadVariableOp#lstm_cell_491/MatMul/ReadVariableOp2N
%lstm_cell_491/MatMul_1/ReadVariableOp%lstm_cell_491/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Л8
┌
while_body_2972288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_490_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_490/BiasAdd/ReadVariableOpб)while/lstm_cell_490/MatMul/ReadVariableOpб+while/lstm_cell_490/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_490/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_490/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_490/addAddV2$while/lstm_cell_490/MatMul:product:0&while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_490/BiasAddBiasAddwhile/lstm_cell_490/add:z:02while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_490/splitSplit,while/lstm_cell_490/split/split_dim:output:0$while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_490/SigmoidSigmoid"while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_1Sigmoid"while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_490/mulMul!while/lstm_cell_490/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_490/ReluRelu"while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_490/mul_1Mulwhile/lstm_cell_490/Sigmoid:y:0&while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_490/add_1AddV2while/lstm_cell_490/mul:z:0while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_2Sigmoid"while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_490/Relu_1Reluwhile/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_490/mul_2Mul!while/lstm_cell_490/Sigmoid_2:y:0(while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_490/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_490/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_490/BiasAdd/ReadVariableOp*^while/lstm_cell_490/MatMul/ReadVariableOp,^while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_490_biasadd_readvariableop_resource5while_lstm_cell_490_biasadd_readvariableop_resource_0"n
4while_lstm_cell_490_matmul_1_readvariableop_resource6while_lstm_cell_490_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_490_matmul_readvariableop_resource4while_lstm_cell_490_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_490/BiasAdd/ReadVariableOp*while/lstm_cell_490/BiasAdd/ReadVariableOp2V
)while/lstm_cell_490/MatMul/ReadVariableOp)while/lstm_cell_490/MatMul/ReadVariableOp2Z
+while/lstm_cell_490/MatMul_1/ReadVariableOp+while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
В
ш
/__inference_lstm_cell_491_layer_call_fn_2973363

inputs
states_0
states_1
unknown:2(
	unknown_0:
(
	unknown_1:(
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2968882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         
q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         
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
?:         2:         
:         
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:QM
'
_output_shapes
:         

"
_user_specified_name
states/0:QM
'
_output_shapes
:         

"
_user_specified_name
states/1
║
╚
while_cond_2972903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2972903___redundant_placeholder05
1while_while_cond_2972903___redundant_placeholder15
1while_while_cond_2972903___redundant_placeholder25
1while_while_cond_2972903___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
и

Ч
lstm_146_while_cond_2970765.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_30
,lstm_146_while_less_lstm_146_strided_slice_1G
Clstm_146_while_lstm_146_while_cond_2970765___redundant_placeholder0G
Clstm_146_while_lstm_146_while_cond_2970765___redundant_placeholder1G
Clstm_146_while_lstm_146_while_cond_2970765___redundant_placeholder2G
Clstm_146_while_lstm_146_while_cond_2970765___redundant_placeholder3
lstm_146_while_identity
є
lstm_146/while/LessLesslstm_146_while_placeholder,lstm_146_while_less_lstm_146_strided_slice_1*
T0*
_output_shapes
: ]
lstm_146/while/IdentityIdentitylstm_146/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_146_while_identity lstm_146/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2971814
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2971814___redundant_placeholder05
1while_while_cond_2971814___redundant_placeholder15
1while_while_cond_2971814___redundant_placeholder25
1while_while_cond_2971814___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
▀
ѕ
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2973346

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
жЂ
ќ
J__inference_sequential_48_layer_call_and_return_conditional_losses_2971283

inputsH
5lstm_144_lstm_cell_489_matmul_readvariableop_resource:	љJ
7lstm_144_lstm_cell_489_matmul_1_readvariableop_resource:	dљE
6lstm_144_lstm_cell_489_biasadd_readvariableop_resource:	љH
5lstm_145_lstm_cell_490_matmul_readvariableop_resource:	d╚J
7lstm_145_lstm_cell_490_matmul_1_readvariableop_resource:	2╚E
6lstm_145_lstm_cell_490_biasadd_readvariableop_resource:	╚G
5lstm_146_lstm_cell_491_matmul_readvariableop_resource:2(I
7lstm_146_lstm_cell_491_matmul_1_readvariableop_resource:
(D
6lstm_146_lstm_cell_491_biasadd_readvariableop_resource:(9
'dense_48_matmul_readvariableop_resource:
6
(dense_48_biasadd_readvariableop_resource:
identityѕбdense_48/BiasAdd/ReadVariableOpбdense_48/MatMul/ReadVariableOpб-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOpб,lstm_144/lstm_cell_489/MatMul/ReadVariableOpб.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOpбlstm_144/whileб-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOpб,lstm_145/lstm_cell_490/MatMul/ReadVariableOpб.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOpбlstm_145/whileб-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOpб,lstm_146/lstm_cell_491/MatMul/ReadVariableOpб.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOpбlstm_146/whileD
lstm_144/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_144/strided_sliceStridedSlicelstm_144/Shape:output:0%lstm_144/strided_slice/stack:output:0'lstm_144/strided_slice/stack_1:output:0'lstm_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_144/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_144/zeros/packedPacklstm_144/strided_slice:output:0 lstm_144/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_144/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_144/zerosFilllstm_144/zeros/packed:output:0lstm_144/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_144/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_144/zeros_1/packedPacklstm_144/strided_slice:output:0"lstm_144/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_144/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_144/zeros_1Fill lstm_144/zeros_1/packed:output:0lstm_144/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_144/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_144/transpose	Transposeinputs lstm_144/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_144/Shape_1Shapelstm_144/transpose:y:0*
T0*
_output_shapes
:h
lstm_144/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_144/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_144/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_144/strided_slice_1StridedSlicelstm_144/Shape_1:output:0'lstm_144/strided_slice_1/stack:output:0)lstm_144/strided_slice_1/stack_1:output:0)lstm_144/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_144/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_144/TensorArrayV2TensorListReserve-lstm_144/TensorArrayV2/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_144/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_144/transpose:y:0Glstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_144/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_144/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_144/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_144/strided_slice_2StridedSlicelstm_144/transpose:y:0'lstm_144/strided_slice_2/stack:output:0)lstm_144/strided_slice_2/stack_1:output:0)lstm_144/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_144/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp5lstm_144_lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_144/lstm_cell_489/MatMulMatMul!lstm_144/strided_slice_2:output:04lstm_144/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp7lstm_144_lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_144/lstm_cell_489/MatMul_1MatMullstm_144/zeros:output:06lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_144/lstm_cell_489/addAddV2'lstm_144/lstm_cell_489/MatMul:product:0)lstm_144/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp6lstm_144_lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_144/lstm_cell_489/BiasAddBiasAddlstm_144/lstm_cell_489/add:z:05lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_144/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_144/lstm_cell_489/splitSplit/lstm_144/lstm_cell_489/split/split_dim:output:0'lstm_144/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_144/lstm_cell_489/SigmoidSigmoid%lstm_144/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_144/lstm_cell_489/Sigmoid_1Sigmoid%lstm_144/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_144/lstm_cell_489/mulMul$lstm_144/lstm_cell_489/Sigmoid_1:y:0lstm_144/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_144/lstm_cell_489/ReluRelu%lstm_144/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dц
lstm_144/lstm_cell_489/mul_1Mul"lstm_144/lstm_cell_489/Sigmoid:y:0)lstm_144/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_144/lstm_cell_489/add_1AddV2lstm_144/lstm_cell_489/mul:z:0 lstm_144/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_144/lstm_cell_489/Sigmoid_2Sigmoid%lstm_144/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dy
lstm_144/lstm_cell_489/Relu_1Relu lstm_144/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_144/lstm_cell_489/mul_2Mul$lstm_144/lstm_cell_489/Sigmoid_2:y:0+lstm_144/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_144/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_144/TensorArrayV2_1TensorListReserve/lstm_144/TensorArrayV2_1/element_shape:output:0!lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_144/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_144/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_144/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_144/whileWhile$lstm_144/while/loop_counter:output:0*lstm_144/while/maximum_iterations:output:0lstm_144/time:output:0!lstm_144/TensorArrayV2_1:handle:0lstm_144/zeros:output:0lstm_144/zeros_1:output:0!lstm_144/strided_slice_1:output:0@lstm_144/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_144_lstm_cell_489_matmul_readvariableop_resource7lstm_144_lstm_cell_489_matmul_1_readvariableop_resource6lstm_144_lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_144_while_body_2970915*'
condR
lstm_144_while_cond_2970914*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_144/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_144/TensorArrayV2Stack/TensorListStackTensorListStacklstm_144/while:output:3Blstm_144/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_144/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_144/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_144/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_144/strided_slice_3StridedSlice4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_144/strided_slice_3/stack:output:0)lstm_144/strided_slice_3/stack_1:output:0)lstm_144/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_144/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_144/transpose_1	Transpose4lstm_144/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_144/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_144/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_145/ShapeShapelstm_144/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_145/strided_sliceStridedSlicelstm_145/Shape:output:0%lstm_145/strided_slice/stack:output:0'lstm_145/strided_slice/stack_1:output:0'lstm_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_145/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_145/zeros/packedPacklstm_145/strided_slice:output:0 lstm_145/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_145/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_145/zerosFilllstm_145/zeros/packed:output:0lstm_145/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_145/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_145/zeros_1/packedPacklstm_145/strided_slice:output:0"lstm_145/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_145/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_145/zeros_1Fill lstm_145/zeros_1/packed:output:0lstm_145/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_145/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_145/transpose	Transposelstm_144/transpose_1:y:0 lstm_145/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_145/Shape_1Shapelstm_145/transpose:y:0*
T0*
_output_shapes
:h
lstm_145/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_145/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_145/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_145/strided_slice_1StridedSlicelstm_145/Shape_1:output:0'lstm_145/strided_slice_1/stack:output:0)lstm_145/strided_slice_1/stack_1:output:0)lstm_145/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_145/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_145/TensorArrayV2TensorListReserve-lstm_145/TensorArrayV2/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_145/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_145/transpose:y:0Glstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_145/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_145/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_145/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_145/strided_slice_2StridedSlicelstm_145/transpose:y:0'lstm_145/strided_slice_2/stack:output:0)lstm_145/strided_slice_2/stack_1:output:0)lstm_145/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_145/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp5lstm_145_lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_145/lstm_cell_490/MatMulMatMul!lstm_145/strided_slice_2:output:04lstm_145/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp7lstm_145_lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_145/lstm_cell_490/MatMul_1MatMullstm_145/zeros:output:06lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_145/lstm_cell_490/addAddV2'lstm_145/lstm_cell_490/MatMul:product:0)lstm_145/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp6lstm_145_lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_145/lstm_cell_490/BiasAddBiasAddlstm_145/lstm_cell_490/add:z:05lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_145/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_145/lstm_cell_490/splitSplit/lstm_145/lstm_cell_490/split/split_dim:output:0'lstm_145/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_145/lstm_cell_490/SigmoidSigmoid%lstm_145/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_145/lstm_cell_490/Sigmoid_1Sigmoid%lstm_145/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_145/lstm_cell_490/mulMul$lstm_145/lstm_cell_490/Sigmoid_1:y:0lstm_145/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_145/lstm_cell_490/ReluRelu%lstm_145/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_145/lstm_cell_490/mul_1Mul"lstm_145/lstm_cell_490/Sigmoid:y:0)lstm_145/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_145/lstm_cell_490/add_1AddV2lstm_145/lstm_cell_490/mul:z:0 lstm_145/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_145/lstm_cell_490/Sigmoid_2Sigmoid%lstm_145/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2y
lstm_145/lstm_cell_490/Relu_1Relu lstm_145/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_145/lstm_cell_490/mul_2Mul$lstm_145/lstm_cell_490/Sigmoid_2:y:0+lstm_145/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_145/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_145/TensorArrayV2_1TensorListReserve/lstm_145/TensorArrayV2_1/element_shape:output:0!lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_145/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_145/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_145/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_145/whileWhile$lstm_145/while/loop_counter:output:0*lstm_145/while/maximum_iterations:output:0lstm_145/time:output:0!lstm_145/TensorArrayV2_1:handle:0lstm_145/zeros:output:0lstm_145/zeros_1:output:0!lstm_145/strided_slice_1:output:0@lstm_145/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_145_lstm_cell_490_matmul_readvariableop_resource7lstm_145_lstm_cell_490_matmul_1_readvariableop_resource6lstm_145_lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_145_while_body_2971054*'
condR
lstm_145_while_cond_2971053*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_145/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_145/TensorArrayV2Stack/TensorListStackTensorListStacklstm_145/while:output:3Blstm_145/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_145/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_145/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_145/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_145/strided_slice_3StridedSlice4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_145/strided_slice_3/stack:output:0)lstm_145/strided_slice_3/stack_1:output:0)lstm_145/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_145/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_145/transpose_1	Transpose4lstm_145/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_145/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_145/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_146/ShapeShapelstm_145/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_146/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_146/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_146/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_146/strided_sliceStridedSlicelstm_146/Shape:output:0%lstm_146/strided_slice/stack:output:0'lstm_146/strided_slice/stack_1:output:0'lstm_146/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_146/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_146/zeros/packedPacklstm_146/strided_slice:output:0 lstm_146/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_146/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_146/zerosFilllstm_146/zeros/packed:output:0lstm_146/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_146/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_146/zeros_1/packedPacklstm_146/strided_slice:output:0"lstm_146/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_146/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_146/zeros_1Fill lstm_146/zeros_1/packed:output:0lstm_146/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_146/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_146/transpose	Transposelstm_145/transpose_1:y:0 lstm_146/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_146/Shape_1Shapelstm_146/transpose:y:0*
T0*
_output_shapes
:h
lstm_146/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_146/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_146/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_146/strided_slice_1StridedSlicelstm_146/Shape_1:output:0'lstm_146/strided_slice_1/stack:output:0)lstm_146/strided_slice_1/stack_1:output:0)lstm_146/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_146/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_146/TensorArrayV2TensorListReserve-lstm_146/TensorArrayV2/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_146/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_146/transpose:y:0Glstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_146/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_146/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_146/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_146/strided_slice_2StridedSlicelstm_146/transpose:y:0'lstm_146/strided_slice_2/stack:output:0)lstm_146/strided_slice_2/stack_1:output:0)lstm_146/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_146/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp5lstm_146_lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_146/lstm_cell_491/MatMulMatMul!lstm_146/strided_slice_2:output:04lstm_146/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp7lstm_146_lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_146/lstm_cell_491/MatMul_1MatMullstm_146/zeros:output:06lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_146/lstm_cell_491/addAddV2'lstm_146/lstm_cell_491/MatMul:product:0)lstm_146/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp6lstm_146_lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_146/lstm_cell_491/BiasAddBiasAddlstm_146/lstm_cell_491/add:z:05lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_146/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_146/lstm_cell_491/splitSplit/lstm_146/lstm_cell_491/split/split_dim:output:0'lstm_146/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_146/lstm_cell_491/SigmoidSigmoid%lstm_146/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_146/lstm_cell_491/Sigmoid_1Sigmoid%lstm_146/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_146/lstm_cell_491/mulMul$lstm_146/lstm_cell_491/Sigmoid_1:y:0lstm_146/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_146/lstm_cell_491/ReluRelu%lstm_146/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_146/lstm_cell_491/mul_1Mul"lstm_146/lstm_cell_491/Sigmoid:y:0)lstm_146/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_146/lstm_cell_491/add_1AddV2lstm_146/lstm_cell_491/mul:z:0 lstm_146/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_146/lstm_cell_491/Sigmoid_2Sigmoid%lstm_146/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
y
lstm_146/lstm_cell_491/Relu_1Relu lstm_146/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_146/lstm_cell_491/mul_2Mul$lstm_146/lstm_cell_491/Sigmoid_2:y:0+lstm_146/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_146/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_146/TensorArrayV2_1TensorListReserve/lstm_146/TensorArrayV2_1/element_shape:output:0!lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_146/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_146/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_146/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_146/whileWhile$lstm_146/while/loop_counter:output:0*lstm_146/while/maximum_iterations:output:0lstm_146/time:output:0!lstm_146/TensorArrayV2_1:handle:0lstm_146/zeros:output:0lstm_146/zeros_1:output:0!lstm_146/strided_slice_1:output:0@lstm_146/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_146_lstm_cell_491_matmul_readvariableop_resource7lstm_146_lstm_cell_491_matmul_1_readvariableop_resource6lstm_146_lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *'
bodyR
lstm_146_while_body_2971193*'
condR
lstm_146_while_cond_2971192*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_146/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_146/TensorArrayV2Stack/TensorListStackTensorListStacklstm_146/while:output:3Blstm_146/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_146/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_146/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_146/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_146/strided_slice_3StridedSlice4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_146/strided_slice_3/stack:output:0)lstm_146/strided_slice_3/stack_1:output:0)lstm_146/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_146/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_146/transpose_1	Transpose4lstm_146/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_146/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_146/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_48/MatMul/ReadVariableOpReadVariableOp'dense_48_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_48/MatMulMatMul!lstm_146/strided_slice_3:output:0&dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_48/BiasAdd/ReadVariableOpReadVariableOp(dense_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_48/BiasAddBiasAdddense_48/MatMul:product:0'dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_48/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_48/BiasAdd/ReadVariableOp^dense_48/MatMul/ReadVariableOp.^lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp-^lstm_144/lstm_cell_489/MatMul/ReadVariableOp/^lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp^lstm_144/while.^lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp-^lstm_145/lstm_cell_490/MatMul/ReadVariableOp/^lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp^lstm_145/while.^lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp-^lstm_146/lstm_cell_491/MatMul/ReadVariableOp/^lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp^lstm_146/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_48/BiasAdd/ReadVariableOpdense_48/BiasAdd/ReadVariableOp2@
dense_48/MatMul/ReadVariableOpdense_48/MatMul/ReadVariableOp2^
-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp-lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp2\
,lstm_144/lstm_cell_489/MatMul/ReadVariableOp,lstm_144/lstm_cell_489/MatMul/ReadVariableOp2`
.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp.lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp2 
lstm_144/whilelstm_144/while2^
-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp-lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp2\
,lstm_145/lstm_cell_490/MatMul/ReadVariableOp,lstm_145/lstm_cell_490/MatMul/ReadVariableOp2`
.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp.lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp2 
lstm_145/whilelstm_145/while2^
-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp-lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp2\
,lstm_146/lstm_cell_491/MatMul/ReadVariableOp,lstm_146/lstm_cell_491/MatMul/ReadVariableOp2`
.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp.lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp2 
lstm_146/whilelstm_146/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968532

inputs

states
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:OK
'
_output_shapes
:         2
 
_user_specified_namestates:OK
'
_output_shapes
:         2
 
_user_specified_namestates
Г
╣
*__inference_lstm_145_layer_call_fn_2971921
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2968806|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
к
э
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970228

inputs#
lstm_144_2970201:	љ#
lstm_144_2970203:	dљ
lstm_144_2970205:	љ#
lstm_145_2970208:	d╚#
lstm_145_2970210:	2╚
lstm_145_2970212:	╚"
lstm_146_2970215:2("
lstm_146_2970217:
(
lstm_146_2970219:("
dense_48_2970222:

dense_48_2970224:
identityѕб dense_48/StatefulPartitionedCallб lstm_144/StatefulPartitionedCallб lstm_145/StatefulPartitionedCallб lstm_146/StatefulPartitionedCallІ
 lstm_144/StatefulPartitionedCallStatefulPartitionedCallinputslstm_144_2970201lstm_144_2970203lstm_144_2970205*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2970160«
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_144/StatefulPartitionedCall:output:0lstm_145_2970208lstm_145_2970210lstm_145_2970212*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969995ф
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_145/StatefulPartitionedCall:output:0lstm_146_2970215lstm_146_2970217lstm_146_2970219*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969830ќ
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)lstm_146/StatefulPartitionedCall:output:0dense_48_2970222dense_48_2970224*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2969632x
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_48/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╚	
Ш
E__inference_dense_48_layer_call_and_return_conditional_losses_2973150

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
┬

Ў
%__inference_signature_wrapper_2970375
lstm_144_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall┤
StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__wrapped_model_2968115o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_144_input
║
╚
while_cond_2969910
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2969910___redundant_placeholder05
1while_while_cond_2969910___redundant_placeholder15
1while_while_cond_2969910___redundant_placeholder25
1while_while_cond_2969910___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
АC
Щ

lstm_144_while_body_2970915.
*lstm_144_while_lstm_144_while_loop_counter4
0lstm_144_while_lstm_144_while_maximum_iterations
lstm_144_while_placeholder 
lstm_144_while_placeholder_1 
lstm_144_while_placeholder_2 
lstm_144_while_placeholder_3-
)lstm_144_while_lstm_144_strided_slice_1_0i
elstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0:	љR
?lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљM
>lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
lstm_144_while_identity
lstm_144_while_identity_1
lstm_144_while_identity_2
lstm_144_while_identity_3
lstm_144_while_identity_4
lstm_144_while_identity_5+
'lstm_144_while_lstm_144_strided_slice_1g
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorN
;lstm_144_while_lstm_cell_489_matmul_readvariableop_resource:	љP
=lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource:	dљK
<lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpб2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOpб4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOpЉ
@lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_144/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0lstm_144_while_placeholderIlstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp=lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_144/while/lstm_cell_489/MatMulMatMul9lstm_144/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp?lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_144/while/lstm_cell_489/MatMul_1MatMullstm_144_while_placeholder_2<lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_144/while/lstm_cell_489/addAddV2-lstm_144/while/lstm_cell_489/MatMul:product:0/lstm_144/while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp>lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_144/while/lstm_cell_489/BiasAddBiasAdd$lstm_144/while/lstm_cell_489/add:z:0;lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_144/while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_144/while/lstm_cell_489/splitSplit5lstm_144/while/lstm_cell_489/split/split_dim:output:0-lstm_144/while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_144/while/lstm_cell_489/SigmoidSigmoid+lstm_144/while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_144/while/lstm_cell_489/Sigmoid_1Sigmoid+lstm_144/while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_144/while/lstm_cell_489/mulMul*lstm_144/while/lstm_cell_489/Sigmoid_1:y:0lstm_144_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_144/while/lstm_cell_489/ReluRelu+lstm_144/while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_144/while/lstm_cell_489/mul_1Mul(lstm_144/while/lstm_cell_489/Sigmoid:y:0/lstm_144/while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_144/while/lstm_cell_489/add_1AddV2$lstm_144/while/lstm_cell_489/mul:z:0&lstm_144/while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_144/while/lstm_cell_489/Sigmoid_2Sigmoid+lstm_144/while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_144/while/lstm_cell_489/Relu_1Relu&lstm_144/while/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_144/while/lstm_cell_489/mul_2Mul*lstm_144/while/lstm_cell_489/Sigmoid_2:y:01lstm_144/while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_144/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_144_while_placeholder_1lstm_144_while_placeholder&lstm_144/while/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_144/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_144/while/addAddV2lstm_144_while_placeholderlstm_144/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_144/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_144/while/add_1AddV2*lstm_144_while_lstm_144_while_loop_counterlstm_144/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_144/while/IdentityIdentitylstm_144/while/add_1:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: ј
lstm_144/while/Identity_1Identity0lstm_144_while_lstm_144_while_maximum_iterations^lstm_144/while/NoOp*
T0*
_output_shapes
: t
lstm_144/while/Identity_2Identitylstm_144/while/add:z:0^lstm_144/while/NoOp*
T0*
_output_shapes
: А
lstm_144/while/Identity_3IdentityClstm_144/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_144/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_144/while/Identity_4Identity&lstm_144/while/lstm_cell_489/mul_2:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_144/while/Identity_5Identity&lstm_144/while/lstm_cell_489/add_1:z:0^lstm_144/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_144/while/NoOpNoOp4^lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp3^lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp5^lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_144_while_identity lstm_144/while/Identity:output:0"?
lstm_144_while_identity_1"lstm_144/while/Identity_1:output:0"?
lstm_144_while_identity_2"lstm_144/while/Identity_2:output:0"?
lstm_144_while_identity_3"lstm_144/while/Identity_3:output:0"?
lstm_144_while_identity_4"lstm_144/while/Identity_4:output:0"?
lstm_144_while_identity_5"lstm_144/while/Identity_5:output:0"T
'lstm_144_while_lstm_144_strided_slice_1)lstm_144_while_lstm_144_strided_slice_1_0"~
<lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource>lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0"ђ
=lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource?lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0"|
;lstm_144_while_lstm_cell_489_matmul_readvariableop_resource=lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0"╠
clstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensorelstm_144_while_tensorarrayv2read_tensorlistgetitem_lstm_144_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp3lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp2h
2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp2lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp2l
4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp4lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
№
Э
/__inference_lstm_cell_489_layer_call_fn_2973184

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968328o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
Г
╣
*__inference_lstm_144_layer_call_fn_2971294
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2968265|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Ј#
ы
while_body_2968196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_489_2968220_0:	љ0
while_lstm_cell_489_2968222_0:	dљ,
while_lstm_cell_489_2968224_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_489_2968220:	љ.
while_lstm_cell_489_2968222:	dљ*
while_lstm_cell_489_2968224:	љѕб+while/lstm_cell_489/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_489/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_489_2968220_0while_lstm_cell_489_2968222_0while_lstm_cell_489_2968224_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968182П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_489/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_489/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_489/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_489/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_489_2968220while_lstm_cell_489_2968220_0"<
while_lstm_cell_489_2968222while_lstm_cell_489_2968222_0"<
while_lstm_cell_489_2968224while_lstm_cell_489_2968224_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_489/StatefulPartitionedCall+while/lstm_cell_489/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_144_layer_call_and_return_conditional_losses_2969314

inputs?
,lstm_cell_489_matmul_readvariableop_resource:	љA
.lstm_cell_489_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_489_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_489/BiasAdd/ReadVariableOpб#lstm_cell_489/MatMul/ReadVariableOpб%lstm_cell_489/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_489/MatMul/ReadVariableOpReadVariableOp,lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_489/MatMulMatMulstrided_slice_2:output:0+lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_489/MatMul_1MatMulzeros:output:0-lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_489/addAddV2lstm_cell_489/MatMul:product:0 lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_489/BiasAddBiasAddlstm_cell_489/add:z:0,lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_489/splitSplit&lstm_cell_489/split/split_dim:output:0lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_489/SigmoidSigmoidlstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_1Sigmoidlstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_489/mulMullstm_cell_489/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_489/ReluRelulstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_489/mul_1Mullstm_cell_489/Sigmoid:y:0 lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_489/add_1AddV2lstm_cell_489/mul:z:0lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_2Sigmoidlstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_489/Relu_1Relulstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_489/mul_2Mullstm_cell_489/Sigmoid_2:y:0"lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_489_matmul_readvariableop_resource.lstm_cell_489_matmul_1_readvariableop_resource-lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2969230*
condR
while_cond_2969229*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_489/BiasAdd/ReadVariableOp$^lstm_cell_489/MatMul/ReadVariableOp&^lstm_cell_489/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_489/BiasAdd/ReadVariableOp$lstm_cell_489/BiasAdd/ReadVariableOp2J
#lstm_cell_489/MatMul/ReadVariableOp#lstm_cell_489/MatMul/ReadVariableOp2N
%lstm_cell_489/MatMul_1/ReadVariableOp%lstm_cell_489/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_2971386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_489_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_489_matmul_readvariableop_resource:	љG
4while_lstm_cell_489_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_489_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_489/BiasAdd/ReadVariableOpб)while/lstm_cell_489/MatMul/ReadVariableOpб+while/lstm_cell_489/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_489/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_489/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_489/addAddV2$while/lstm_cell_489/MatMul:product:0&while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_489/BiasAddBiasAddwhile/lstm_cell_489/add:z:02while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_489/splitSplit,while/lstm_cell_489/split/split_dim:output:0$while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_489/SigmoidSigmoid"while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_1Sigmoid"while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_489/mulMul!while/lstm_cell_489/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_489/ReluRelu"while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_489/mul_1Mulwhile/lstm_cell_489/Sigmoid:y:0&while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_489/add_1AddV2while/lstm_cell_489/mul:z:0while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_489/Sigmoid_2Sigmoid"while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_489/Relu_1Reluwhile/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_489/mul_2Mul!while/lstm_cell_489/Sigmoid_2:y:0(while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_489/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_489/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_489/BiasAdd/ReadVariableOp*^while/lstm_cell_489/MatMul/ReadVariableOp,^while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_489_biasadd_readvariableop_resource5while_lstm_cell_489_biasadd_readvariableop_resource_0"n
4while_lstm_cell_489_matmul_1_readvariableop_resource6while_lstm_cell_489_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_489_matmul_readvariableop_resource4while_lstm_cell_489_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_489/BiasAdd/ReadVariableOp*while/lstm_cell_489/BiasAdd/ReadVariableOp2V
)while/lstm_cell_489/MatMul/ReadVariableOp)while/lstm_cell_489/MatMul/ReadVariableOp2Z
+while/lstm_cell_489/MatMul_1/ReadVariableOp+while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
┐
ћ
)sequential_48_lstm_146_while_cond_2968024J
Fsequential_48_lstm_146_while_sequential_48_lstm_146_while_loop_counterP
Lsequential_48_lstm_146_while_sequential_48_lstm_146_while_maximum_iterations,
(sequential_48_lstm_146_while_placeholder.
*sequential_48_lstm_146_while_placeholder_1.
*sequential_48_lstm_146_while_placeholder_2.
*sequential_48_lstm_146_while_placeholder_3L
Hsequential_48_lstm_146_while_less_sequential_48_lstm_146_strided_slice_1c
_sequential_48_lstm_146_while_sequential_48_lstm_146_while_cond_2968024___redundant_placeholder0c
_sequential_48_lstm_146_while_sequential_48_lstm_146_while_cond_2968024___redundant_placeholder1c
_sequential_48_lstm_146_while_sequential_48_lstm_146_while_cond_2968024___redundant_placeholder2c
_sequential_48_lstm_146_while_sequential_48_lstm_146_while_cond_2968024___redundant_placeholder3)
%sequential_48_lstm_146_while_identity
Й
!sequential_48/lstm_146/while/LessLess(sequential_48_lstm_146_while_placeholderHsequential_48_lstm_146_while_less_sequential_48_lstm_146_strided_slice_1*
T0*
_output_shapes
: y
%sequential_48/lstm_146/while/IdentityIdentity%sequential_48/lstm_146/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_48_lstm_146_while_identity.sequential_48/lstm_146/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
я
 
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970340
lstm_144_input#
lstm_144_2970313:	љ#
lstm_144_2970315:	dљ
lstm_144_2970317:	љ#
lstm_145_2970320:	d╚#
lstm_145_2970322:	2╚
lstm_145_2970324:	╚"
lstm_146_2970327:2("
lstm_146_2970329:
(
lstm_146_2970331:("
dense_48_2970334:

dense_48_2970336:
identityѕб dense_48/StatefulPartitionedCallб lstm_144/StatefulPartitionedCallб lstm_145/StatefulPartitionedCallб lstm_146/StatefulPartitionedCallЊ
 lstm_144/StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputlstm_144_2970313lstm_144_2970315lstm_144_2970317*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2970160«
 lstm_145/StatefulPartitionedCallStatefulPartitionedCall)lstm_144/StatefulPartitionedCall:output:0lstm_145_2970320lstm_145_2970322lstm_145_2970324*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969995ф
 lstm_146/StatefulPartitionedCallStatefulPartitionedCall)lstm_145/StatefulPartitionedCall:output:0lstm_146_2970327lstm_146_2970329lstm_146_2970331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969830ќ
 dense_48/StatefulPartitionedCallStatefulPartitionedCall)lstm_146/StatefulPartitionedCall:output:0dense_48_2970334dense_48_2970336*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dense_48_layer_call_and_return_conditional_losses_2969632x
IdentityIdentity)dense_48/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_48/StatefulPartitionedCall!^lstm_144/StatefulPartitionedCall!^lstm_145/StatefulPartitionedCall!^lstm_146/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_48/StatefulPartitionedCall dense_48/StatefulPartitionedCall2D
 lstm_144/StatefulPartitionedCall lstm_144/StatefulPartitionedCall2D
 lstm_145/StatefulPartitionedCall lstm_145/StatefulPartitionedCall2D
 lstm_146/StatefulPartitionedCall lstm_146/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_144_input
Г
╣
*__inference_lstm_145_layer_call_fn_2971910
inputs_0
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2968615|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
─8
н
while_body_2969746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_491_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_491_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_491_matmul_readvariableop_resource:2(F
4while_lstm_cell_491_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_491/BiasAdd/ReadVariableOpб)while/lstm_cell_491/MatMul/ReadVariableOpб+while/lstm_cell_491/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_491/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_491/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_491/addAddV2$while/lstm_cell_491/MatMul:product:0&while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_491/BiasAddBiasAddwhile/lstm_cell_491/add:z:02while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_491/splitSplit,while/lstm_cell_491/split/split_dim:output:0$while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_491/SigmoidSigmoid"while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_1Sigmoid"while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_491/mulMul!while/lstm_cell_491/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_491/ReluRelu"while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_491/mul_1Mulwhile/lstm_cell_491/Sigmoid:y:0&while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_491/add_1AddV2while/lstm_cell_491/mul:z:0while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_2Sigmoid"while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_491/Relu_1Reluwhile/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_491/mul_2Mul!while/lstm_cell_491/Sigmoid_2:y:0(while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_491/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_491/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_491/BiasAdd/ReadVariableOp*^while/lstm_cell_491/MatMul/ReadVariableOp,^while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_491_biasadd_readvariableop_resource5while_lstm_cell_491_biasadd_readvariableop_resource_0"n
4while_lstm_cell_491_matmul_1_readvariableop_resource6while_lstm_cell_491_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_491_matmul_readvariableop_resource4while_lstm_cell_491_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_491/BiasAdd/ReadVariableOp*while/lstm_cell_491/BiasAdd/ReadVariableOp2V
)while/lstm_cell_491/MatMul/ReadVariableOp)while/lstm_cell_491/MatMul/ReadVariableOp2Z
+while/lstm_cell_491/MatMul_1/ReadVariableOp+while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
ћC
З

lstm_146_while_body_2971193.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_3-
)lstm_146_while_lstm_146_strided_slice_1_0i
elstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0:2(Q
?lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(L
>lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0:(
lstm_146_while_identity
lstm_146_while_identity_1
lstm_146_while_identity_2
lstm_146_while_identity_3
lstm_146_while_identity_4
lstm_146_while_identity_5+
'lstm_146_while_lstm_146_strided_slice_1g
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorM
;lstm_146_while_lstm_cell_491_matmul_readvariableop_resource:2(O
=lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource:
(J
<lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpб2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOpб4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOpЉ
@lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_146/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0lstm_146_while_placeholderIlstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp=lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_146/while/lstm_cell_491/MatMulMatMul9lstm_146/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp?lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_146/while/lstm_cell_491/MatMul_1MatMullstm_146_while_placeholder_2<lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_146/while/lstm_cell_491/addAddV2-lstm_146/while/lstm_cell_491/MatMul:product:0/lstm_146/while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp>lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_146/while/lstm_cell_491/BiasAddBiasAdd$lstm_146/while/lstm_cell_491/add:z:0;lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_146/while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_146/while/lstm_cell_491/splitSplit5lstm_146/while/lstm_cell_491/split/split_dim:output:0-lstm_146/while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_146/while/lstm_cell_491/SigmoidSigmoid+lstm_146/while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_146/while/lstm_cell_491/Sigmoid_1Sigmoid+lstm_146/while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_146/while/lstm_cell_491/mulMul*lstm_146/while/lstm_cell_491/Sigmoid_1:y:0lstm_146_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_146/while/lstm_cell_491/ReluRelu+lstm_146/while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_146/while/lstm_cell_491/mul_1Mul(lstm_146/while/lstm_cell_491/Sigmoid:y:0/lstm_146/while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_146/while/lstm_cell_491/add_1AddV2$lstm_146/while/lstm_cell_491/mul:z:0&lstm_146/while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_146/while/lstm_cell_491/Sigmoid_2Sigmoid+lstm_146/while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_146/while/lstm_cell_491/Relu_1Relu&lstm_146/while/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_146/while/lstm_cell_491/mul_2Mul*lstm_146/while/lstm_cell_491/Sigmoid_2:y:01lstm_146/while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_146/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_146_while_placeholder_1lstm_146_while_placeholder&lstm_146/while/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_146/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_146/while/addAddV2lstm_146_while_placeholderlstm_146/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_146/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_146/while/add_1AddV2*lstm_146_while_lstm_146_while_loop_counterlstm_146/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_146/while/IdentityIdentitylstm_146/while/add_1:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: ј
lstm_146/while/Identity_1Identity0lstm_146_while_lstm_146_while_maximum_iterations^lstm_146/while/NoOp*
T0*
_output_shapes
: t
lstm_146/while/Identity_2Identitylstm_146/while/add:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: А
lstm_146/while/Identity_3IdentityClstm_146/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_146/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_146/while/Identity_4Identity&lstm_146/while/lstm_cell_491/mul_2:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_146/while/Identity_5Identity&lstm_146/while/lstm_cell_491/add_1:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_146/while/NoOpNoOp4^lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp3^lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp5^lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_146_while_identity lstm_146/while/Identity:output:0"?
lstm_146_while_identity_1"lstm_146/while/Identity_1:output:0"?
lstm_146_while_identity_2"lstm_146/while/Identity_2:output:0"?
lstm_146_while_identity_3"lstm_146/while/Identity_3:output:0"?
lstm_146_while_identity_4"lstm_146/while/Identity_4:output:0"?
lstm_146_while_identity_5"lstm_146/while/Identity_5:output:0"T
'lstm_146_while_lstm_146_strided_slice_1)lstm_146_while_lstm_146_strided_slice_1_0"~
<lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource>lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0"ђ
=lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource?lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0"|
;lstm_146_while_lstm_cell_491_matmul_readvariableop_resource=lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0"╠
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp2h
2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp2l
4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
»8
ј
E__inference_lstm_144_layer_call_and_return_conditional_losses_2968265

inputs(
lstm_cell_489_2968183:	љ(
lstm_cell_489_2968185:	dљ$
lstm_cell_489_2968187:	љ
identityѕб%lstm_cell_489/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask■
%lstm_cell_489/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_489_2968183lstm_cell_489_2968185lstm_cell_489_2968187*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968182n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_489_2968183lstm_cell_489_2968185lstm_cell_489_2968187*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2968196*
condR
while_cond_2968195*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  dv
NoOpNoOp&^lstm_cell_489/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_489/StatefulPartitionedCall%lstm_cell_489/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2973314

inputs
states_0
states_11
matmul_readvariableop_resource:	d╚3
 matmul_1_readvariableop_resource:	2╚.
biasadd_readvariableop_resource:	╚
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ╚s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         2V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         2U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         2N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         2_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         2T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         2V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         2K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         2c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         2X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         2Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         2Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
Ѕ#
в
while_body_2969087
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_491_2969111_0:2(/
while_lstm_cell_491_2969113_0:
(+
while_lstm_cell_491_2969115_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_491_2969111:2(-
while_lstm_cell_491_2969113:
()
while_lstm_cell_491_2969115:(ѕб+while/lstm_cell_491/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_491/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_491_2969111_0while_lstm_cell_491_2969113_0while_lstm_cell_491_2969115_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2969028П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_491/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_491/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_491/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_491/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_491_2969111while_lstm_cell_491_2969111_0"<
while_lstm_cell_491_2969113while_lstm_cell_491_2969113_0"<
while_lstm_cell_491_2969115while_lstm_cell_491_2969115_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_491/StatefulPartitionedCall+while/lstm_cell_491/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
║
╚
while_cond_2968736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2968736___redundant_placeholder05
1while_while_cond_2968736___redundant_placeholder15
1while_while_cond_2968736___redundant_placeholder25
1while_while_cond_2968736___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2968386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2968386___redundant_placeholder05
1while_while_cond_2968386___redundant_placeholder15
1while_while_cond_2968386___redundant_placeholder25
1while_while_cond_2968386___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
ћC
З

lstm_146_while_body_2970766.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_3-
)lstm_146_while_lstm_146_strided_slice_1_0i
elstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0:2(Q
?lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(L
>lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0:(
lstm_146_while_identity
lstm_146_while_identity_1
lstm_146_while_identity_2
lstm_146_while_identity_3
lstm_146_while_identity_4
lstm_146_while_identity_5+
'lstm_146_while_lstm_146_strided_slice_1g
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorM
;lstm_146_while_lstm_cell_491_matmul_readvariableop_resource:2(O
=lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource:
(J
<lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpб2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOpб4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOpЉ
@lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_146/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0lstm_146_while_placeholderIlstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp=lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_146/while/lstm_cell_491/MatMulMatMul9lstm_146/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp?lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_146/while/lstm_cell_491/MatMul_1MatMullstm_146_while_placeholder_2<lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_146/while/lstm_cell_491/addAddV2-lstm_146/while/lstm_cell_491/MatMul:product:0/lstm_146/while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp>lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_146/while/lstm_cell_491/BiasAddBiasAdd$lstm_146/while/lstm_cell_491/add:z:0;lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_146/while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_146/while/lstm_cell_491/splitSplit5lstm_146/while/lstm_cell_491/split/split_dim:output:0-lstm_146/while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_146/while/lstm_cell_491/SigmoidSigmoid+lstm_146/while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_146/while/lstm_cell_491/Sigmoid_1Sigmoid+lstm_146/while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_146/while/lstm_cell_491/mulMul*lstm_146/while/lstm_cell_491/Sigmoid_1:y:0lstm_146_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_146/while/lstm_cell_491/ReluRelu+lstm_146/while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_146/while/lstm_cell_491/mul_1Mul(lstm_146/while/lstm_cell_491/Sigmoid:y:0/lstm_146/while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_146/while/lstm_cell_491/add_1AddV2$lstm_146/while/lstm_cell_491/mul:z:0&lstm_146/while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_146/while/lstm_cell_491/Sigmoid_2Sigmoid+lstm_146/while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_146/while/lstm_cell_491/Relu_1Relu&lstm_146/while/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_146/while/lstm_cell_491/mul_2Mul*lstm_146/while/lstm_cell_491/Sigmoid_2:y:01lstm_146/while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_146/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_146_while_placeholder_1lstm_146_while_placeholder&lstm_146/while/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_146/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_146/while/addAddV2lstm_146_while_placeholderlstm_146/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_146/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_146/while/add_1AddV2*lstm_146_while_lstm_146_while_loop_counterlstm_146/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_146/while/IdentityIdentitylstm_146/while/add_1:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: ј
lstm_146/while/Identity_1Identity0lstm_146_while_lstm_146_while_maximum_iterations^lstm_146/while/NoOp*
T0*
_output_shapes
: t
lstm_146/while/Identity_2Identitylstm_146/while/add:z:0^lstm_146/while/NoOp*
T0*
_output_shapes
: А
lstm_146/while/Identity_3IdentityClstm_146/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_146/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_146/while/Identity_4Identity&lstm_146/while/lstm_cell_491/mul_2:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_146/while/Identity_5Identity&lstm_146/while/lstm_cell_491/add_1:z:0^lstm_146/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_146/while/NoOpNoOp4^lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp3^lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp5^lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_146_while_identity lstm_146/while/Identity:output:0"?
lstm_146_while_identity_1"lstm_146/while/Identity_1:output:0"?
lstm_146_while_identity_2"lstm_146/while/Identity_2:output:0"?
lstm_146_while_identity_3"lstm_146/while/Identity_3:output:0"?
lstm_146_while_identity_4"lstm_146/while/Identity_4:output:0"?
lstm_146_while_identity_5"lstm_146/while/Identity_5:output:0"T
'lstm_146_while_lstm_146_strided_slice_1)lstm_146_while_lstm_146_strided_slice_1_0"~
<lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource>lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0"ђ
=lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource?lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0"|
;lstm_146_while_lstm_cell_491_matmul_readvariableop_resource=lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0"╠
clstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensorelstm_146_while_tensorarrayv2read_tensorlistgetitem_lstm_146_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp3lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp2h
2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp2lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp2l
4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp4lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971756

inputs?
,lstm_cell_489_matmul_readvariableop_resource:	љA
.lstm_cell_489_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_489_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_489/BiasAdd/ReadVariableOpб#lstm_cell_489/MatMul/ReadVariableOpб%lstm_cell_489/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_489/MatMul/ReadVariableOpReadVariableOp,lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_489/MatMulMatMulstrided_slice_2:output:0+lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_489/MatMul_1MatMulzeros:output:0-lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_489/addAddV2lstm_cell_489/MatMul:product:0 lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_489/BiasAddBiasAddlstm_cell_489/add:z:0,lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_489/splitSplit&lstm_cell_489/split/split_dim:output:0lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_489/SigmoidSigmoidlstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_1Sigmoidlstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_489/mulMullstm_cell_489/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_489/ReluRelulstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_489/mul_1Mullstm_cell_489/Sigmoid:y:0 lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_489/add_1AddV2lstm_cell_489/mul:z:0lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_2Sigmoidlstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_489/Relu_1Relulstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_489/mul_2Mullstm_cell_489/Sigmoid_2:y:0"lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_489_matmul_readvariableop_resource.lstm_cell_489_matmul_1_readvariableop_resource-lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2971672*
condR
while_cond_2971671*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_489/BiasAdd/ReadVariableOp$^lstm_cell_489/MatMul/ReadVariableOp&^lstm_cell_489/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_489/BiasAdd/ReadVariableOp$lstm_cell_489/BiasAdd/ReadVariableOp2J
#lstm_cell_489/MatMul/ReadVariableOp#lstm_cell_489/MatMul/ReadVariableOp2N
%lstm_cell_489/MatMul_1/ReadVariableOp%lstm_cell_489/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
сS
й
)sequential_48_lstm_145_while_body_2967886J
Fsequential_48_lstm_145_while_sequential_48_lstm_145_while_loop_counterP
Lsequential_48_lstm_145_while_sequential_48_lstm_145_while_maximum_iterations,
(sequential_48_lstm_145_while_placeholder.
*sequential_48_lstm_145_while_placeholder_1.
*sequential_48_lstm_145_while_placeholder_2.
*sequential_48_lstm_145_while_placeholder_3I
Esequential_48_lstm_145_while_sequential_48_lstm_145_strided_slice_1_0є
Ђsequential_48_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_145_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_48_lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚`
Msequential_48_lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚[
Lsequential_48_lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚)
%sequential_48_lstm_145_while_identity+
'sequential_48_lstm_145_while_identity_1+
'sequential_48_lstm_145_while_identity_2+
'sequential_48_lstm_145_while_identity_3+
'sequential_48_lstm_145_while_identity_4+
'sequential_48_lstm_145_while_identity_5G
Csequential_48_lstm_145_while_sequential_48_lstm_145_strided_slice_1Ѓ
sequential_48_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_145_tensorarrayunstack_tensorlistfromtensor\
Isequential_48_lstm_145_while_lstm_cell_490_matmul_readvariableop_resource:	d╚^
Ksequential_48_lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚Y
Jsequential_48_lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕбAsequential_48/lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpб@sequential_48/lstm_145/while/lstm_cell_490/MatMul/ReadVariableOpбBsequential_48/lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOpЪ
Nsequential_48/lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   џ
@sequential_48/lstm_145/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_48_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_145_tensorarrayunstack_tensorlistfromtensor_0(sequential_48_lstm_145_while_placeholderWsequential_48/lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0═
@sequential_48/lstm_145/while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOpKsequential_48_lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0Ђ
1sequential_48/lstm_145/while/lstm_cell_490/MatMulMatMulGsequential_48/lstm_145/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_48/lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Л
Bsequential_48/lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOpMsequential_48_lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0У
3sequential_48/lstm_145/while/lstm_cell_490/MatMul_1MatMul*sequential_48_lstm_145_while_placeholder_2Jsequential_48/lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Т
.sequential_48/lstm_145/while/lstm_cell_490/addAddV2;sequential_48/lstm_145/while/lstm_cell_490/MatMul:product:0=sequential_48/lstm_145/while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚╦
Asequential_48/lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOpLsequential_48_lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0№
2sequential_48/lstm_145/while/lstm_cell_490/BiasAddBiasAdd2sequential_48/lstm_145/while/lstm_cell_490/add:z:0Isequential_48/lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚|
:sequential_48/lstm_145/while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_48/lstm_145/while/lstm_cell_490/splitSplitCsequential_48/lstm_145/while/lstm_cell_490/split/split_dim:output:0;sequential_48/lstm_145/while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitф
2sequential_48/lstm_145/while/lstm_cell_490/SigmoidSigmoid9sequential_48/lstm_145/while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2г
4sequential_48/lstm_145/while/lstm_cell_490/Sigmoid_1Sigmoid9sequential_48/lstm_145/while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2═
.sequential_48/lstm_145/while/lstm_cell_490/mulMul8sequential_48/lstm_145/while/lstm_cell_490/Sigmoid_1:y:0*sequential_48_lstm_145_while_placeholder_3*
T0*'
_output_shapes
:         2ц
/sequential_48/lstm_145/while/lstm_cell_490/ReluRelu9sequential_48/lstm_145/while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Я
0sequential_48/lstm_145/while/lstm_cell_490/mul_1Mul6sequential_48/lstm_145/while/lstm_cell_490/Sigmoid:y:0=sequential_48/lstm_145/while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2Н
0sequential_48/lstm_145/while/lstm_cell_490/add_1AddV22sequential_48/lstm_145/while/lstm_cell_490/mul:z:04sequential_48/lstm_145/while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2г
4sequential_48/lstm_145/while/lstm_cell_490/Sigmoid_2Sigmoid9sequential_48/lstm_145/while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2А
1sequential_48/lstm_145/while/lstm_cell_490/Relu_1Relu4sequential_48/lstm_145/while/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2С
0sequential_48/lstm_145/while/lstm_cell_490/mul_2Mul8sequential_48/lstm_145/while/lstm_cell_490/Sigmoid_2:y:0?sequential_48/lstm_145/while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2б
Asequential_48/lstm_145/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_48_lstm_145_while_placeholder_1(sequential_48_lstm_145_while_placeholder4sequential_48/lstm_145/while/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_48/lstm_145/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_48/lstm_145/while/addAddV2(sequential_48_lstm_145_while_placeholder+sequential_48/lstm_145/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_48/lstm_145/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_48/lstm_145/while/add_1AddV2Fsequential_48_lstm_145_while_sequential_48_lstm_145_while_loop_counter-sequential_48/lstm_145/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_48/lstm_145/while/IdentityIdentity&sequential_48/lstm_145/while/add_1:z:0"^sequential_48/lstm_145/while/NoOp*
T0*
_output_shapes
: к
'sequential_48/lstm_145/while/Identity_1IdentityLsequential_48_lstm_145_while_sequential_48_lstm_145_while_maximum_iterations"^sequential_48/lstm_145/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_48/lstm_145/while/Identity_2Identity$sequential_48/lstm_145/while/add:z:0"^sequential_48/lstm_145/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_48/lstm_145/while/Identity_3IdentityQsequential_48/lstm_145/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_48/lstm_145/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_48/lstm_145/while/Identity_4Identity4sequential_48/lstm_145/while/lstm_cell_490/mul_2:z:0"^sequential_48/lstm_145/while/NoOp*
T0*'
_output_shapes
:         2┐
'sequential_48/lstm_145/while/Identity_5Identity4sequential_48/lstm_145/while/lstm_cell_490/add_1:z:0"^sequential_48/lstm_145/while/NoOp*
T0*'
_output_shapes
:         2»
!sequential_48/lstm_145/while/NoOpNoOpB^sequential_48/lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpA^sequential_48/lstm_145/while/lstm_cell_490/MatMul/ReadVariableOpC^sequential_48/lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_48_lstm_145_while_identity.sequential_48/lstm_145/while/Identity:output:0"[
'sequential_48_lstm_145_while_identity_10sequential_48/lstm_145/while/Identity_1:output:0"[
'sequential_48_lstm_145_while_identity_20sequential_48/lstm_145/while/Identity_2:output:0"[
'sequential_48_lstm_145_while_identity_30sequential_48/lstm_145/while/Identity_3:output:0"[
'sequential_48_lstm_145_while_identity_40sequential_48/lstm_145/while/Identity_4:output:0"[
'sequential_48_lstm_145_while_identity_50sequential_48/lstm_145/while/Identity_5:output:0"џ
Jsequential_48_lstm_145_while_lstm_cell_490_biasadd_readvariableop_resourceLsequential_48_lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0"ю
Ksequential_48_lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resourceMsequential_48_lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0"ў
Isequential_48_lstm_145_while_lstm_cell_490_matmul_readvariableop_resourceKsequential_48_lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0"ї
Csequential_48_lstm_145_while_sequential_48_lstm_145_strided_slice_1Esequential_48_lstm_145_while_sequential_48_lstm_145_strided_slice_1_0"Ё
sequential_48_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_145_tensorarrayunstack_tensorlistfromtensorЂsequential_48_lstm_145_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_145_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2є
Asequential_48/lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpAsequential_48/lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp2ё
@sequential_48/lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp@sequential_48/lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp2ѕ
Bsequential_48/lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOpBsequential_48/lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
РJ
Б
E__inference_lstm_144_layer_call_and_return_conditional_losses_2970160

inputs?
,lstm_cell_489_matmul_readvariableop_resource:	љA
.lstm_cell_489_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_489_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_489/BiasAdd/ReadVariableOpб#lstm_cell_489/MatMul/ReadVariableOpб%lstm_cell_489/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_489/MatMul/ReadVariableOpReadVariableOp,lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_489/MatMulMatMulstrided_slice_2:output:0+lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_489/MatMul_1MatMulzeros:output:0-lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_489/addAddV2lstm_cell_489/MatMul:product:0 lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_489/BiasAddBiasAddlstm_cell_489/add:z:0,lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_489/splitSplit&lstm_cell_489/split/split_dim:output:0lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_489/SigmoidSigmoidlstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_1Sigmoidlstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_489/mulMullstm_cell_489/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_489/ReluRelulstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_489/mul_1Mullstm_cell_489/Sigmoid:y:0 lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_489/add_1AddV2lstm_cell_489/mul:z:0lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_2Sigmoidlstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_489/Relu_1Relulstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_489/mul_2Mullstm_cell_489/Sigmoid_2:y:0"lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_489_matmul_readvariableop_resource.lstm_cell_489_matmul_1_readvariableop_resource-lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2970076*
condR
while_cond_2970075*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_489/BiasAdd/ReadVariableOp$^lstm_cell_489/MatMul/ReadVariableOp&^lstm_cell_489/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_489/BiasAdd/ReadVariableOp$lstm_cell_489/BiasAdd/ReadVariableOp2J
#lstm_cell_489/MatMul/ReadVariableOp#lstm_cell_489/MatMul/ReadVariableOp2N
%lstm_cell_489/MatMul_1/ReadVariableOp%lstm_cell_489/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
е8
І
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969156

inputs'
lstm_cell_491_2969074:2('
lstm_cell_491_2969076:
(#
lstm_cell_491_2969078:(
identityѕб%lstm_cell_491/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask■
%lstm_cell_491/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_491_2969074lstm_cell_491_2969076lstm_cell_491_2969078*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         
:         
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2969028n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_491_2969074lstm_cell_491_2969076lstm_cell_491_2969078*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2969087*
condR
while_cond_2969086*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  
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
:         
v
NoOpNoOp&^lstm_cell_491/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_491/StatefulPartitionedCall%lstm_cell_491/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_144_layer_call_fn_2971305
inputs_0
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identityѕбStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_144_layer_call_and_return_conditional_losses_2968456|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :                  d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_2972001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2972001___redundant_placeholder05
1while_while_cond_2972001___redundant_placeholder15
1while_while_cond_2972001___redundant_placeholder25
1while_while_cond_2972001___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Э
┤
*__inference_lstm_146_layer_call_fn_2972548

inputs
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969614o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Л8
┌
while_body_2972002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_490_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_490/BiasAdd/ReadVariableOpб)while/lstm_cell_490/MatMul/ReadVariableOpб+while/lstm_cell_490/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_490/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_490/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_490/addAddV2$while/lstm_cell_490/MatMul:product:0&while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_490/BiasAddBiasAddwhile/lstm_cell_490/add:z:02while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_490/splitSplit,while/lstm_cell_490/split/split_dim:output:0$while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_490/SigmoidSigmoid"while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_1Sigmoid"while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_490/mulMul!while/lstm_cell_490/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_490/ReluRelu"while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_490/mul_1Mulwhile/lstm_cell_490/Sigmoid:y:0&while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_490/add_1AddV2while/lstm_cell_490/mul:z:0while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_2Sigmoid"while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_490/Relu_1Reluwhile/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_490/mul_2Mul!while/lstm_cell_490/Sigmoid_2:y:0(while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_490/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_490/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_490/BiasAdd/ReadVariableOp*^while/lstm_cell_490/MatMul/ReadVariableOp,^while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_490_biasadd_readvariableop_resource5while_lstm_cell_490_biasadd_readvariableop_resource_0"n
4while_lstm_cell_490_matmul_1_readvariableop_resource6while_lstm_cell_490_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_490_matmul_readvariableop_resource4while_lstm_cell_490_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_490/BiasAdd/ReadVariableOp*while/lstm_cell_490/BiasAdd/ReadVariableOp2V
)while/lstm_cell_490/MatMul/ReadVariableOp)while/lstm_cell_490/MatMul/ReadVariableOp2Z
+while/lstm_cell_490/MatMul_1/ReadVariableOp+while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
ии
н
"__inference__wrapped_model_2968115
lstm_144_inputV
Csequential_48_lstm_144_lstm_cell_489_matmul_readvariableop_resource:	љX
Esequential_48_lstm_144_lstm_cell_489_matmul_1_readvariableop_resource:	dљS
Dsequential_48_lstm_144_lstm_cell_489_biasadd_readvariableop_resource:	љV
Csequential_48_lstm_145_lstm_cell_490_matmul_readvariableop_resource:	d╚X
Esequential_48_lstm_145_lstm_cell_490_matmul_1_readvariableop_resource:	2╚S
Dsequential_48_lstm_145_lstm_cell_490_biasadd_readvariableop_resource:	╚U
Csequential_48_lstm_146_lstm_cell_491_matmul_readvariableop_resource:2(W
Esequential_48_lstm_146_lstm_cell_491_matmul_1_readvariableop_resource:
(R
Dsequential_48_lstm_146_lstm_cell_491_biasadd_readvariableop_resource:(G
5sequential_48_dense_48_matmul_readvariableop_resource:
D
6sequential_48_dense_48_biasadd_readvariableop_resource:
identityѕб-sequential_48/dense_48/BiasAdd/ReadVariableOpб,sequential_48/dense_48/MatMul/ReadVariableOpб;sequential_48/lstm_144/lstm_cell_489/BiasAdd/ReadVariableOpб:sequential_48/lstm_144/lstm_cell_489/MatMul/ReadVariableOpб<sequential_48/lstm_144/lstm_cell_489/MatMul_1/ReadVariableOpбsequential_48/lstm_144/whileб;sequential_48/lstm_145/lstm_cell_490/BiasAdd/ReadVariableOpб:sequential_48/lstm_145/lstm_cell_490/MatMul/ReadVariableOpб<sequential_48/lstm_145/lstm_cell_490/MatMul_1/ReadVariableOpбsequential_48/lstm_145/whileб;sequential_48/lstm_146/lstm_cell_491/BiasAdd/ReadVariableOpб:sequential_48/lstm_146/lstm_cell_491/MatMul/ReadVariableOpб<sequential_48/lstm_146/lstm_cell_491/MatMul_1/ReadVariableOpбsequential_48/lstm_146/whileZ
sequential_48/lstm_144/ShapeShapelstm_144_input*
T0*
_output_shapes
:t
*sequential_48/lstm_144/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_48/lstm_144/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_48/lstm_144/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_48/lstm_144/strided_sliceStridedSlice%sequential_48/lstm_144/Shape:output:03sequential_48/lstm_144/strided_slice/stack:output:05sequential_48/lstm_144/strided_slice/stack_1:output:05sequential_48/lstm_144/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_48/lstm_144/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
#sequential_48/lstm_144/zeros/packedPack-sequential_48/lstm_144/strided_slice:output:0.sequential_48/lstm_144/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_48/lstm_144/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_48/lstm_144/zerosFill,sequential_48/lstm_144/zeros/packed:output:0+sequential_48/lstm_144/zeros/Const:output:0*
T0*'
_output_shapes
:         di
'sequential_48/lstm_144/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╝
%sequential_48/lstm_144/zeros_1/packedPack-sequential_48/lstm_144/strided_slice:output:00sequential_48/lstm_144/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_48/lstm_144/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_48/lstm_144/zeros_1Fill.sequential_48/lstm_144/zeros_1/packed:output:0-sequential_48/lstm_144/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dz
%sequential_48/lstm_144/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
 sequential_48/lstm_144/transpose	Transposelstm_144_input.sequential_48/lstm_144/transpose/perm:output:0*
T0*+
_output_shapes
:         r
sequential_48/lstm_144/Shape_1Shape$sequential_48/lstm_144/transpose:y:0*
T0*
_output_shapes
:v
,sequential_48/lstm_144/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_144/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_48/lstm_144/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_48/lstm_144/strided_slice_1StridedSlice'sequential_48/lstm_144/Shape_1:output:05sequential_48/lstm_144/strided_slice_1/stack:output:07sequential_48/lstm_144/strided_slice_1/stack_1:output:07sequential_48/lstm_144/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_48/lstm_144/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_48/lstm_144/TensorArrayV2TensorListReserve;sequential_48/lstm_144/TensorArrayV2/element_shape:output:0/sequential_48/lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_48/lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ц
>sequential_48/lstm_144/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_48/lstm_144/transpose:y:0Usequential_48/lstm_144/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_48/lstm_144/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_144/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_48/lstm_144/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_48/lstm_144/strided_slice_2StridedSlice$sequential_48/lstm_144/transpose:y:05sequential_48/lstm_144/strided_slice_2/stack:output:07sequential_48/lstm_144/strided_slice_2/stack_1:output:07sequential_48/lstm_144/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┐
:sequential_48/lstm_144/lstm_cell_489/MatMul/ReadVariableOpReadVariableOpCsequential_48_lstm_144_lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0П
+sequential_48/lstm_144/lstm_cell_489/MatMulMatMul/sequential_48/lstm_144/strided_slice_2:output:0Bsequential_48/lstm_144/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ├
<sequential_48/lstm_144/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOpEsequential_48_lstm_144_lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0О
-sequential_48/lstm_144/lstm_cell_489/MatMul_1MatMul%sequential_48/lstm_144/zeros:output:0Dsequential_48/lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љн
(sequential_48/lstm_144/lstm_cell_489/addAddV25sequential_48/lstm_144/lstm_cell_489/MatMul:product:07sequential_48/lstm_144/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љй
;sequential_48/lstm_144/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOpDsequential_48_lstm_144_lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0П
,sequential_48/lstm_144/lstm_cell_489/BiasAddBiasAdd,sequential_48/lstm_144/lstm_cell_489/add:z:0Csequential_48/lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љv
4sequential_48/lstm_144/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_48/lstm_144/lstm_cell_489/splitSplit=sequential_48/lstm_144/lstm_cell_489/split/split_dim:output:05sequential_48/lstm_144/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitъ
,sequential_48/lstm_144/lstm_cell_489/SigmoidSigmoid3sequential_48/lstm_144/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dа
.sequential_48/lstm_144/lstm_cell_489/Sigmoid_1Sigmoid3sequential_48/lstm_144/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dЙ
(sequential_48/lstm_144/lstm_cell_489/mulMul2sequential_48/lstm_144/lstm_cell_489/Sigmoid_1:y:0'sequential_48/lstm_144/zeros_1:output:0*
T0*'
_output_shapes
:         dў
)sequential_48/lstm_144/lstm_cell_489/ReluRelu3sequential_48/lstm_144/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         d╬
*sequential_48/lstm_144/lstm_cell_489/mul_1Mul0sequential_48/lstm_144/lstm_cell_489/Sigmoid:y:07sequential_48/lstm_144/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         d├
*sequential_48/lstm_144/lstm_cell_489/add_1AddV2,sequential_48/lstm_144/lstm_cell_489/mul:z:0.sequential_48/lstm_144/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dа
.sequential_48/lstm_144/lstm_cell_489/Sigmoid_2Sigmoid3sequential_48/lstm_144/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dЋ
+sequential_48/lstm_144/lstm_cell_489/Relu_1Relu.sequential_48/lstm_144/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dм
*sequential_48/lstm_144/lstm_cell_489/mul_2Mul2sequential_48/lstm_144/lstm_cell_489/Sigmoid_2:y:09sequential_48/lstm_144/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dЁ
4sequential_48/lstm_144/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   §
&sequential_48/lstm_144/TensorArrayV2_1TensorListReserve=sequential_48/lstm_144/TensorArrayV2_1/element_shape:output:0/sequential_48/lstm_144/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_48/lstm_144/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_48/lstm_144/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_48/lstm_144/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_48/lstm_144/whileWhile2sequential_48/lstm_144/while/loop_counter:output:08sequential_48/lstm_144/while/maximum_iterations:output:0$sequential_48/lstm_144/time:output:0/sequential_48/lstm_144/TensorArrayV2_1:handle:0%sequential_48/lstm_144/zeros:output:0'sequential_48/lstm_144/zeros_1:output:0/sequential_48/lstm_144/strided_slice_1:output:0Nsequential_48/lstm_144/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_48_lstm_144_lstm_cell_489_matmul_readvariableop_resourceEsequential_48_lstm_144_lstm_cell_489_matmul_1_readvariableop_resourceDsequential_48_lstm_144_lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_48_lstm_144_while_body_2967747*5
cond-R+
)sequential_48_lstm_144_while_cond_2967746*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations ў
Gsequential_48/lstm_144/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Є
9sequential_48/lstm_144/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_48/lstm_144/while:output:3Psequential_48/lstm_144/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0
,sequential_48/lstm_144/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_48/lstm_144/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_144/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_48/lstm_144/strided_slice_3StridedSliceBsequential_48/lstm_144/TensorArrayV2Stack/TensorListStack:tensor:05sequential_48/lstm_144/strided_slice_3/stack:output:07sequential_48/lstm_144/strided_slice_3/stack_1:output:07sequential_48/lstm_144/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask|
'sequential_48/lstm_144/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_48/lstm_144/transpose_1	TransposeBsequential_48/lstm_144/TensorArrayV2Stack/TensorListStack:tensor:00sequential_48/lstm_144/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_48/lstm_144/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_48/lstm_145/ShapeShape&sequential_48/lstm_144/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_48/lstm_145/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_48/lstm_145/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_48/lstm_145/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_48/lstm_145/strided_sliceStridedSlice%sequential_48/lstm_145/Shape:output:03sequential_48/lstm_145/strided_slice/stack:output:05sequential_48/lstm_145/strided_slice/stack_1:output:05sequential_48/lstm_145/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_48/lstm_145/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
#sequential_48/lstm_145/zeros/packedPack-sequential_48/lstm_145/strided_slice:output:0.sequential_48/lstm_145/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_48/lstm_145/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_48/lstm_145/zerosFill,sequential_48/lstm_145/zeros/packed:output:0+sequential_48/lstm_145/zeros/Const:output:0*
T0*'
_output_shapes
:         2i
'sequential_48/lstm_145/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╝
%sequential_48/lstm_145/zeros_1/packedPack-sequential_48/lstm_145/strided_slice:output:00sequential_48/lstm_145/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_48/lstm_145/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_48/lstm_145/zeros_1Fill.sequential_48/lstm_145/zeros_1/packed:output:0-sequential_48/lstm_145/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2z
%sequential_48/lstm_145/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_48/lstm_145/transpose	Transpose&sequential_48/lstm_144/transpose_1:y:0.sequential_48/lstm_145/transpose/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_48/lstm_145/Shape_1Shape$sequential_48/lstm_145/transpose:y:0*
T0*
_output_shapes
:v
,sequential_48/lstm_145/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_145/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_48/lstm_145/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_48/lstm_145/strided_slice_1StridedSlice'sequential_48/lstm_145/Shape_1:output:05sequential_48/lstm_145/strided_slice_1/stack:output:07sequential_48/lstm_145/strided_slice_1/stack_1:output:07sequential_48/lstm_145/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_48/lstm_145/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_48/lstm_145/TensorArrayV2TensorListReserve;sequential_48/lstm_145/TensorArrayV2/element_shape:output:0/sequential_48/lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_48/lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ц
>sequential_48/lstm_145/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_48/lstm_145/transpose:y:0Usequential_48/lstm_145/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_48/lstm_145/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_145/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_48/lstm_145/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_48/lstm_145/strided_slice_2StridedSlice$sequential_48/lstm_145/transpose:y:05sequential_48/lstm_145/strided_slice_2/stack:output:07sequential_48/lstm_145/strided_slice_2/stack_1:output:07sequential_48/lstm_145/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┐
:sequential_48/lstm_145/lstm_cell_490/MatMul/ReadVariableOpReadVariableOpCsequential_48_lstm_145_lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0П
+sequential_48/lstm_145/lstm_cell_490/MatMulMatMul/sequential_48/lstm_145/strided_slice_2:output:0Bsequential_48/lstm_145/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚├
<sequential_48/lstm_145/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOpEsequential_48_lstm_145_lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0О
-sequential_48/lstm_145/lstm_cell_490/MatMul_1MatMul%sequential_48/lstm_145/zeros:output:0Dsequential_48/lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚н
(sequential_48/lstm_145/lstm_cell_490/addAddV25sequential_48/lstm_145/lstm_cell_490/MatMul:product:07sequential_48/lstm_145/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚й
;sequential_48/lstm_145/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOpDsequential_48_lstm_145_lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0П
,sequential_48/lstm_145/lstm_cell_490/BiasAddBiasAdd,sequential_48/lstm_145/lstm_cell_490/add:z:0Csequential_48/lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚v
4sequential_48/lstm_145/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_48/lstm_145/lstm_cell_490/splitSplit=sequential_48/lstm_145/lstm_cell_490/split/split_dim:output:05sequential_48/lstm_145/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitъ
,sequential_48/lstm_145/lstm_cell_490/SigmoidSigmoid3sequential_48/lstm_145/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2а
.sequential_48/lstm_145/lstm_cell_490/Sigmoid_1Sigmoid3sequential_48/lstm_145/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2Й
(sequential_48/lstm_145/lstm_cell_490/mulMul2sequential_48/lstm_145/lstm_cell_490/Sigmoid_1:y:0'sequential_48/lstm_145/zeros_1:output:0*
T0*'
_output_shapes
:         2ў
)sequential_48/lstm_145/lstm_cell_490/ReluRelu3sequential_48/lstm_145/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2╬
*sequential_48/lstm_145/lstm_cell_490/mul_1Mul0sequential_48/lstm_145/lstm_cell_490/Sigmoid:y:07sequential_48/lstm_145/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2├
*sequential_48/lstm_145/lstm_cell_490/add_1AddV2,sequential_48/lstm_145/lstm_cell_490/mul:z:0.sequential_48/lstm_145/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2а
.sequential_48/lstm_145/lstm_cell_490/Sigmoid_2Sigmoid3sequential_48/lstm_145/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2Ћ
+sequential_48/lstm_145/lstm_cell_490/Relu_1Relu.sequential_48/lstm_145/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2м
*sequential_48/lstm_145/lstm_cell_490/mul_2Mul2sequential_48/lstm_145/lstm_cell_490/Sigmoid_2:y:09sequential_48/lstm_145/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ё
4sequential_48/lstm_145/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   §
&sequential_48/lstm_145/TensorArrayV2_1TensorListReserve=sequential_48/lstm_145/TensorArrayV2_1/element_shape:output:0/sequential_48/lstm_145/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_48/lstm_145/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_48/lstm_145/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_48/lstm_145/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_48/lstm_145/whileWhile2sequential_48/lstm_145/while/loop_counter:output:08sequential_48/lstm_145/while/maximum_iterations:output:0$sequential_48/lstm_145/time:output:0/sequential_48/lstm_145/TensorArrayV2_1:handle:0%sequential_48/lstm_145/zeros:output:0'sequential_48/lstm_145/zeros_1:output:0/sequential_48/lstm_145/strided_slice_1:output:0Nsequential_48/lstm_145/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_48_lstm_145_lstm_cell_490_matmul_readvariableop_resourceEsequential_48_lstm_145_lstm_cell_490_matmul_1_readvariableop_resourceDsequential_48_lstm_145_lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_48_lstm_145_while_body_2967886*5
cond-R+
)sequential_48_lstm_145_while_cond_2967885*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations ў
Gsequential_48/lstm_145/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Є
9sequential_48/lstm_145/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_48/lstm_145/while:output:3Psequential_48/lstm_145/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0
,sequential_48/lstm_145/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_48/lstm_145/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_145/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_48/lstm_145/strided_slice_3StridedSliceBsequential_48/lstm_145/TensorArrayV2Stack/TensorListStack:tensor:05sequential_48/lstm_145/strided_slice_3/stack:output:07sequential_48/lstm_145/strided_slice_3/stack_1:output:07sequential_48/lstm_145/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask|
'sequential_48/lstm_145/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_48/lstm_145/transpose_1	TransposeBsequential_48/lstm_145/TensorArrayV2Stack/TensorListStack:tensor:00sequential_48/lstm_145/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_48/lstm_145/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_48/lstm_146/ShapeShape&sequential_48/lstm_145/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_48/lstm_146/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_48/lstm_146/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_48/lstm_146/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_48/lstm_146/strided_sliceStridedSlice%sequential_48/lstm_146/Shape:output:03sequential_48/lstm_146/strided_slice/stack:output:05sequential_48/lstm_146/strided_slice/stack_1:output:05sequential_48/lstm_146/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_48/lstm_146/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
#sequential_48/lstm_146/zeros/packedPack-sequential_48/lstm_146/strided_slice:output:0.sequential_48/lstm_146/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_48/lstm_146/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_48/lstm_146/zerosFill,sequential_48/lstm_146/zeros/packed:output:0+sequential_48/lstm_146/zeros/Const:output:0*
T0*'
_output_shapes
:         
i
'sequential_48/lstm_146/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╝
%sequential_48/lstm_146/zeros_1/packedPack-sequential_48/lstm_146/strided_slice:output:00sequential_48/lstm_146/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_48/lstm_146/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_48/lstm_146/zeros_1Fill.sequential_48/lstm_146/zeros_1/packed:output:0-sequential_48/lstm_146/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
z
%sequential_48/lstm_146/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_48/lstm_146/transpose	Transpose&sequential_48/lstm_145/transpose_1:y:0.sequential_48/lstm_146/transpose/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_48/lstm_146/Shape_1Shape$sequential_48/lstm_146/transpose:y:0*
T0*
_output_shapes
:v
,sequential_48/lstm_146/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_146/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_48/lstm_146/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_48/lstm_146/strided_slice_1StridedSlice'sequential_48/lstm_146/Shape_1:output:05sequential_48/lstm_146/strided_slice_1/stack:output:07sequential_48/lstm_146/strided_slice_1/stack_1:output:07sequential_48/lstm_146/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_48/lstm_146/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_48/lstm_146/TensorArrayV2TensorListReserve;sequential_48/lstm_146/TensorArrayV2/element_shape:output:0/sequential_48/lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_48/lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ц
>sequential_48/lstm_146/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_48/lstm_146/transpose:y:0Usequential_48/lstm_146/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_48/lstm_146/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_146/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_48/lstm_146/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_48/lstm_146/strided_slice_2StridedSlice$sequential_48/lstm_146/transpose:y:05sequential_48/lstm_146/strided_slice_2/stack:output:07sequential_48/lstm_146/strided_slice_2/stack_1:output:07sequential_48/lstm_146/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskЙ
:sequential_48/lstm_146/lstm_cell_491/MatMul/ReadVariableOpReadVariableOpCsequential_48_lstm_146_lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▄
+sequential_48/lstm_146/lstm_cell_491/MatMulMatMul/sequential_48/lstm_146/strided_slice_2:output:0Bsequential_48/lstm_146/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┬
<sequential_48/lstm_146/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOpEsequential_48_lstm_146_lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0о
-sequential_48/lstm_146/lstm_cell_491/MatMul_1MatMul%sequential_48/lstm_146/zeros:output:0Dsequential_48/lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (М
(sequential_48/lstm_146/lstm_cell_491/addAddV25sequential_48/lstm_146/lstm_cell_491/MatMul:product:07sequential_48/lstm_146/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (╝
;sequential_48/lstm_146/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOpDsequential_48_lstm_146_lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▄
,sequential_48/lstm_146/lstm_cell_491/BiasAddBiasAdd,sequential_48/lstm_146/lstm_cell_491/add:z:0Csequential_48/lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (v
4sequential_48/lstm_146/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_48/lstm_146/lstm_cell_491/splitSplit=sequential_48/lstm_146/lstm_cell_491/split/split_dim:output:05sequential_48/lstm_146/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitъ
,sequential_48/lstm_146/lstm_cell_491/SigmoidSigmoid3sequential_48/lstm_146/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
а
.sequential_48/lstm_146/lstm_cell_491/Sigmoid_1Sigmoid3sequential_48/lstm_146/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
Й
(sequential_48/lstm_146/lstm_cell_491/mulMul2sequential_48/lstm_146/lstm_cell_491/Sigmoid_1:y:0'sequential_48/lstm_146/zeros_1:output:0*
T0*'
_output_shapes
:         
ў
)sequential_48/lstm_146/lstm_cell_491/ReluRelu3sequential_48/lstm_146/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
╬
*sequential_48/lstm_146/lstm_cell_491/mul_1Mul0sequential_48/lstm_146/lstm_cell_491/Sigmoid:y:07sequential_48/lstm_146/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
├
*sequential_48/lstm_146/lstm_cell_491/add_1AddV2,sequential_48/lstm_146/lstm_cell_491/mul:z:0.sequential_48/lstm_146/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
а
.sequential_48/lstm_146/lstm_cell_491/Sigmoid_2Sigmoid3sequential_48/lstm_146/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
Ћ
+sequential_48/lstm_146/lstm_cell_491/Relu_1Relu.sequential_48/lstm_146/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
м
*sequential_48/lstm_146/lstm_cell_491/mul_2Mul2sequential_48/lstm_146/lstm_cell_491/Sigmoid_2:y:09sequential_48/lstm_146/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ё
4sequential_48/lstm_146/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   §
&sequential_48/lstm_146/TensorArrayV2_1TensorListReserve=sequential_48/lstm_146/TensorArrayV2_1/element_shape:output:0/sequential_48/lstm_146/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_48/lstm_146/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_48/lstm_146/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_48/lstm_146/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_48/lstm_146/whileWhile2sequential_48/lstm_146/while/loop_counter:output:08sequential_48/lstm_146/while/maximum_iterations:output:0$sequential_48/lstm_146/time:output:0/sequential_48/lstm_146/TensorArrayV2_1:handle:0%sequential_48/lstm_146/zeros:output:0'sequential_48/lstm_146/zeros_1:output:0/sequential_48/lstm_146/strided_slice_1:output:0Nsequential_48/lstm_146/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_48_lstm_146_lstm_cell_491_matmul_readvariableop_resourceEsequential_48_lstm_146_lstm_cell_491_matmul_1_readvariableop_resourceDsequential_48_lstm_146_lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *5
body-R+
)sequential_48_lstm_146_while_body_2968025*5
cond-R+
)sequential_48_lstm_146_while_cond_2968024*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations ў
Gsequential_48/lstm_146/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Є
9sequential_48/lstm_146/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_48/lstm_146/while:output:3Psequential_48/lstm_146/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0
,sequential_48/lstm_146/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_48/lstm_146/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_48/lstm_146/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_48/lstm_146/strided_slice_3StridedSliceBsequential_48/lstm_146/TensorArrayV2Stack/TensorListStack:tensor:05sequential_48/lstm_146/strided_slice_3/stack:output:07sequential_48/lstm_146/strided_slice_3/stack_1:output:07sequential_48/lstm_146/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask|
'sequential_48/lstm_146/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_48/lstm_146/transpose_1	TransposeBsequential_48/lstm_146/TensorArrayV2Stack/TensorListStack:tensor:00sequential_48/lstm_146/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
r
sequential_48/lstm_146/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_48/dense_48/MatMul/ReadVariableOpReadVariableOp5sequential_48_dense_48_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0└
sequential_48/dense_48/MatMulMatMul/sequential_48/lstm_146/strided_slice_3:output:04sequential_48/dense_48/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_48/dense_48/BiasAdd/ReadVariableOpReadVariableOp6sequential_48_dense_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_48/dense_48/BiasAddBiasAdd'sequential_48/dense_48/MatMul:product:05sequential_48/dense_48/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_48/dense_48/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp.^sequential_48/dense_48/BiasAdd/ReadVariableOp-^sequential_48/dense_48/MatMul/ReadVariableOp<^sequential_48/lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp;^sequential_48/lstm_144/lstm_cell_489/MatMul/ReadVariableOp=^sequential_48/lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp^sequential_48/lstm_144/while<^sequential_48/lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp;^sequential_48/lstm_145/lstm_cell_490/MatMul/ReadVariableOp=^sequential_48/lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp^sequential_48/lstm_145/while<^sequential_48/lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp;^sequential_48/lstm_146/lstm_cell_491/MatMul/ReadVariableOp=^sequential_48/lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp^sequential_48/lstm_146/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2^
-sequential_48/dense_48/BiasAdd/ReadVariableOp-sequential_48/dense_48/BiasAdd/ReadVariableOp2\
,sequential_48/dense_48/MatMul/ReadVariableOp,sequential_48/dense_48/MatMul/ReadVariableOp2z
;sequential_48/lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp;sequential_48/lstm_144/lstm_cell_489/BiasAdd/ReadVariableOp2x
:sequential_48/lstm_144/lstm_cell_489/MatMul/ReadVariableOp:sequential_48/lstm_144/lstm_cell_489/MatMul/ReadVariableOp2|
<sequential_48/lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp<sequential_48/lstm_144/lstm_cell_489/MatMul_1/ReadVariableOp2<
sequential_48/lstm_144/whilesequential_48/lstm_144/while2z
;sequential_48/lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp;sequential_48/lstm_145/lstm_cell_490/BiasAdd/ReadVariableOp2x
:sequential_48/lstm_145/lstm_cell_490/MatMul/ReadVariableOp:sequential_48/lstm_145/lstm_cell_490/MatMul/ReadVariableOp2|
<sequential_48/lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp<sequential_48/lstm_145/lstm_cell_490/MatMul_1/ReadVariableOp2<
sequential_48/lstm_145/whilesequential_48/lstm_145/while2z
;sequential_48/lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp;sequential_48/lstm_146/lstm_cell_491/BiasAdd/ReadVariableOp2x
:sequential_48/lstm_146/lstm_cell_491/MatMul/ReadVariableOp:sequential_48/lstm_146/lstm_cell_491/MatMul/ReadVariableOp2|
<sequential_48/lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp<sequential_48/lstm_146/lstm_cell_491/MatMul_1/ReadVariableOp2<
sequential_48/lstm_146/whilesequential_48/lstm_146/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_144_input
оS
и
)sequential_48_lstm_146_while_body_2968025J
Fsequential_48_lstm_146_while_sequential_48_lstm_146_while_loop_counterP
Lsequential_48_lstm_146_while_sequential_48_lstm_146_while_maximum_iterations,
(sequential_48_lstm_146_while_placeholder.
*sequential_48_lstm_146_while_placeholder_1.
*sequential_48_lstm_146_while_placeholder_2.
*sequential_48_lstm_146_while_placeholder_3I
Esequential_48_lstm_146_while_sequential_48_lstm_146_strided_slice_1_0є
Ђsequential_48_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_146_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_48_lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0:2(_
Msequential_48_lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(Z
Lsequential_48_lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0:()
%sequential_48_lstm_146_while_identity+
'sequential_48_lstm_146_while_identity_1+
'sequential_48_lstm_146_while_identity_2+
'sequential_48_lstm_146_while_identity_3+
'sequential_48_lstm_146_while_identity_4+
'sequential_48_lstm_146_while_identity_5G
Csequential_48_lstm_146_while_sequential_48_lstm_146_strided_slice_1Ѓ
sequential_48_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_146_tensorarrayunstack_tensorlistfromtensor[
Isequential_48_lstm_146_while_lstm_cell_491_matmul_readvariableop_resource:2(]
Ksequential_48_lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource:
(X
Jsequential_48_lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource:(ѕбAsequential_48/lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpб@sequential_48/lstm_146/while/lstm_cell_491/MatMul/ReadVariableOpбBsequential_48/lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOpЪ
Nsequential_48/lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   џ
@sequential_48/lstm_146/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_48_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_146_tensorarrayunstack_tensorlistfromtensor_0(sequential_48_lstm_146_while_placeholderWsequential_48/lstm_146/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╠
@sequential_48/lstm_146/while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOpKsequential_48_lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ђ
1sequential_48/lstm_146/while/lstm_cell_491/MatMulMatMulGsequential_48/lstm_146/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_48/lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (л
Bsequential_48/lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOpMsequential_48_lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0у
3sequential_48/lstm_146/while/lstm_cell_491/MatMul_1MatMul*sequential_48_lstm_146_while_placeholder_2Jsequential_48/lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (т
.sequential_48/lstm_146/while/lstm_cell_491/addAddV2;sequential_48/lstm_146/while/lstm_cell_491/MatMul:product:0=sequential_48/lstm_146/while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (╩
Asequential_48/lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOpLsequential_48_lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ь
2sequential_48/lstm_146/while/lstm_cell_491/BiasAddBiasAdd2sequential_48/lstm_146/while/lstm_cell_491/add:z:0Isequential_48/lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (|
:sequential_48/lstm_146/while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_48/lstm_146/while/lstm_cell_491/splitSplitCsequential_48/lstm_146/while/lstm_cell_491/split/split_dim:output:0;sequential_48/lstm_146/while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitф
2sequential_48/lstm_146/while/lstm_cell_491/SigmoidSigmoid9sequential_48/lstm_146/while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
г
4sequential_48/lstm_146/while/lstm_cell_491/Sigmoid_1Sigmoid9sequential_48/lstm_146/while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
═
.sequential_48/lstm_146/while/lstm_cell_491/mulMul8sequential_48/lstm_146/while/lstm_cell_491/Sigmoid_1:y:0*sequential_48_lstm_146_while_placeholder_3*
T0*'
_output_shapes
:         
ц
/sequential_48/lstm_146/while/lstm_cell_491/ReluRelu9sequential_48/lstm_146/while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Я
0sequential_48/lstm_146/while/lstm_cell_491/mul_1Mul6sequential_48/lstm_146/while/lstm_cell_491/Sigmoid:y:0=sequential_48/lstm_146/while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
Н
0sequential_48/lstm_146/while/lstm_cell_491/add_1AddV22sequential_48/lstm_146/while/lstm_cell_491/mul:z:04sequential_48/lstm_146/while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
г
4sequential_48/lstm_146/while/lstm_cell_491/Sigmoid_2Sigmoid9sequential_48/lstm_146/while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
А
1sequential_48/lstm_146/while/lstm_cell_491/Relu_1Relu4sequential_48/lstm_146/while/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
С
0sequential_48/lstm_146/while/lstm_cell_491/mul_2Mul8sequential_48/lstm_146/while/lstm_cell_491/Sigmoid_2:y:0?sequential_48/lstm_146/while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
б
Asequential_48/lstm_146/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_48_lstm_146_while_placeholder_1(sequential_48_lstm_146_while_placeholder4sequential_48/lstm_146/while/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_48/lstm_146/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_48/lstm_146/while/addAddV2(sequential_48_lstm_146_while_placeholder+sequential_48/lstm_146/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_48/lstm_146/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_48/lstm_146/while/add_1AddV2Fsequential_48_lstm_146_while_sequential_48_lstm_146_while_loop_counter-sequential_48/lstm_146/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_48/lstm_146/while/IdentityIdentity&sequential_48/lstm_146/while/add_1:z:0"^sequential_48/lstm_146/while/NoOp*
T0*
_output_shapes
: к
'sequential_48/lstm_146/while/Identity_1IdentityLsequential_48_lstm_146_while_sequential_48_lstm_146_while_maximum_iterations"^sequential_48/lstm_146/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_48/lstm_146/while/Identity_2Identity$sequential_48/lstm_146/while/add:z:0"^sequential_48/lstm_146/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_48/lstm_146/while/Identity_3IdentityQsequential_48/lstm_146/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_48/lstm_146/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_48/lstm_146/while/Identity_4Identity4sequential_48/lstm_146/while/lstm_cell_491/mul_2:z:0"^sequential_48/lstm_146/while/NoOp*
T0*'
_output_shapes
:         
┐
'sequential_48/lstm_146/while/Identity_5Identity4sequential_48/lstm_146/while/lstm_cell_491/add_1:z:0"^sequential_48/lstm_146/while/NoOp*
T0*'
_output_shapes
:         
»
!sequential_48/lstm_146/while/NoOpNoOpB^sequential_48/lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpA^sequential_48/lstm_146/while/lstm_cell_491/MatMul/ReadVariableOpC^sequential_48/lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_48_lstm_146_while_identity.sequential_48/lstm_146/while/Identity:output:0"[
'sequential_48_lstm_146_while_identity_10sequential_48/lstm_146/while/Identity_1:output:0"[
'sequential_48_lstm_146_while_identity_20sequential_48/lstm_146/while/Identity_2:output:0"[
'sequential_48_lstm_146_while_identity_30sequential_48/lstm_146/while/Identity_3:output:0"[
'sequential_48_lstm_146_while_identity_40sequential_48/lstm_146/while/Identity_4:output:0"[
'sequential_48_lstm_146_while_identity_50sequential_48/lstm_146/while/Identity_5:output:0"џ
Jsequential_48_lstm_146_while_lstm_cell_491_biasadd_readvariableop_resourceLsequential_48_lstm_146_while_lstm_cell_491_biasadd_readvariableop_resource_0"ю
Ksequential_48_lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resourceMsequential_48_lstm_146_while_lstm_cell_491_matmul_1_readvariableop_resource_0"ў
Isequential_48_lstm_146_while_lstm_cell_491_matmul_readvariableop_resourceKsequential_48_lstm_146_while_lstm_cell_491_matmul_readvariableop_resource_0"ї
Csequential_48_lstm_146_while_sequential_48_lstm_146_strided_slice_1Esequential_48_lstm_146_while_sequential_48_lstm_146_strided_slice_1_0"Ё
sequential_48_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_146_tensorarrayunstack_tensorlistfromtensorЂsequential_48_lstm_146_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_146_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2є
Asequential_48/lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOpAsequential_48/lstm_146/while/lstm_cell_491/BiasAdd/ReadVariableOp2ё
@sequential_48/lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp@sequential_48/lstm_146/while/lstm_cell_491/MatMul/ReadVariableOp2ѕ
Bsequential_48/lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOpBsequential_48/lstm_146/while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
АC
Щ

lstm_145_while_body_2971054.
*lstm_145_while_lstm_145_while_loop_counter4
0lstm_145_while_lstm_145_while_maximum_iterations
lstm_145_while_placeholder 
lstm_145_while_placeholder_1 
lstm_145_while_placeholder_2 
lstm_145_while_placeholder_3-
)lstm_145_while_lstm_145_strided_slice_1_0i
elstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚R
?lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚M
>lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
lstm_145_while_identity
lstm_145_while_identity_1
lstm_145_while_identity_2
lstm_145_while_identity_3
lstm_145_while_identity_4
lstm_145_while_identity_5+
'lstm_145_while_lstm_145_strided_slice_1g
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorN
;lstm_145_while_lstm_cell_490_matmul_readvariableop_resource:	d╚P
=lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚K
<lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpб2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOpб4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOpЉ
@lstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_145/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0lstm_145_while_placeholderIlstm_145/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp=lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_145/while/lstm_cell_490/MatMulMatMul9lstm_145/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp?lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_145/while/lstm_cell_490/MatMul_1MatMullstm_145_while_placeholder_2<lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_145/while/lstm_cell_490/addAddV2-lstm_145/while/lstm_cell_490/MatMul:product:0/lstm_145/while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp>lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_145/while/lstm_cell_490/BiasAddBiasAdd$lstm_145/while/lstm_cell_490/add:z:0;lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_145/while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_145/while/lstm_cell_490/splitSplit5lstm_145/while/lstm_cell_490/split/split_dim:output:0-lstm_145/while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_145/while/lstm_cell_490/SigmoidSigmoid+lstm_145/while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_145/while/lstm_cell_490/Sigmoid_1Sigmoid+lstm_145/while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_145/while/lstm_cell_490/mulMul*lstm_145/while/lstm_cell_490/Sigmoid_1:y:0lstm_145_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_145/while/lstm_cell_490/ReluRelu+lstm_145/while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_145/while/lstm_cell_490/mul_1Mul(lstm_145/while/lstm_cell_490/Sigmoid:y:0/lstm_145/while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_145/while/lstm_cell_490/add_1AddV2$lstm_145/while/lstm_cell_490/mul:z:0&lstm_145/while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_145/while/lstm_cell_490/Sigmoid_2Sigmoid+lstm_145/while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_145/while/lstm_cell_490/Relu_1Relu&lstm_145/while/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_145/while/lstm_cell_490/mul_2Mul*lstm_145/while/lstm_cell_490/Sigmoid_2:y:01lstm_145/while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_145/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_145_while_placeholder_1lstm_145_while_placeholder&lstm_145/while/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_145/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_145/while/addAddV2lstm_145_while_placeholderlstm_145/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_145/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_145/while/add_1AddV2*lstm_145_while_lstm_145_while_loop_counterlstm_145/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_145/while/IdentityIdentitylstm_145/while/add_1:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: ј
lstm_145/while/Identity_1Identity0lstm_145_while_lstm_145_while_maximum_iterations^lstm_145/while/NoOp*
T0*
_output_shapes
: t
lstm_145/while/Identity_2Identitylstm_145/while/add:z:0^lstm_145/while/NoOp*
T0*
_output_shapes
: А
lstm_145/while/Identity_3IdentityClstm_145/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_145/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_145/while/Identity_4Identity&lstm_145/while/lstm_cell_490/mul_2:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_145/while/Identity_5Identity&lstm_145/while/lstm_cell_490/add_1:z:0^lstm_145/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_145/while/NoOpNoOp4^lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp3^lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp5^lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_145_while_identity lstm_145/while/Identity:output:0"?
lstm_145_while_identity_1"lstm_145/while/Identity_1:output:0"?
lstm_145_while_identity_2"lstm_145/while/Identity_2:output:0"?
lstm_145_while_identity_3"lstm_145/while/Identity_3:output:0"?
lstm_145_while_identity_4"lstm_145/while/Identity_4:output:0"?
lstm_145_while_identity_5"lstm_145/while/Identity_5:output:0"T
'lstm_145_while_lstm_145_strided_slice_1)lstm_145_while_lstm_145_strided_slice_1_0"~
<lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource>lstm_145_while_lstm_cell_490_biasadd_readvariableop_resource_0"ђ
=lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource?lstm_145_while_lstm_cell_490_matmul_1_readvariableop_resource_0"|
;lstm_145_while_lstm_cell_490_matmul_readvariableop_resource=lstm_145_while_lstm_cell_490_matmul_readvariableop_resource_0"╠
clstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensorelstm_145_while_tensorarrayv2read_tensorlistgetitem_lstm_145_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp3lstm_145/while/lstm_cell_490/BiasAdd/ReadVariableOp2h
2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp2lstm_145/while/lstm_cell_490/MatMul/ReadVariableOp2l
4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp4lstm_145/while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
»8
ј
E__inference_lstm_145_layer_call_and_return_conditional_losses_2968806

inputs(
lstm_cell_490_2968724:	d╚(
lstm_cell_490_2968726:	2╚$
lstm_cell_490_2968728:	╚
identityѕб%lstm_cell_490/StatefulPartitionedCallбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask■
%lstm_cell_490/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_490_2968724lstm_cell_490_2968726lstm_cell_490_2968728*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968678n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ┐
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_490_2968724lstm_cell_490_2968726lstm_cell_490_2968728*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2968737*
condR
while_cond_2968736*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ╦
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :                  2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ъ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :                  2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :                  2v
NoOpNoOp&^lstm_cell_490/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_490/StatefulPartitionedCall%lstm_cell_490/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969464

inputs?
,lstm_cell_490_matmul_readvariableop_resource:	d╚A
.lstm_cell_490_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_490_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_490/BiasAdd/ReadVariableOpб#lstm_cell_490/MatMul/ReadVariableOpб%lstm_cell_490/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_490/MatMul/ReadVariableOpReadVariableOp,lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_490/MatMulMatMulstrided_slice_2:output:0+lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_490/MatMul_1MatMulzeros:output:0-lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_490/addAddV2lstm_cell_490/MatMul:product:0 lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_490/BiasAddBiasAddlstm_cell_490/add:z:0,lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_490/splitSplit&lstm_cell_490/split/split_dim:output:0lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_490/SigmoidSigmoidlstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_1Sigmoidlstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_490/mulMullstm_cell_490/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_490/ReluRelulstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_490/mul_1Mullstm_cell_490/Sigmoid:y:0 lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_490/add_1AddV2lstm_cell_490/mul:z:0lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_2Sigmoidlstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_490/Relu_1Relulstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_490/mul_2Mullstm_cell_490/Sigmoid_2:y:0"lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_490_matmul_readvariableop_resource.lstm_cell_490_matmul_1_readvariableop_resource-lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2969380*
condR
while_cond_2969379*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_490/BiasAdd/ReadVariableOp$^lstm_cell_490/MatMul/ReadVariableOp&^lstm_cell_490/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_490/BiasAdd/ReadVariableOp$lstm_cell_490/BiasAdd/ReadVariableOp2J
#lstm_cell_490/MatMul/ReadVariableOp#lstm_cell_490/MatMul/ReadVariableOp2N
%lstm_cell_490/MatMul_1/ReadVariableOp%lstm_cell_490/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
и

Ч
lstm_146_while_cond_2971192.
*lstm_146_while_lstm_146_while_loop_counter4
0lstm_146_while_lstm_146_while_maximum_iterations
lstm_146_while_placeholder 
lstm_146_while_placeholder_1 
lstm_146_while_placeholder_2 
lstm_146_while_placeholder_30
,lstm_146_while_less_lstm_146_strided_slice_1G
Clstm_146_while_lstm_146_while_cond_2971192___redundant_placeholder0G
Clstm_146_while_lstm_146_while_cond_2971192___redundant_placeholder1G
Clstm_146_while_lstm_146_while_cond_2971192___redundant_placeholder2G
Clstm_146_while_lstm_146_while_cond_2971192___redundant_placeholder3
lstm_146_while_identity
є
lstm_146/while/LessLesslstm_146_while_placeholder,lstm_146_while_less_lstm_146_strided_slice_1*
T0*
_output_shapes
: ]
lstm_146/while/IdentityIdentitylstm_146/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_146_while_identity lstm_146/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
Ј#
ы
while_body_2968546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_490_2968570_0:	d╚0
while_lstm_cell_490_2968572_0:	2╚,
while_lstm_cell_490_2968574_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_490_2968570:	d╚.
while_lstm_cell_490_2968572:	2╚*
while_lstm_cell_490_2968574:	╚ѕб+while/lstm_cell_490/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_490/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_490_2968570_0while_lstm_cell_490_2968572_0while_lstm_cell_490_2968574_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968532П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_490/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Љ
while/Identity_4Identity4while/lstm_cell_490/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_490/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_490/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_490_2968570while_lstm_cell_490_2968570_0"<
while_lstm_cell_490_2968572while_lstm_cell_490_2968572_0"<
while_lstm_cell_490_2968574while_lstm_cell_490_2968574_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_490/StatefulPartitionedCall+while/lstm_cell_490/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
№
Э
/__inference_lstm_cell_489_layer_call_fn_2973167

inputs
states_0
states_1
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         d
"
_user_specified_name
states/0:QM
'
_output_shapes
:         d
"
_user_specified_name
states/1
О
є
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2968328

inputs

states
states_11
matmul_readvariableop_resource:	љ3
 matmul_1_readvariableop_resource:	dљ.
biasadd_readvariableop_resource:	љ
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         љs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dЉ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates
РJ
Б
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971899

inputs?
,lstm_cell_489_matmul_readvariableop_resource:	љA
.lstm_cell_489_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_489_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_489/BiasAdd/ReadVariableOpб#lstm_cell_489/MatMul/ReadVariableOpб%lstm_cell_489/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         dR
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
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЉ
#lstm_cell_489/MatMul/ReadVariableOpReadVariableOp,lstm_cell_489_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_489/MatMulMatMulstrided_slice_2:output:0+lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_489_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_489/MatMul_1MatMulzeros:output:0-lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_489/addAddV2lstm_cell_489/MatMul:product:0 lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_489_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_489/BiasAddBiasAddlstm_cell_489/add:z:0,lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_489/splitSplit&lstm_cell_489/split/split_dim:output:0lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_489/SigmoidSigmoidlstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_1Sigmoidlstm_cell_489/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_489/mulMullstm_cell_489/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_489/ReluRelulstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_489/mul_1Mullstm_cell_489/Sigmoid:y:0 lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_489/add_1AddV2lstm_cell_489/mul:z:0lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_489/Sigmoid_2Sigmoidlstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_489/Relu_1Relulstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_489/mul_2Mullstm_cell_489/Sigmoid_2:y:0"lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_489_matmul_readvariableop_resource.lstm_cell_489_matmul_1_readvariableop_resource-lstm_cell_489_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2971815*
condR
while_cond_2971814*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         d├
NoOpNoOp%^lstm_cell_489/BiasAdd/ReadVariableOp$^lstm_cell_489/MatMul/ReadVariableOp&^lstm_cell_489/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_489/BiasAdd/ReadVariableOp$lstm_cell_489/BiasAdd/ReadVariableOp2J
#lstm_cell_489/MatMul/ReadVariableOp#lstm_cell_489/MatMul/ReadVariableOp2N
%lstm_cell_489/MatMul_1/ReadVariableOp%lstm_cell_489/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
─8
н
while_body_2972618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_491_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_491_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_491_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_491_matmul_readvariableop_resource:2(F
4while_lstm_cell_491_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_491_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_491/BiasAdd/ReadVariableOpб)while/lstm_cell_491/MatMul/ReadVariableOpб+while/lstm_cell_491/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_491/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_491_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_491/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_491_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_491/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_491/addAddV2$while/lstm_cell_491/MatMul:product:0&while/lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_491_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_491/BiasAddBiasAddwhile/lstm_cell_491/add:z:02while/lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_491/splitSplit,while/lstm_cell_491/split/split_dim:output:0$while/lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_491/SigmoidSigmoid"while/lstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_1Sigmoid"while/lstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_491/mulMul!while/lstm_cell_491/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_491/ReluRelu"while/lstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_491/mul_1Mulwhile/lstm_cell_491/Sigmoid:y:0&while/lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_491/add_1AddV2while/lstm_cell_491/mul:z:0while/lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_491/Sigmoid_2Sigmoid"while/lstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_491/Relu_1Reluwhile/lstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_491/mul_2Mul!while/lstm_cell_491/Sigmoid_2:y:0(while/lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_491/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_491/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_491/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_491/BiasAdd/ReadVariableOp*^while/lstm_cell_491/MatMul/ReadVariableOp,^while/lstm_cell_491/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_491_biasadd_readvariableop_resource5while_lstm_cell_491_biasadd_readvariableop_resource_0"n
4while_lstm_cell_491_matmul_1_readvariableop_resource6while_lstm_cell_491_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_491_matmul_readvariableop_resource4while_lstm_cell_491_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_491/BiasAdd/ReadVariableOp*while/lstm_cell_491/BiasAdd/ReadVariableOp2V
)while/lstm_cell_491/MatMul/ReadVariableOp)while/lstm_cell_491/MatMul/ReadVariableOp2Z
+while/lstm_cell_491/MatMul_1/ReadVariableOp+while/lstm_cell_491/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
: 
сS
й
)sequential_48_lstm_144_while_body_2967747J
Fsequential_48_lstm_144_while_sequential_48_lstm_144_while_loop_counterP
Lsequential_48_lstm_144_while_sequential_48_lstm_144_while_maximum_iterations,
(sequential_48_lstm_144_while_placeholder.
*sequential_48_lstm_144_while_placeholder_1.
*sequential_48_lstm_144_while_placeholder_2.
*sequential_48_lstm_144_while_placeholder_3I
Esequential_48_lstm_144_while_sequential_48_lstm_144_strided_slice_1_0є
Ђsequential_48_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_144_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_48_lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0:	љ`
Msequential_48_lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0:	dљ[
Lsequential_48_lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0:	љ)
%sequential_48_lstm_144_while_identity+
'sequential_48_lstm_144_while_identity_1+
'sequential_48_lstm_144_while_identity_2+
'sequential_48_lstm_144_while_identity_3+
'sequential_48_lstm_144_while_identity_4+
'sequential_48_lstm_144_while_identity_5G
Csequential_48_lstm_144_while_sequential_48_lstm_144_strided_slice_1Ѓ
sequential_48_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_144_tensorarrayunstack_tensorlistfromtensor\
Isequential_48_lstm_144_while_lstm_cell_489_matmul_readvariableop_resource:	љ^
Ksequential_48_lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource:	dљY
Jsequential_48_lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource:	љѕбAsequential_48/lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpб@sequential_48/lstm_144/while/lstm_cell_489/MatMul/ReadVariableOpбBsequential_48/lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOpЪ
Nsequential_48/lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       џ
@sequential_48/lstm_144/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_48_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_144_tensorarrayunstack_tensorlistfromtensor_0(sequential_48_lstm_144_while_placeholderWsequential_48/lstm_144/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0═
@sequential_48/lstm_144/while/lstm_cell_489/MatMul/ReadVariableOpReadVariableOpKsequential_48_lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0Ђ
1sequential_48/lstm_144/while/lstm_cell_489/MatMulMatMulGsequential_48/lstm_144/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_48/lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЛ
Bsequential_48/lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOpReadVariableOpMsequential_48_lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0У
3sequential_48/lstm_144/while/lstm_cell_489/MatMul_1MatMul*sequential_48_lstm_144_while_placeholder_2Jsequential_48/lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љТ
.sequential_48/lstm_144/while/lstm_cell_489/addAddV2;sequential_48/lstm_144/while/lstm_cell_489/MatMul:product:0=sequential_48/lstm_144/while/lstm_cell_489/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╦
Asequential_48/lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpReadVariableOpLsequential_48_lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0№
2sequential_48/lstm_144/while/lstm_cell_489/BiasAddBiasAdd2sequential_48/lstm_144/while/lstm_cell_489/add:z:0Isequential_48/lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ|
:sequential_48/lstm_144/while/lstm_cell_489/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_48/lstm_144/while/lstm_cell_489/splitSplitCsequential_48/lstm_144/while/lstm_cell_489/split/split_dim:output:0;sequential_48/lstm_144/while/lstm_cell_489/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitф
2sequential_48/lstm_144/while/lstm_cell_489/SigmoidSigmoid9sequential_48/lstm_144/while/lstm_cell_489/split:output:0*
T0*'
_output_shapes
:         dг
4sequential_48/lstm_144/while/lstm_cell_489/Sigmoid_1Sigmoid9sequential_48/lstm_144/while/lstm_cell_489/split:output:1*
T0*'
_output_shapes
:         d═
.sequential_48/lstm_144/while/lstm_cell_489/mulMul8sequential_48/lstm_144/while/lstm_cell_489/Sigmoid_1:y:0*sequential_48_lstm_144_while_placeholder_3*
T0*'
_output_shapes
:         dц
/sequential_48/lstm_144/while/lstm_cell_489/ReluRelu9sequential_48/lstm_144/while/lstm_cell_489/split:output:2*
T0*'
_output_shapes
:         dЯ
0sequential_48/lstm_144/while/lstm_cell_489/mul_1Mul6sequential_48/lstm_144/while/lstm_cell_489/Sigmoid:y:0=sequential_48/lstm_144/while/lstm_cell_489/Relu:activations:0*
T0*'
_output_shapes
:         dН
0sequential_48/lstm_144/while/lstm_cell_489/add_1AddV22sequential_48/lstm_144/while/lstm_cell_489/mul:z:04sequential_48/lstm_144/while/lstm_cell_489/mul_1:z:0*
T0*'
_output_shapes
:         dг
4sequential_48/lstm_144/while/lstm_cell_489/Sigmoid_2Sigmoid9sequential_48/lstm_144/while/lstm_cell_489/split:output:3*
T0*'
_output_shapes
:         dА
1sequential_48/lstm_144/while/lstm_cell_489/Relu_1Relu4sequential_48/lstm_144/while/lstm_cell_489/add_1:z:0*
T0*'
_output_shapes
:         dС
0sequential_48/lstm_144/while/lstm_cell_489/mul_2Mul8sequential_48/lstm_144/while/lstm_cell_489/Sigmoid_2:y:0?sequential_48/lstm_144/while/lstm_cell_489/Relu_1:activations:0*
T0*'
_output_shapes
:         dб
Asequential_48/lstm_144/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_48_lstm_144_while_placeholder_1(sequential_48_lstm_144_while_placeholder4sequential_48/lstm_144/while/lstm_cell_489/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_48/lstm_144/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_48/lstm_144/while/addAddV2(sequential_48_lstm_144_while_placeholder+sequential_48/lstm_144/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_48/lstm_144/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_48/lstm_144/while/add_1AddV2Fsequential_48_lstm_144_while_sequential_48_lstm_144_while_loop_counter-sequential_48/lstm_144/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_48/lstm_144/while/IdentityIdentity&sequential_48/lstm_144/while/add_1:z:0"^sequential_48/lstm_144/while/NoOp*
T0*
_output_shapes
: к
'sequential_48/lstm_144/while/Identity_1IdentityLsequential_48_lstm_144_while_sequential_48_lstm_144_while_maximum_iterations"^sequential_48/lstm_144/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_48/lstm_144/while/Identity_2Identity$sequential_48/lstm_144/while/add:z:0"^sequential_48/lstm_144/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_48/lstm_144/while/Identity_3IdentityQsequential_48/lstm_144/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_48/lstm_144/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_48/lstm_144/while/Identity_4Identity4sequential_48/lstm_144/while/lstm_cell_489/mul_2:z:0"^sequential_48/lstm_144/while/NoOp*
T0*'
_output_shapes
:         d┐
'sequential_48/lstm_144/while/Identity_5Identity4sequential_48/lstm_144/while/lstm_cell_489/add_1:z:0"^sequential_48/lstm_144/while/NoOp*
T0*'
_output_shapes
:         d»
!sequential_48/lstm_144/while/NoOpNoOpB^sequential_48/lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpA^sequential_48/lstm_144/while/lstm_cell_489/MatMul/ReadVariableOpC^sequential_48/lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_48_lstm_144_while_identity.sequential_48/lstm_144/while/Identity:output:0"[
'sequential_48_lstm_144_while_identity_10sequential_48/lstm_144/while/Identity_1:output:0"[
'sequential_48_lstm_144_while_identity_20sequential_48/lstm_144/while/Identity_2:output:0"[
'sequential_48_lstm_144_while_identity_30sequential_48/lstm_144/while/Identity_3:output:0"[
'sequential_48_lstm_144_while_identity_40sequential_48/lstm_144/while/Identity_4:output:0"[
'sequential_48_lstm_144_while_identity_50sequential_48/lstm_144/while/Identity_5:output:0"џ
Jsequential_48_lstm_144_while_lstm_cell_489_biasadd_readvariableop_resourceLsequential_48_lstm_144_while_lstm_cell_489_biasadd_readvariableop_resource_0"ю
Ksequential_48_lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resourceMsequential_48_lstm_144_while_lstm_cell_489_matmul_1_readvariableop_resource_0"ў
Isequential_48_lstm_144_while_lstm_cell_489_matmul_readvariableop_resourceKsequential_48_lstm_144_while_lstm_cell_489_matmul_readvariableop_resource_0"ї
Csequential_48_lstm_144_while_sequential_48_lstm_144_strided_slice_1Esequential_48_lstm_144_while_sequential_48_lstm_144_strided_slice_1_0"Ё
sequential_48_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_144_tensorarrayunstack_tensorlistfromtensorЂsequential_48_lstm_144_while_tensorarrayv2read_tensorlistgetitem_sequential_48_lstm_144_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2є
Asequential_48/lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOpAsequential_48/lstm_144/while/lstm_cell_489/BiasAdd/ReadVariableOp2ё
@sequential_48/lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp@sequential_48/lstm_144/while/lstm_cell_489/MatMul/ReadVariableOp2ѕ
Bsequential_48/lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOpBsequential_48/lstm_144/while/lstm_cell_489/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: 
ПJ
а
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969614

inputs>
,lstm_cell_491_matmul_readvariableop_resource:2(@
.lstm_cell_491_matmul_1_readvariableop_resource:
(;
-lstm_cell_491_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_491/BiasAdd/ReadVariableOpб#lstm_cell_491/MatMul/ReadVariableOpб%lstm_cell_491/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         
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
:         
c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         2D
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskљ
#lstm_cell_491/MatMul/ReadVariableOpReadVariableOp,lstm_cell_491_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_491/MatMulMatMulstrided_slice_2:output:0+lstm_cell_491/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_491/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_491_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_491/MatMul_1MatMulzeros:output:0-lstm_cell_491/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_491/addAddV2lstm_cell_491/MatMul:product:0 lstm_cell_491/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_491/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_491_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_491/BiasAddBiasAddlstm_cell_491/add:z:0,lstm_cell_491/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_491/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_491/splitSplit&lstm_cell_491/split/split_dim:output:0lstm_cell_491/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_491/SigmoidSigmoidlstm_cell_491/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_1Sigmoidlstm_cell_491/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_491/mulMullstm_cell_491/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_491/ReluRelulstm_cell_491/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_491/mul_1Mullstm_cell_491/Sigmoid:y:0 lstm_cell_491/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_491/add_1AddV2lstm_cell_491/mul:z:0lstm_cell_491/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_491/Sigmoid_2Sigmoidlstm_cell_491/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_491/Relu_1Relulstm_cell_491/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_491/mul_2Mullstm_cell_491/Sigmoid_2:y:0"lstm_cell_491/Relu_1:activations:0*
T0*'
_output_shapes
:         
n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_491_matmul_readvariableop_resource.lstm_cell_491_matmul_1_readvariableop_resource-lstm_cell_491_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         
:         
: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2969530*
condR
while_cond_2969529*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         
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
:         
├
NoOpNoOp%^lstm_cell_491/BiasAdd/ReadVariableOp$^lstm_cell_491/MatMul/ReadVariableOp&^lstm_cell_491/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_491/BiasAdd/ReadVariableOp$lstm_cell_491/BiasAdd/ReadVariableOp2J
#lstm_cell_491/MatMul/ReadVariableOp#lstm_cell_491/MatMul/ReadVariableOp2N
%lstm_cell_491/MatMul_1/ReadVariableOp%lstm_cell_491/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_2968545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2968545___redundant_placeholder05
1while_while_cond_2968545___redundant_placeholder15
1while_while_cond_2968545___redundant_placeholder25
1while_while_cond_2968545___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
Ѓ
и
*__inference_lstm_145_layer_call_fn_2971932

inputs
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identityѕбStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_145_layer_call_and_return_conditional_losses_2969464s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
═
Ѓ
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2969028

inputs

states
states_10
matmul_readvariableop_resource:2(2
 matmul_1_readvariableop_resource:
(-
biasadd_readvariableop_resource:(
identity

identity_1

identity_2ѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpбMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:         (r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Х
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         
V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         
U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         
N
ReluRelusplit:output:2*
T0*'
_output_shapes
:         
_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         
T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         
V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         
K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         
c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         
X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         
Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         
Љ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         2:         
:         
: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs:OK
'
_output_shapes
:         

 
_user_specified_namestates:OK
'
_output_shapes
:         

 
_user_specified_namestates
║
╚
while_cond_2972144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2972144___redundant_placeholder05
1while_while_cond_2972144___redundant_placeholder15
1while_while_cond_2972144___redundant_placeholder25
1while_while_cond_2972144___redundant_placeholder3
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
@: : : : :         2:         2: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2971528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2971528___redundant_placeholder05
1while_while_cond_2971528___redundant_placeholder15
1while_while_cond_2971528___redundant_placeholder25
1while_while_cond_2971528___redundant_placeholder3
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
@: : : : :         d:         d: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
:
РJ
Б
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972372

inputs?
,lstm_cell_490_matmul_readvariableop_resource:	d╚A
.lstm_cell_490_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_490_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_490/BiasAdd/ReadVariableOpб#lstm_cell_490/MatMul/ReadVariableOpб%lstm_cell_490/MatMul_1/ReadVariableOpбwhile;
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
valueB:Л
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
:         2R
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
:         2c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:         dD
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
valueB:█
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
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
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
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЉ
#lstm_cell_490/MatMul/ReadVariableOpReadVariableOp,lstm_cell_490_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_490/MatMulMatMulstrided_slice_2:output:0+lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_490_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_490/MatMul_1MatMulzeros:output:0-lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_490/addAddV2lstm_cell_490/MatMul:product:0 lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_490_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_490/BiasAddBiasAddlstm_cell_490/add:z:0,lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_490/splitSplit&lstm_cell_490/split/split_dim:output:0lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_490/SigmoidSigmoidlstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_1Sigmoidlstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_490/mulMullstm_cell_490/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_490/ReluRelulstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_490/mul_1Mullstm_cell_490/Sigmoid:y:0 lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_490/add_1AddV2lstm_cell_490/mul:z:0lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_490/Sigmoid_2Sigmoidlstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_490/Relu_1Relulstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_490/mul_2Mullstm_cell_490/Sigmoid_2:y:0"lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Є
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_490_matmul_readvariableop_resource.lstm_cell_490_matmul_1_readvariableop_resource-lstm_cell_490_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2972288*
condR
while_cond_2972287*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ┬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         2[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:         2├
NoOpNoOp%^lstm_cell_490/BiasAdd/ReadVariableOp$^lstm_cell_490/MatMul/ReadVariableOp&^lstm_cell_490/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_490/BiasAdd/ReadVariableOp$lstm_cell_490/BiasAdd/ReadVariableOp2J
#lstm_cell_490/MatMul/ReadVariableOp#lstm_cell_490/MatMul/ReadVariableOp2N
%lstm_cell_490/MatMul_1/ReadVariableOp%lstm_cell_490/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
║
╚
while_cond_2973046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2973046___redundant_placeholder05
1while_while_cond_2973046___redundant_placeholder15
1while_while_cond_2973046___redundant_placeholder25
1while_while_cond_2973046___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
║
╚
while_cond_2969529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2969529___redundant_placeholder05
1while_while_cond_2969529___redundant_placeholder15
1while_while_cond_2969529___redundant_placeholder25
1while_while_cond_2969529___redundant_placeholder3
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
@: : : : :         
:         
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
:         
:-)
'
_output_shapes
:         
:

_output_shapes
: :

_output_shapes
:
№
Э
/__inference_lstm_cell_490_layer_call_fn_2973265

inputs
states_0
states_1
unknown:	d╚
	unknown_0:	2╚
	unknown_1:	╚
identity

identity_1

identity_2ѕбStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         2:         2:         2*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2968532o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         2q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         d:         2:         2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:QM
'
_output_shapes
:         2
"
_user_specified_name
states/0:QM
'
_output_shapes
:         2
"
_user_specified_name
states/1
З

Б
/__inference_sequential_48_layer_call_fn_2970280
lstm_144_input
unknown:	љ
	unknown_0:	dљ
	unknown_1:	љ
	unknown_2:	d╚
	unknown_3:	2╚
	unknown_4:	╚
	unknown_5:2(
	unknown_6:
(
	unknown_7:(
	unknown_8:

	unknown_9:
identityѕбStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCalllstm_144_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *S
fNRL
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970228o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_144_input
љ
Х
*__inference_lstm_146_layer_call_fn_2972526
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2968965o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
Л8
┌
while_body_2969911
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_490_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_490_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_490_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_490_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_490_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_490_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_490/BiasAdd/ReadVariableOpб)while/lstm_cell_490/MatMul/ReadVariableOpб+while/lstm_cell_490/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_490/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_490_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_490/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_490/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_490/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_490_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_490/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_490/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_490/addAddV2$while/lstm_cell_490/MatMul:product:0&while/lstm_cell_490/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_490/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_490_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_490/BiasAddBiasAddwhile/lstm_cell_490/add:z:02while/lstm_cell_490/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_490/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_490/splitSplit,while/lstm_cell_490/split/split_dim:output:0$while/lstm_cell_490/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_490/SigmoidSigmoid"while/lstm_cell_490/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_1Sigmoid"while/lstm_cell_490/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_490/mulMul!while/lstm_cell_490/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_490/ReluRelu"while/lstm_cell_490/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_490/mul_1Mulwhile/lstm_cell_490/Sigmoid:y:0&while/lstm_cell_490/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_490/add_1AddV2while/lstm_cell_490/mul:z:0while/lstm_cell_490/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_490/Sigmoid_2Sigmoid"while/lstm_cell_490/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_490/Relu_1Reluwhile/lstm_cell_490/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_490/mul_2Mul!while/lstm_cell_490/Sigmoid_2:y:0(while/lstm_cell_490/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_490/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмM
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
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: z
while/Identity_4Identitywhile/lstm_cell_490/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_490/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_490/BiasAdd/ReadVariableOp*^while/lstm_cell_490/MatMul/ReadVariableOp,^while/lstm_cell_490/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_490_biasadd_readvariableop_resource5while_lstm_cell_490_biasadd_readvariableop_resource_0"n
4while_lstm_cell_490_matmul_1_readvariableop_resource6while_lstm_cell_490_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_490_matmul_readvariableop_resource4while_lstm_cell_490_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_490/BiasAdd/ReadVariableOp*while/lstm_cell_490/BiasAdd/ReadVariableOp2V
)while/lstm_cell_490/MatMul/ReadVariableOp)while/lstm_cell_490/MatMul/ReadVariableOp2Z
+while/lstm_cell_490/MatMul_1/ReadVariableOp+while/lstm_cell_490/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:         2:-)
'
_output_shapes
:         2:

_output_shapes
: :

_output_shapes
: 
љ
Х
*__inference_lstm_146_layer_call_fn_2972537
inputs_0
unknown:2(
	unknown_0:
(
	unknown_1:(
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_146_layer_call_and_return_conditional_losses_2969156o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*й
serving_defaultЕ
M
lstm_144_input;
 serving_default_lstm_144_input:0         <
dense_480
StatefulPartitionedCall:0         tensorflow/serving/predict:шЛ
ф
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
ј__call__
+Ј&call_and_return_all_conditional_losses
љ_default_save_signature"
_tf_keras_sequential
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Љ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Њ__call__
+ћ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ж
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
 	keras_api
Ћ__call__
+ќ&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Р

!kernel
"bias
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
Ќ__call__
+ў&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
(iter

)beta_1

*beta_2
	+decay
,learning_rate!mx"my-mz.m{/m|0m}1m~2m3mђ4mЂ5mѓ!vЃ"vё-vЁ.vє/vЄ0vѕ1vЅ2vі3vІ4vї5vЇ"
	optimizer
-
Ўserving_default"
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
╬
6non_trainable_variables

7layers
8metrics
9layer_regularization_losses
:layer_metrics
	variables
	trainable_variables

regularization_losses
ј__call__
љ_default_save_signature
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
ѕ
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
џ__call__
+Џ&call_and_return_all_conditional_losses"
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
╝

Astates
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
Љ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
ѕ
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
ю__call__
+Ю&call_and_return_all_conditional_losses"
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
╝

Mstates
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
	variables
trainable_variables
regularization_losses
Њ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
ѕ
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
ъ__call__
+Ъ&call_and_return_all_conditional_losses"
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
╝

Ystates
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
	variables
trainable_variables
regularization_losses
Ћ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
!:
2dense_48/kernel
:2dense_48/bias
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
░
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
$	variables
%trainable_variables
&regularization_losses
Ќ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	љ2lstm_144/lstm_cell_144/kernel
::8	dљ2'lstm_144/lstm_cell_144/recurrent_kernel
*:(љ2lstm_144/lstm_cell_144/bias
0:.	d╚2lstm_145/lstm_cell_145/kernel
::8	2╚2'lstm_145/lstm_cell_145/recurrent_kernel
*:(╚2lstm_145/lstm_cell_145/bias
/:-2(2lstm_146/lstm_cell_146/kernel
9:7
(2'lstm_146/lstm_cell_146/recurrent_kernel
):'(2lstm_146/lstm_cell_146/bias
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
░
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics
=	variables
>trainable_variables
?regularization_losses
џ__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
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
░
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
ю__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
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
░
onon_trainable_variables

players
qmetrics
rlayer_regularization_losses
slayer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
ъ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
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
2Adam/dense_48/kernel/m
 :2Adam/dense_48/bias/m
5:3	љ2$Adam/lstm_144/lstm_cell_144/kernel/m
?:=	dљ2.Adam/lstm_144/lstm_cell_144/recurrent_kernel/m
/:-љ2"Adam/lstm_144/lstm_cell_144/bias/m
5:3	d╚2$Adam/lstm_145/lstm_cell_145/kernel/m
?:=	2╚2.Adam/lstm_145/lstm_cell_145/recurrent_kernel/m
/:-╚2"Adam/lstm_145/lstm_cell_145/bias/m
4:22(2$Adam/lstm_146/lstm_cell_146/kernel/m
>:<
(2.Adam/lstm_146/lstm_cell_146/recurrent_kernel/m
.:,(2"Adam/lstm_146/lstm_cell_146/bias/m
&:$
2Adam/dense_48/kernel/v
 :2Adam/dense_48/bias/v
5:3	љ2$Adam/lstm_144/lstm_cell_144/kernel/v
?:=	dљ2.Adam/lstm_144/lstm_cell_144/recurrent_kernel/v
/:-љ2"Adam/lstm_144/lstm_cell_144/bias/v
5:3	d╚2$Adam/lstm_145/lstm_cell_145/kernel/v
?:=	2╚2.Adam/lstm_145/lstm_cell_145/recurrent_kernel/v
/:-╚2"Adam/lstm_145/lstm_cell_145/bias/v
4:22(2$Adam/lstm_146/lstm_cell_146/kernel/v
>:<
(2.Adam/lstm_146/lstm_cell_146/recurrent_kernel/v
.:,(2"Adam/lstm_146/lstm_cell_146/bias/v
і2Є
/__inference_sequential_48_layer_call_fn_2969664
/__inference_sequential_48_layer_call_fn_2970402
/__inference_sequential_48_layer_call_fn_2970429
/__inference_sequential_48_layer_call_fn_2970280└
и▓│
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

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ш2з
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970856
J__inference_sequential_48_layer_call_and_return_conditional_losses_2971283
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970310
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970340└
и▓│
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

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
нBЛ
"__inference__wrapped_model_2968115lstm_144_input"ў
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
І2ѕ
*__inference_lstm_144_layer_call_fn_2971294
*__inference_lstm_144_layer_call_fn_2971305
*__inference_lstm_144_layer_call_fn_2971316
*__inference_lstm_144_layer_call_fn_2971327Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971470
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971613
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971756
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971899Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_145_layer_call_fn_2971910
*__inference_lstm_145_layer_call_fn_2971921
*__inference_lstm_145_layer_call_fn_2971932
*__inference_lstm_145_layer_call_fn_2971943Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972086
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972229
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972372
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972515Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
І2ѕ
*__inference_lstm_146_layer_call_fn_2972526
*__inference_lstm_146_layer_call_fn_2972537
*__inference_lstm_146_layer_call_fn_2972548
*__inference_lstm_146_layer_call_fn_2972559Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
э2З
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972702
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972845
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972988
E__inference_lstm_146_layer_call_and_return_conditional_losses_2973131Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
н2Л
*__inference_dense_48_layer_call_fn_2973140б
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
№2В
E__inference_dense_48_layer_call_and_return_conditional_losses_2973150б
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
МBл
%__inference_signature_wrapper_2970375lstm_144_input"ћ
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
д2Б
/__inference_lstm_cell_489_layer_call_fn_2973167
/__inference_lstm_cell_489_layer_call_fn_2973184Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2973216
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2973248Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_490_layer_call_fn_2973265
/__inference_lstm_cell_490_layer_call_fn_2973282Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2973314
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2973346Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
д2Б
/__inference_lstm_cell_491_layer_call_fn_2973363
/__inference_lstm_cell_491_layer_call_fn_2973380Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▄2┘
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2973412
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2973444Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 Ц
"__inference__wrapped_model_2968115-./012345!";б8
1б.
,і)
lstm_144_input         
ф "3ф0
.
dense_48"і
dense_48         Ц
E__inference_dense_48_layer_call_and_return_conditional_losses_2973150\!"/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ }
*__inference_dense_48_layer_call_fn_2973140O!"/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971470і-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "2б/
(і%
0                  d
џ н
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971613і-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "2б/
(і%
0                  d
џ ║
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971756q-./?б<
5б2
$і!
inputs         

 
p 

 
ф ")б&
і
0         d
џ ║
E__inference_lstm_144_layer_call_and_return_conditional_losses_2971899q-./?б<
5б2
$і!
inputs         

 
p

 
ф ")б&
і
0         d
џ Ф
*__inference_lstm_144_layer_call_fn_2971294}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p 

 
ф "%і"                  dФ
*__inference_lstm_144_layer_call_fn_2971305}-./OбL
EбB
4џ1
/і,
inputs/0                  

 
p

 
ф "%і"                  dњ
*__inference_lstm_144_layer_call_fn_2971316d-./?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_144_layer_call_fn_2971327d-./?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972086і012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "2б/
(і%
0                  2
џ н
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972229і012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "2б/
(і%
0                  2
џ ║
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972372q012?б<
5б2
$і!
inputs         d

 
p 

 
ф ")б&
і
0         2
џ ║
E__inference_lstm_145_layer_call_and_return_conditional_losses_2972515q012?б<
5б2
$і!
inputs         d

 
p

 
ф ")б&
і
0         2
џ Ф
*__inference_lstm_145_layer_call_fn_2971910}012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "%і"                  2Ф
*__inference_lstm_145_layer_call_fn_2971921}012OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "%і"                  2њ
*__inference_lstm_145_layer_call_fn_2971932d012?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_145_layer_call_fn_2971943d012?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972702}345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "%б"
і
0         

џ к
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972845}345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "%б"
і
0         

џ Х
E__inference_lstm_146_layer_call_and_return_conditional_losses_2972988m345?б<
5б2
$і!
inputs         2

 
p 

 
ф "%б"
і
0         

џ Х
E__inference_lstm_146_layer_call_and_return_conditional_losses_2973131m345?б<
5б2
$і!
inputs         2

 
p

 
ф "%б"
і
0         

џ ъ
*__inference_lstm_146_layer_call_fn_2972526p345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p 

 
ф "і         
ъ
*__inference_lstm_146_layer_call_fn_2972537p345OбL
EбB
4џ1
/і,
inputs/0                  2

 
p

 
ф "і         
ј
*__inference_lstm_146_layer_call_fn_2972548`345?б<
5б2
$і!
inputs         2

 
p 

 
ф "і         
ј
*__inference_lstm_146_layer_call_fn_2972559`345?б<
5б2
$і!
inputs         2

 
p

 
ф "і         
╠
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2973216§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ ╠
J__inference_lstm_cell_489_layer_call_and_return_conditional_losses_2973248§-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "sбp
iбf
і
0/0         d
EџB
і
0/1/0         d
і
0/1/1         d
џ А
/__inference_lstm_cell_489_layer_call_fn_2973167ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p 
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         dА
/__inference_lstm_cell_489_layer_call_fn_2973184ь-./ђб}
vбs
 і
inputs         
KбH
"і
states/0         d
"і
states/1         d
p
ф "cб`
і
0         d
Aџ>
і
1/0         d
і
1/1         d╠
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2973314§012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ ╠
J__inference_lstm_cell_490_layer_call_and_return_conditional_losses_2973346§012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "sбp
iбf
і
0/0         2
EџB
і
0/1/0         2
і
0/1/1         2
џ А
/__inference_lstm_cell_490_layer_call_fn_2973265ь012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p 
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2А
/__inference_lstm_cell_490_layer_call_fn_2973282ь012ђб}
vбs
 і
inputs         d
KбH
"і
states/0         2
"і
states/1         2
p
ф "cб`
і
0         2
Aџ>
і
1/0         2
і
1/1         2╠
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2973412§345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ ╠
J__inference_lstm_cell_491_layer_call_and_return_conditional_losses_2973444§345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "sбp
iбf
і
0/0         

EџB
і
0/1/0         

і
0/1/1         

џ А
/__inference_lstm_cell_491_layer_call_fn_2973363ь345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p 
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
А
/__inference_lstm_cell_491_layer_call_fn_2973380ь345ђб}
vбs
 і
inputs         2
KбH
"і
states/0         

"і
states/1         

p
ф "cб`
і
0         

Aџ>
і
1/0         

і
1/1         
К
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970310y-./012345!"Cб@
9б6
,і)
lstm_144_input         
p 

 
ф "%б"
і
0         
џ К
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970340y-./012345!"Cб@
9б6
,і)
lstm_144_input         
p

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_48_layer_call_and_return_conditional_losses_2970856q-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_48_layer_call_and_return_conditional_losses_2971283q-./012345!";б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ Ъ
/__inference_sequential_48_layer_call_fn_2969664l-./012345!"Cб@
9б6
,і)
lstm_144_input         
p 

 
ф "і         Ъ
/__inference_sequential_48_layer_call_fn_2970280l-./012345!"Cб@
9б6
,і)
lstm_144_input         
p

 
ф "і         Ќ
/__inference_sequential_48_layer_call_fn_2970402d-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "і         Ќ
/__inference_sequential_48_layer_call_fn_2970429d-./012345!";б8
1б.
$і!
inputs         
p

 
ф "і         ╗
%__inference_signature_wrapper_2970375Љ-./012345!"MбJ
б 
Cф@
>
lstm_144_input,і)
lstm_144_input         "3ф0
.
dense_48"і
dense_48         