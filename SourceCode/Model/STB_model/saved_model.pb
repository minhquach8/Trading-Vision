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
dense_78/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_78/kernel
s
#dense_78/kernel/Read/ReadVariableOpReadVariableOpdense_78/kernel*
_output_shapes

:
*
dtype0
r
dense_78/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_78/bias
k
!dense_78/bias/Read/ReadVariableOpReadVariableOpdense_78/bias*
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
lstm_234/lstm_cell_234/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_234/lstm_cell_234/kernel
љ
1lstm_234/lstm_cell_234/kernel/Read/ReadVariableOpReadVariableOplstm_234/lstm_cell_234/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_234/lstm_cell_234/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_234/lstm_cell_234/recurrent_kernel
ц
;lstm_234/lstm_cell_234/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_234/lstm_cell_234/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_234/lstm_cell_234/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_234/lstm_cell_234/bias
ѕ
/lstm_234/lstm_cell_234/bias/Read/ReadVariableOpReadVariableOplstm_234/lstm_cell_234/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_235/lstm_cell_235/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_235/lstm_cell_235/kernel
љ
1lstm_235/lstm_cell_235/kernel/Read/ReadVariableOpReadVariableOplstm_235/lstm_cell_235/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_235/lstm_cell_235/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_235/lstm_cell_235/recurrent_kernel
ц
;lstm_235/lstm_cell_235/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_235/lstm_cell_235/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_235/lstm_cell_235/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_235/lstm_cell_235/bias
ѕ
/lstm_235/lstm_cell_235/bias/Read/ReadVariableOpReadVariableOplstm_235/lstm_cell_235/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_236/lstm_cell_236/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_236/lstm_cell_236/kernel
Ј
1lstm_236/lstm_cell_236/kernel/Read/ReadVariableOpReadVariableOplstm_236/lstm_cell_236/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_236/lstm_cell_236/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_236/lstm_cell_236/recurrent_kernel
Б
;lstm_236/lstm_cell_236/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_236/lstm_cell_236/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_236/lstm_cell_236/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_236/lstm_cell_236/bias
Є
/lstm_236/lstm_cell_236/bias/Read/ReadVariableOpReadVariableOplstm_236/lstm_cell_236/bias*
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
Adam/dense_78/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_78/kernel/m
Ђ
*Adam/dense_78/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_78/kernel/m*
_output_shapes

:
*
dtype0
ђ
Adam/dense_78/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_78/bias/m
y
(Adam/dense_78/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_78/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_234/lstm_cell_234/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_234/lstm_cell_234/kernel/m
ъ
8Adam/lstm_234/lstm_cell_234/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_234/lstm_cell_234/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_234/lstm_cell_234/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_234/lstm_cell_234/recurrent_kernel/m
▓
BAdam/lstm_234/lstm_cell_234/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_234/lstm_cell_234/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_234/lstm_cell_234/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_234/lstm_cell_234/bias/m
ќ
6Adam/lstm_234/lstm_cell_234/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_234/lstm_cell_234/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_235/lstm_cell_235/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_235/lstm_cell_235/kernel/m
ъ
8Adam/lstm_235/lstm_cell_235/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_235/lstm_cell_235/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_235/lstm_cell_235/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_235/lstm_cell_235/recurrent_kernel/m
▓
BAdam/lstm_235/lstm_cell_235/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_235/lstm_cell_235/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_235/lstm_cell_235/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_235/lstm_cell_235/bias/m
ќ
6Adam/lstm_235/lstm_cell_235/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_235/lstm_cell_235/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_236/lstm_cell_236/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_236/lstm_cell_236/kernel/m
Ю
8Adam/lstm_236/lstm_cell_236/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_236/lstm_cell_236/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_236/lstm_cell_236/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_236/lstm_cell_236/recurrent_kernel/m
▒
BAdam/lstm_236/lstm_cell_236/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_236/lstm_cell_236/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_236/lstm_cell_236/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_236/lstm_cell_236/bias/m
Ћ
6Adam/lstm_236/lstm_cell_236/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_236/lstm_cell_236/bias/m*
_output_shapes
:(*
dtype0
ѕ
Adam/dense_78/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/dense_78/kernel/v
Ђ
*Adam/dense_78/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_78/kernel/v*
_output_shapes

:
*
dtype0
ђ
Adam/dense_78/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_78/bias/v
y
(Adam/dense_78/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_78/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_234/lstm_cell_234/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_234/lstm_cell_234/kernel/v
ъ
8Adam/lstm_234/lstm_cell_234/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_234/lstm_cell_234/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_234/lstm_cell_234/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_234/lstm_cell_234/recurrent_kernel/v
▓
BAdam/lstm_234/lstm_cell_234/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_234/lstm_cell_234/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_234/lstm_cell_234/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_234/lstm_cell_234/bias/v
ќ
6Adam/lstm_234/lstm_cell_234/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_234/lstm_cell_234/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_235/lstm_cell_235/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_235/lstm_cell_235/kernel/v
ъ
8Adam/lstm_235/lstm_cell_235/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_235/lstm_cell_235/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_235/lstm_cell_235/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_235/lstm_cell_235/recurrent_kernel/v
▓
BAdam/lstm_235/lstm_cell_235/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_235/lstm_cell_235/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_235/lstm_cell_235/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_235/lstm_cell_235/bias/v
ќ
6Adam/lstm_235/lstm_cell_235/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_235/lstm_cell_235/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_236/lstm_cell_236/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_236/lstm_cell_236/kernel/v
Ю
8Adam/lstm_236/lstm_cell_236/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_236/lstm_cell_236/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_236/lstm_cell_236/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_236/lstm_cell_236/recurrent_kernel/v
▒
BAdam/lstm_236/lstm_cell_236/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_236/lstm_cell_236/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_236/lstm_cell_236/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_236/lstm_cell_236/bias/v
Ћ
6Adam/lstm_236/lstm_cell_236/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_236/lstm_cell_236/bias/v*
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
VARIABLE_VALUEdense_78/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_78/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_234/lstm_cell_234/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_234/lstm_cell_234/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_234/lstm_cell_234/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_235/lstm_cell_235/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_235/lstm_cell_235/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_235/lstm_cell_235/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_236/lstm_cell_236/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_236/lstm_cell_236/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_236/lstm_cell_236/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_78/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_78/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_234/lstm_cell_234/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_234/lstm_cell_234/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_234/lstm_cell_234/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_235/lstm_cell_235/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_235/lstm_cell_235/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_235/lstm_cell_235/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_236/lstm_cell_236/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_236/lstm_cell_236/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_236/lstm_cell_236/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_78/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_78/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_234/lstm_cell_234/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_234/lstm_cell_234/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_234/lstm_cell_234/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_235/lstm_cell_235/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_235/lstm_cell_235/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_235/lstm_cell_235/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_236/lstm_cell_236/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_236/lstm_cell_236/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_236/lstm_cell_236/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_234_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
Ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_234_inputlstm_234/lstm_cell_234/kernel'lstm_234/lstm_cell_234/recurrent_kernellstm_234/lstm_cell_234/biaslstm_235/lstm_cell_235/kernel'lstm_235/lstm_cell_235/recurrent_kernellstm_235/lstm_cell_235/biaslstm_236/lstm_cell_236/kernel'lstm_236/lstm_cell_236/recurrent_kernellstm_236/lstm_cell_236/biasdense_78/kerneldense_78/bias*
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
%__inference_signature_wrapper_3135229
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Й
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_78/kernel/Read/ReadVariableOp!dense_78/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_234/lstm_cell_234/kernel/Read/ReadVariableOp;lstm_234/lstm_cell_234/recurrent_kernel/Read/ReadVariableOp/lstm_234/lstm_cell_234/bias/Read/ReadVariableOp1lstm_235/lstm_cell_235/kernel/Read/ReadVariableOp;lstm_235/lstm_cell_235/recurrent_kernel/Read/ReadVariableOp/lstm_235/lstm_cell_235/bias/Read/ReadVariableOp1lstm_236/lstm_cell_236/kernel/Read/ReadVariableOp;lstm_236/lstm_cell_236/recurrent_kernel/Read/ReadVariableOp/lstm_236/lstm_cell_236/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_78/kernel/m/Read/ReadVariableOp(Adam/dense_78/bias/m/Read/ReadVariableOp8Adam/lstm_234/lstm_cell_234/kernel/m/Read/ReadVariableOpBAdam/lstm_234/lstm_cell_234/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_234/lstm_cell_234/bias/m/Read/ReadVariableOp8Adam/lstm_235/lstm_cell_235/kernel/m/Read/ReadVariableOpBAdam/lstm_235/lstm_cell_235/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_235/lstm_cell_235/bias/m/Read/ReadVariableOp8Adam/lstm_236/lstm_cell_236/kernel/m/Read/ReadVariableOpBAdam/lstm_236/lstm_cell_236/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_236/lstm_cell_236/bias/m/Read/ReadVariableOp*Adam/dense_78/kernel/v/Read/ReadVariableOp(Adam/dense_78/bias/v/Read/ReadVariableOp8Adam/lstm_234/lstm_cell_234/kernel/v/Read/ReadVariableOpBAdam/lstm_234/lstm_cell_234/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_234/lstm_cell_234/bias/v/Read/ReadVariableOp8Adam/lstm_235/lstm_cell_235/kernel/v/Read/ReadVariableOpBAdam/lstm_235/lstm_cell_235/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_235/lstm_cell_235/bias/v/Read/ReadVariableOp8Adam/lstm_236/lstm_cell_236/kernel/v/Read/ReadVariableOpBAdam/lstm_236/lstm_cell_236/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_236/lstm_cell_236/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3138441
Ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_78/kerneldense_78/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_234/lstm_cell_234/kernel'lstm_234/lstm_cell_234/recurrent_kernellstm_234/lstm_cell_234/biaslstm_235/lstm_cell_235/kernel'lstm_235/lstm_cell_235/recurrent_kernellstm_235/lstm_cell_235/biaslstm_236/lstm_cell_236/kernel'lstm_236/lstm_cell_236/recurrent_kernellstm_236/lstm_cell_236/biastotalcountAdam/dense_78/kernel/mAdam/dense_78/bias/m$Adam/lstm_234/lstm_cell_234/kernel/m.Adam/lstm_234/lstm_cell_234/recurrent_kernel/m"Adam/lstm_234/lstm_cell_234/bias/m$Adam/lstm_235/lstm_cell_235/kernel/m.Adam/lstm_235/lstm_cell_235/recurrent_kernel/m"Adam/lstm_235/lstm_cell_235/bias/m$Adam/lstm_236/lstm_cell_236/kernel/m.Adam/lstm_236/lstm_cell_236/recurrent_kernel/m"Adam/lstm_236/lstm_cell_236/bias/mAdam/dense_78/kernel/vAdam/dense_78/bias/v$Adam/lstm_234/lstm_cell_234/kernel/v.Adam/lstm_234/lstm_cell_234/recurrent_kernel/v"Adam/lstm_234/lstm_cell_234/bias/v$Adam/lstm_235/lstm_cell_235/kernel/v.Adam/lstm_235/lstm_cell_235/recurrent_kernel/v"Adam/lstm_235/lstm_cell_235/bias/v$Adam/lstm_236/lstm_cell_236/kernel/v.Adam/lstm_236/lstm_cell_236/recurrent_kernel/v"Adam/lstm_236/lstm_cell_236/bias/v*4
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
#__inference__traced_restore_3138571Ћш+
аK
Ц
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137083
inputs_0?
,lstm_cell_517_matmul_readvariableop_resource:	d╚A
.lstm_cell_517_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_517_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_517/BiasAdd/ReadVariableOpб#lstm_cell_517/MatMul/ReadVariableOpб%lstm_cell_517/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_517/MatMul/ReadVariableOpReadVariableOp,lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_517/MatMulMatMulstrided_slice_2:output:0+lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_517/MatMul_1MatMulzeros:output:0-lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_517/addAddV2lstm_cell_517/MatMul:product:0 lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_517/BiasAddBiasAddlstm_cell_517/add:z:0,lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_517/splitSplit&lstm_cell_517/split/split_dim:output:0lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_517/SigmoidSigmoidlstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_1Sigmoidlstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_517/mulMullstm_cell_517/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_517/ReluRelulstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_517/mul_1Mullstm_cell_517/Sigmoid:y:0 lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_517/add_1AddV2lstm_cell_517/mul:z:0lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_2Sigmoidlstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_517/Relu_1Relulstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_517/mul_2Mullstm_cell_517/Sigmoid_2:y:0"lstm_cell_517/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_517_matmul_readvariableop_resource.lstm_cell_517_matmul_1_readvariableop_resource-lstm_cell_517_biasadd_readvariableop_resource*
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
while_body_3136999*
condR
while_cond_3136998*K
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
NoOpNoOp%^lstm_cell_517/BiasAdd/ReadVariableOp$^lstm_cell_517/MatMul/ReadVariableOp&^lstm_cell_517/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_517/BiasAdd/ReadVariableOp$lstm_cell_517/BiasAdd/ReadVariableOp2J
#lstm_cell_517/MatMul/ReadVariableOp#lstm_cell_517/MatMul/ReadVariableOp2N
%lstm_cell_517/MatMul_1/ReadVariableOp%lstm_cell_517/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ћC
З

lstm_236_while_body_3136047.
*lstm_236_while_lstm_236_while_loop_counter4
0lstm_236_while_lstm_236_while_maximum_iterations
lstm_236_while_placeholder 
lstm_236_while_placeholder_1 
lstm_236_while_placeholder_2 
lstm_236_while_placeholder_3-
)lstm_236_while_lstm_236_strided_slice_1_0i
elstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0:2(Q
?lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(L
>lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0:(
lstm_236_while_identity
lstm_236_while_identity_1
lstm_236_while_identity_2
lstm_236_while_identity_3
lstm_236_while_identity_4
lstm_236_while_identity_5+
'lstm_236_while_lstm_236_strided_slice_1g
clstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensorM
;lstm_236_while_lstm_cell_518_matmul_readvariableop_resource:2(O
=lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource:
(J
<lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpб2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOpб4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOpЉ
@lstm_236/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_236/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensor_0lstm_236_while_placeholderIlstm_236/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp=lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_236/while/lstm_cell_518/MatMulMatMul9lstm_236/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp?lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_236/while/lstm_cell_518/MatMul_1MatMullstm_236_while_placeholder_2<lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_236/while/lstm_cell_518/addAddV2-lstm_236/while/lstm_cell_518/MatMul:product:0/lstm_236/while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp>lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_236/while/lstm_cell_518/BiasAddBiasAdd$lstm_236/while/lstm_cell_518/add:z:0;lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_236/while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_236/while/lstm_cell_518/splitSplit5lstm_236/while/lstm_cell_518/split/split_dim:output:0-lstm_236/while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_236/while/lstm_cell_518/SigmoidSigmoid+lstm_236/while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_236/while/lstm_cell_518/Sigmoid_1Sigmoid+lstm_236/while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_236/while/lstm_cell_518/mulMul*lstm_236/while/lstm_cell_518/Sigmoid_1:y:0lstm_236_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_236/while/lstm_cell_518/ReluRelu+lstm_236/while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_236/while/lstm_cell_518/mul_1Mul(lstm_236/while/lstm_cell_518/Sigmoid:y:0/lstm_236/while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_236/while/lstm_cell_518/add_1AddV2$lstm_236/while/lstm_cell_518/mul:z:0&lstm_236/while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_236/while/lstm_cell_518/Sigmoid_2Sigmoid+lstm_236/while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_236/while/lstm_cell_518/Relu_1Relu&lstm_236/while/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_236/while/lstm_cell_518/mul_2Mul*lstm_236/while/lstm_cell_518/Sigmoid_2:y:01lstm_236/while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_236/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_236_while_placeholder_1lstm_236_while_placeholder&lstm_236/while/lstm_cell_518/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_236/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_236/while/addAddV2lstm_236_while_placeholderlstm_236/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_236/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_236/while/add_1AddV2*lstm_236_while_lstm_236_while_loop_counterlstm_236/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_236/while/IdentityIdentitylstm_236/while/add_1:z:0^lstm_236/while/NoOp*
T0*
_output_shapes
: ј
lstm_236/while/Identity_1Identity0lstm_236_while_lstm_236_while_maximum_iterations^lstm_236/while/NoOp*
T0*
_output_shapes
: t
lstm_236/while/Identity_2Identitylstm_236/while/add:z:0^lstm_236/while/NoOp*
T0*
_output_shapes
: А
lstm_236/while/Identity_3IdentityClstm_236/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_236/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_236/while/Identity_4Identity&lstm_236/while/lstm_cell_518/mul_2:z:0^lstm_236/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_236/while/Identity_5Identity&lstm_236/while/lstm_cell_518/add_1:z:0^lstm_236/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_236/while/NoOpNoOp4^lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp3^lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp5^lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_236_while_identity lstm_236/while/Identity:output:0"?
lstm_236_while_identity_1"lstm_236/while/Identity_1:output:0"?
lstm_236_while_identity_2"lstm_236/while/Identity_2:output:0"?
lstm_236_while_identity_3"lstm_236/while/Identity_3:output:0"?
lstm_236_while_identity_4"lstm_236/while/Identity_4:output:0"?
lstm_236_while_identity_5"lstm_236/while/Identity_5:output:0"T
'lstm_236_while_lstm_236_strided_slice_1)lstm_236_while_lstm_236_strided_slice_1_0"~
<lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource>lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0"ђ
=lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource?lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0"|
;lstm_236_while_lstm_cell_518_matmul_readvariableop_resource=lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0"╠
clstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensorelstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp2h
2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp2l
4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3134599
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3134599___redundant_placeholder05
1while_while_cond_3134599___redundant_placeholder15
1while_while_cond_3134599___redundant_placeholder25
1while_while_cond_3134599___redundant_placeholder3
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
▀
ѕ
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3138070

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
ћC
З

lstm_236_while_body_3135620.
*lstm_236_while_lstm_236_while_loop_counter4
0lstm_236_while_lstm_236_while_maximum_iterations
lstm_236_while_placeholder 
lstm_236_while_placeholder_1 
lstm_236_while_placeholder_2 
lstm_236_while_placeholder_3-
)lstm_236_while_lstm_236_strided_slice_1_0i
elstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0:2(Q
?lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(L
>lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0:(
lstm_236_while_identity
lstm_236_while_identity_1
lstm_236_while_identity_2
lstm_236_while_identity_3
lstm_236_while_identity_4
lstm_236_while_identity_5+
'lstm_236_while_lstm_236_strided_slice_1g
clstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensorM
;lstm_236_while_lstm_cell_518_matmul_readvariableop_resource:2(O
=lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource:
(J
<lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpб2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOpб4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOpЉ
@lstm_236/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_236/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensor_0lstm_236_while_placeholderIlstm_236/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp=lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_236/while/lstm_cell_518/MatMulMatMul9lstm_236/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp?lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_236/while/lstm_cell_518/MatMul_1MatMullstm_236_while_placeholder_2<lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_236/while/lstm_cell_518/addAddV2-lstm_236/while/lstm_cell_518/MatMul:product:0/lstm_236/while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp>lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_236/while/lstm_cell_518/BiasAddBiasAdd$lstm_236/while/lstm_cell_518/add:z:0;lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_236/while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_236/while/lstm_cell_518/splitSplit5lstm_236/while/lstm_cell_518/split/split_dim:output:0-lstm_236/while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_236/while/lstm_cell_518/SigmoidSigmoid+lstm_236/while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_236/while/lstm_cell_518/Sigmoid_1Sigmoid+lstm_236/while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_236/while/lstm_cell_518/mulMul*lstm_236/while/lstm_cell_518/Sigmoid_1:y:0lstm_236_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_236/while/lstm_cell_518/ReluRelu+lstm_236/while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_236/while/lstm_cell_518/mul_1Mul(lstm_236/while/lstm_cell_518/Sigmoid:y:0/lstm_236/while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_236/while/lstm_cell_518/add_1AddV2$lstm_236/while/lstm_cell_518/mul:z:0&lstm_236/while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_236/while/lstm_cell_518/Sigmoid_2Sigmoid+lstm_236/while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_236/while/lstm_cell_518/Relu_1Relu&lstm_236/while/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_236/while/lstm_cell_518/mul_2Mul*lstm_236/while/lstm_cell_518/Sigmoid_2:y:01lstm_236/while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_236/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_236_while_placeholder_1lstm_236_while_placeholder&lstm_236/while/lstm_cell_518/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_236/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_236/while/addAddV2lstm_236_while_placeholderlstm_236/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_236/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_236/while/add_1AddV2*lstm_236_while_lstm_236_while_loop_counterlstm_236/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_236/while/IdentityIdentitylstm_236/while/add_1:z:0^lstm_236/while/NoOp*
T0*
_output_shapes
: ј
lstm_236/while/Identity_1Identity0lstm_236_while_lstm_236_while_maximum_iterations^lstm_236/while/NoOp*
T0*
_output_shapes
: t
lstm_236/while/Identity_2Identitylstm_236/while/add:z:0^lstm_236/while/NoOp*
T0*
_output_shapes
: А
lstm_236/while/Identity_3IdentityClstm_236/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_236/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_236/while/Identity_4Identity&lstm_236/while/lstm_cell_518/mul_2:z:0^lstm_236/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_236/while/Identity_5Identity&lstm_236/while/lstm_cell_518/add_1:z:0^lstm_236/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_236/while/NoOpNoOp4^lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp3^lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp5^lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_236_while_identity lstm_236/while/Identity:output:0"?
lstm_236_while_identity_1"lstm_236/while/Identity_1:output:0"?
lstm_236_while_identity_2"lstm_236/while/Identity_2:output:0"?
lstm_236_while_identity_3"lstm_236/while/Identity_3:output:0"?
lstm_236_while_identity_4"lstm_236/while/Identity_4:output:0"?
lstm_236_while_identity_5"lstm_236/while/Identity_5:output:0"T
'lstm_236_while_lstm_236_strided_slice_1)lstm_236_while_lstm_236_strided_slice_1_0"~
<lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource>lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0"ђ
=lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource?lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0"|
;lstm_236_while_lstm_cell_518_matmul_readvariableop_resource=lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0"╠
clstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensorelstm_236_while_tensorarrayv2read_tensorlistgetitem_lstm_236_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp3lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp2h
2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp2lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp2l
4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp4lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
к
э
J__inference_sequential_78_layer_call_and_return_conditional_losses_3134493

inputs#
lstm_234_3134169:	љ#
lstm_234_3134171:	dљ
lstm_234_3134173:	љ#
lstm_235_3134319:	d╚#
lstm_235_3134321:	2╚
lstm_235_3134323:	╚"
lstm_236_3134469:2("
lstm_236_3134471:
(
lstm_236_3134473:("
dense_78_3134487:

dense_78_3134489:
identityѕб dense_78/StatefulPartitionedCallб lstm_234/StatefulPartitionedCallб lstm_235/StatefulPartitionedCallб lstm_236/StatefulPartitionedCallІ
 lstm_234/StatefulPartitionedCallStatefulPartitionedCallinputslstm_234_3134169lstm_234_3134171lstm_234_3134173*
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3134168«
 lstm_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_234/StatefulPartitionedCall:output:0lstm_235_3134319lstm_235_3134321lstm_235_3134323*
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134318ф
 lstm_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_235/StatefulPartitionedCall:output:0lstm_236_3134469lstm_236_3134471lstm_236_3134473*
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134468ќ
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)lstm_236/StatefulPartitionedCall:output:0dense_78_3134487dense_78_3134489*
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
E__inference_dense_78_layer_call_and_return_conditional_losses_3134486x
IdentityIdentity)dense_78/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_78/StatefulPartitionedCall!^lstm_234/StatefulPartitionedCall!^lstm_235/StatefulPartitionedCall!^lstm_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 lstm_234/StatefulPartitionedCall lstm_234/StatefulPartitionedCall2D
 lstm_235/StatefulPartitionedCall lstm_235/StatefulPartitionedCall2D
 lstm_236/StatefulPartitionedCall lstm_236/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
─8
н
while_body_3137472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_518_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_518_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_518_matmul_readvariableop_resource:2(F
4while_lstm_cell_518_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_518/BiasAdd/ReadVariableOpб)while/lstm_cell_518/MatMul/ReadVariableOpб+while/lstm_cell_518/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_518/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_518/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_518/addAddV2$while/lstm_cell_518/MatMul:product:0&while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_518/BiasAddBiasAddwhile/lstm_cell_518/add:z:02while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_518/splitSplit,while/lstm_cell_518/split/split_dim:output:0$while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_518/SigmoidSigmoid"while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_1Sigmoid"while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_518/mulMul!while/lstm_cell_518/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_518/ReluRelu"while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_518/mul_1Mulwhile/lstm_cell_518/Sigmoid:y:0&while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_518/add_1AddV2while/lstm_cell_518/mul:z:0while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_2Sigmoid"while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_518/Relu_1Reluwhile/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_518/mul_2Mul!while/lstm_cell_518/Sigmoid_2:y:0(while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_518/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_518/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_518/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_518/BiasAdd/ReadVariableOp*^while/lstm_cell_518/MatMul/ReadVariableOp,^while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_518_biasadd_readvariableop_resource5while_lstm_cell_518_biasadd_readvariableop_resource_0"n
4while_lstm_cell_518_matmul_1_readvariableop_resource6while_lstm_cell_518_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_518_matmul_readvariableop_resource4while_lstm_cell_518_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_518/BiasAdd/ReadVariableOp*while/lstm_cell_518/BiasAdd/ReadVariableOp2V
)while/lstm_cell_518/MatMul/ReadVariableOp)while/lstm_cell_518/MatMul/ReadVariableOp2Z
+while/lstm_cell_518/MatMul_1/ReadVariableOp+while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3137614
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3137614___redundant_placeholder05
1while_while_cond_3137614___redundant_placeholder15
1while_while_cond_3137614___redundant_placeholder25
1while_while_cond_3137614___redundant_placeholder3
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
while_cond_3133399
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3133399___redundant_placeholder05
1while_while_cond_3133399___redundant_placeholder15
1while_while_cond_3133399___redundant_placeholder25
1while_while_cond_3133399___redundant_placeholder3
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
Уц
ќ
#__inference__traced_restore_3138571
file_prefix2
 assignvariableop_dense_78_kernel:
.
 assignvariableop_1_dense_78_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_234_lstm_cell_234_kernel:	љM
:assignvariableop_8_lstm_234_lstm_cell_234_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_234_lstm_cell_234_bias:	љD
1assignvariableop_10_lstm_235_lstm_cell_235_kernel:	d╚N
;assignvariableop_11_lstm_235_lstm_cell_235_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_235_lstm_cell_235_bias:	╚C
1assignvariableop_13_lstm_236_lstm_cell_236_kernel:2(M
;assignvariableop_14_lstm_236_lstm_cell_236_recurrent_kernel:
(=
/assignvariableop_15_lstm_236_lstm_cell_236_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: <
*assignvariableop_18_adam_dense_78_kernel_m:
6
(assignvariableop_19_adam_dense_78_bias_m:K
8assignvariableop_20_adam_lstm_234_lstm_cell_234_kernel_m:	љU
Bassignvariableop_21_adam_lstm_234_lstm_cell_234_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_234_lstm_cell_234_bias_m:	љK
8assignvariableop_23_adam_lstm_235_lstm_cell_235_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_235_lstm_cell_235_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_235_lstm_cell_235_bias_m:	╚J
8assignvariableop_26_adam_lstm_236_lstm_cell_236_kernel_m:2(T
Bassignvariableop_27_adam_lstm_236_lstm_cell_236_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_236_lstm_cell_236_bias_m:(<
*assignvariableop_29_adam_dense_78_kernel_v:
6
(assignvariableop_30_adam_dense_78_bias_v:K
8assignvariableop_31_adam_lstm_234_lstm_cell_234_kernel_v:	љU
Bassignvariableop_32_adam_lstm_234_lstm_cell_234_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_234_lstm_cell_234_bias_v:	љK
8assignvariableop_34_adam_lstm_235_lstm_cell_235_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_235_lstm_cell_235_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_235_lstm_cell_235_bias_v:	╚J
8assignvariableop_37_adam_lstm_236_lstm_cell_236_kernel_v:2(T
Bassignvariableop_38_adam_lstm_236_lstm_cell_236_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_236_lstm_cell_236_bias_v:(
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
AssignVariableOpAssignVariableOp assignvariableop_dense_78_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_78_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_234_lstm_cell_234_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_234_lstm_cell_234_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_234_lstm_cell_234_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_235_lstm_cell_235_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_235_lstm_cell_235_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_235_lstm_cell_235_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_236_lstm_cell_236_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_236_lstm_cell_236_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_236_lstm_cell_236_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_78_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_78_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_234_lstm_cell_234_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_234_lstm_cell_234_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_234_lstm_cell_234_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_235_lstm_cell_235_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_235_lstm_cell_235_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_235_lstm_cell_235_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_236_lstm_cell_236_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_236_lstm_cell_236_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_236_lstm_cell_236_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Џ
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_78_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_78_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_234_lstm_cell_234_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_234_lstm_cell_234_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_234_lstm_cell_234_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_235_lstm_cell_235_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_235_lstm_cell_235_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_235_lstm_cell_235_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_236_lstm_cell_236_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_236_lstm_cell_236_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_236_lstm_cell_236_bias_vIdentity_39:output:0"/device:CPU:0*
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
while_body_3137142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_517_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_517/BiasAdd/ReadVariableOpб)while/lstm_cell_517/MatMul/ReadVariableOpб+while/lstm_cell_517/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_517/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_517/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_517/addAddV2$while/lstm_cell_517/MatMul:product:0&while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_517/BiasAddBiasAddwhile/lstm_cell_517/add:z:02while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_517/splitSplit,while/lstm_cell_517/split/split_dim:output:0$while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_517/SigmoidSigmoid"while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_1Sigmoid"while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_517/mulMul!while/lstm_cell_517/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_517/ReluRelu"while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_517/mul_1Mulwhile/lstm_cell_517/Sigmoid:y:0&while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_517/add_1AddV2while/lstm_cell_517/mul:z:0while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_2Sigmoid"while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_517/Relu_1Reluwhile/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_517/mul_2Mul!while/lstm_cell_517/Sigmoid_2:y:0(while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_517/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_517/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_517/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_517/BiasAdd/ReadVariableOp*^while/lstm_cell_517/MatMul/ReadVariableOp,^while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_517_biasadd_readvariableop_resource5while_lstm_cell_517_biasadd_readvariableop_resource_0"n
4while_lstm_cell_517_matmul_1_readvariableop_resource6while_lstm_cell_517_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_517_matmul_readvariableop_resource4while_lstm_cell_517_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_517/BiasAdd/ReadVariableOp*while/lstm_cell_517/BiasAdd/ReadVariableOp2V
)while/lstm_cell_517/MatMul/ReadVariableOp)while/lstm_cell_517/MatMul/ReadVariableOp2Z
+while/lstm_cell_517/MatMul_1/ReadVariableOp+while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
к
э
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135082

inputs#
lstm_234_3135055:	љ#
lstm_234_3135057:	dљ
lstm_234_3135059:	љ#
lstm_235_3135062:	d╚#
lstm_235_3135064:	2╚
lstm_235_3135066:	╚"
lstm_236_3135069:2("
lstm_236_3135071:
(
lstm_236_3135073:("
dense_78_3135076:

dense_78_3135078:
identityѕб dense_78/StatefulPartitionedCallб lstm_234/StatefulPartitionedCallб lstm_235/StatefulPartitionedCallб lstm_236/StatefulPartitionedCallІ
 lstm_234/StatefulPartitionedCallStatefulPartitionedCallinputslstm_234_3135055lstm_234_3135057lstm_234_3135059*
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3135014«
 lstm_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_234/StatefulPartitionedCall:output:0lstm_235_3135062lstm_235_3135064lstm_235_3135066*
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134849ф
 lstm_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_235/StatefulPartitionedCall:output:0lstm_236_3135069lstm_236_3135071lstm_236_3135073*
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134684ќ
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)lstm_236/StatefulPartitionedCall:output:0dense_78_3135076dense_78_3135078*
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
E__inference_dense_78_layer_call_and_return_conditional_losses_3134486x
IdentityIdentity)dense_78/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_78/StatefulPartitionedCall!^lstm_234/StatefulPartitionedCall!^lstm_235/StatefulPartitionedCall!^lstm_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 lstm_234/StatefulPartitionedCall lstm_234/StatefulPartitionedCall2D
 lstm_235/StatefulPartitionedCall lstm_235/StatefulPartitionedCall2D
 lstm_236/StatefulPartitionedCall lstm_236/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_3134383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3134383___redundant_placeholder05
1while_while_cond_3134383___redundant_placeholder15
1while_while_cond_3134383___redundant_placeholder25
1while_while_cond_3134383___redundant_placeholder3
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
З

Б
/__inference_sequential_78_layer_call_fn_3135134
lstm_234_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_234_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135082o
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
_user_specified_namelstm_234_input
Ѓ
и
*__inference_lstm_234_layer_call_fn_3136170

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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3134168s
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
ии
н
"__inference__wrapped_model_3132969
lstm_234_inputV
Csequential_78_lstm_234_lstm_cell_516_matmul_readvariableop_resource:	љX
Esequential_78_lstm_234_lstm_cell_516_matmul_1_readvariableop_resource:	dљS
Dsequential_78_lstm_234_lstm_cell_516_biasadd_readvariableop_resource:	љV
Csequential_78_lstm_235_lstm_cell_517_matmul_readvariableop_resource:	d╚X
Esequential_78_lstm_235_lstm_cell_517_matmul_1_readvariableop_resource:	2╚S
Dsequential_78_lstm_235_lstm_cell_517_biasadd_readvariableop_resource:	╚U
Csequential_78_lstm_236_lstm_cell_518_matmul_readvariableop_resource:2(W
Esequential_78_lstm_236_lstm_cell_518_matmul_1_readvariableop_resource:
(R
Dsequential_78_lstm_236_lstm_cell_518_biasadd_readvariableop_resource:(G
5sequential_78_dense_78_matmul_readvariableop_resource:
D
6sequential_78_dense_78_biasadd_readvariableop_resource:
identityѕб-sequential_78/dense_78/BiasAdd/ReadVariableOpб,sequential_78/dense_78/MatMul/ReadVariableOpб;sequential_78/lstm_234/lstm_cell_516/BiasAdd/ReadVariableOpб:sequential_78/lstm_234/lstm_cell_516/MatMul/ReadVariableOpб<sequential_78/lstm_234/lstm_cell_516/MatMul_1/ReadVariableOpбsequential_78/lstm_234/whileб;sequential_78/lstm_235/lstm_cell_517/BiasAdd/ReadVariableOpб:sequential_78/lstm_235/lstm_cell_517/MatMul/ReadVariableOpб<sequential_78/lstm_235/lstm_cell_517/MatMul_1/ReadVariableOpбsequential_78/lstm_235/whileб;sequential_78/lstm_236/lstm_cell_518/BiasAdd/ReadVariableOpб:sequential_78/lstm_236/lstm_cell_518/MatMul/ReadVariableOpб<sequential_78/lstm_236/lstm_cell_518/MatMul_1/ReadVariableOpбsequential_78/lstm_236/whileZ
sequential_78/lstm_234/ShapeShapelstm_234_input*
T0*
_output_shapes
:t
*sequential_78/lstm_234/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_78/lstm_234/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_78/lstm_234/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_78/lstm_234/strided_sliceStridedSlice%sequential_78/lstm_234/Shape:output:03sequential_78/lstm_234/strided_slice/stack:output:05sequential_78/lstm_234/strided_slice/stack_1:output:05sequential_78/lstm_234/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_78/lstm_234/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dИ
#sequential_78/lstm_234/zeros/packedPack-sequential_78/lstm_234/strided_slice:output:0.sequential_78/lstm_234/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_78/lstm_234/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_78/lstm_234/zerosFill,sequential_78/lstm_234/zeros/packed:output:0+sequential_78/lstm_234/zeros/Const:output:0*
T0*'
_output_shapes
:         di
'sequential_78/lstm_234/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╝
%sequential_78/lstm_234/zeros_1/packedPack-sequential_78/lstm_234/strided_slice:output:00sequential_78/lstm_234/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_78/lstm_234/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_78/lstm_234/zeros_1Fill.sequential_78/lstm_234/zeros_1/packed:output:0-sequential_78/lstm_234/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dz
%sequential_78/lstm_234/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Б
 sequential_78/lstm_234/transpose	Transposelstm_234_input.sequential_78/lstm_234/transpose/perm:output:0*
T0*+
_output_shapes
:         r
sequential_78/lstm_234/Shape_1Shape$sequential_78/lstm_234/transpose:y:0*
T0*
_output_shapes
:v
,sequential_78/lstm_234/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_234/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_78/lstm_234/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_78/lstm_234/strided_slice_1StridedSlice'sequential_78/lstm_234/Shape_1:output:05sequential_78/lstm_234/strided_slice_1/stack:output:07sequential_78/lstm_234/strided_slice_1/stack_1:output:07sequential_78/lstm_234/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_78/lstm_234/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_78/lstm_234/TensorArrayV2TensorListReserve;sequential_78/lstm_234/TensorArrayV2/element_shape:output:0/sequential_78/lstm_234/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_78/lstm_234/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ц
>sequential_78/lstm_234/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_78/lstm_234/transpose:y:0Usequential_78/lstm_234/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_78/lstm_234/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_234/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_78/lstm_234/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_78/lstm_234/strided_slice_2StridedSlice$sequential_78/lstm_234/transpose:y:05sequential_78/lstm_234/strided_slice_2/stack:output:07sequential_78/lstm_234/strided_slice_2/stack_1:output:07sequential_78/lstm_234/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┐
:sequential_78/lstm_234/lstm_cell_516/MatMul/ReadVariableOpReadVariableOpCsequential_78_lstm_234_lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0П
+sequential_78/lstm_234/lstm_cell_516/MatMulMatMul/sequential_78/lstm_234/strided_slice_2:output:0Bsequential_78/lstm_234/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ├
<sequential_78/lstm_234/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOpEsequential_78_lstm_234_lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0О
-sequential_78/lstm_234/lstm_cell_516/MatMul_1MatMul%sequential_78/lstm_234/zeros:output:0Dsequential_78/lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љн
(sequential_78/lstm_234/lstm_cell_516/addAddV25sequential_78/lstm_234/lstm_cell_516/MatMul:product:07sequential_78/lstm_234/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љй
;sequential_78/lstm_234/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOpDsequential_78_lstm_234_lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0П
,sequential_78/lstm_234/lstm_cell_516/BiasAddBiasAdd,sequential_78/lstm_234/lstm_cell_516/add:z:0Csequential_78/lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љv
4sequential_78/lstm_234/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_78/lstm_234/lstm_cell_516/splitSplit=sequential_78/lstm_234/lstm_cell_516/split/split_dim:output:05sequential_78/lstm_234/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitъ
,sequential_78/lstm_234/lstm_cell_516/SigmoidSigmoid3sequential_78/lstm_234/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dа
.sequential_78/lstm_234/lstm_cell_516/Sigmoid_1Sigmoid3sequential_78/lstm_234/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dЙ
(sequential_78/lstm_234/lstm_cell_516/mulMul2sequential_78/lstm_234/lstm_cell_516/Sigmoid_1:y:0'sequential_78/lstm_234/zeros_1:output:0*
T0*'
_output_shapes
:         dў
)sequential_78/lstm_234/lstm_cell_516/ReluRelu3sequential_78/lstm_234/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         d╬
*sequential_78/lstm_234/lstm_cell_516/mul_1Mul0sequential_78/lstm_234/lstm_cell_516/Sigmoid:y:07sequential_78/lstm_234/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         d├
*sequential_78/lstm_234/lstm_cell_516/add_1AddV2,sequential_78/lstm_234/lstm_cell_516/mul:z:0.sequential_78/lstm_234/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dа
.sequential_78/lstm_234/lstm_cell_516/Sigmoid_2Sigmoid3sequential_78/lstm_234/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dЋ
+sequential_78/lstm_234/lstm_cell_516/Relu_1Relu.sequential_78/lstm_234/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dм
*sequential_78/lstm_234/lstm_cell_516/mul_2Mul2sequential_78/lstm_234/lstm_cell_516/Sigmoid_2:y:09sequential_78/lstm_234/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dЁ
4sequential_78/lstm_234/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   §
&sequential_78/lstm_234/TensorArrayV2_1TensorListReserve=sequential_78/lstm_234/TensorArrayV2_1/element_shape:output:0/sequential_78/lstm_234/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_78/lstm_234/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_78/lstm_234/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_78/lstm_234/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_78/lstm_234/whileWhile2sequential_78/lstm_234/while/loop_counter:output:08sequential_78/lstm_234/while/maximum_iterations:output:0$sequential_78/lstm_234/time:output:0/sequential_78/lstm_234/TensorArrayV2_1:handle:0%sequential_78/lstm_234/zeros:output:0'sequential_78/lstm_234/zeros_1:output:0/sequential_78/lstm_234/strided_slice_1:output:0Nsequential_78/lstm_234/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_78_lstm_234_lstm_cell_516_matmul_readvariableop_resourceEsequential_78_lstm_234_lstm_cell_516_matmul_1_readvariableop_resourceDsequential_78_lstm_234_lstm_cell_516_biasadd_readvariableop_resource*
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
)sequential_78_lstm_234_while_body_3132601*5
cond-R+
)sequential_78_lstm_234_while_cond_3132600*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations ў
Gsequential_78/lstm_234/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Є
9sequential_78/lstm_234/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_78/lstm_234/while:output:3Psequential_78/lstm_234/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0
,sequential_78/lstm_234/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_78/lstm_234/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_234/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_78/lstm_234/strided_slice_3StridedSliceBsequential_78/lstm_234/TensorArrayV2Stack/TensorListStack:tensor:05sequential_78/lstm_234/strided_slice_3/stack:output:07sequential_78/lstm_234/strided_slice_3/stack_1:output:07sequential_78/lstm_234/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask|
'sequential_78/lstm_234/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_78/lstm_234/transpose_1	TransposeBsequential_78/lstm_234/TensorArrayV2Stack/TensorListStack:tensor:00sequential_78/lstm_234/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_78/lstm_234/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_78/lstm_235/ShapeShape&sequential_78/lstm_234/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_78/lstm_235/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_78/lstm_235/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_78/lstm_235/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_78/lstm_235/strided_sliceStridedSlice%sequential_78/lstm_235/Shape:output:03sequential_78/lstm_235/strided_slice/stack:output:05sequential_78/lstm_235/strided_slice/stack_1:output:05sequential_78/lstm_235/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_78/lstm_235/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2И
#sequential_78/lstm_235/zeros/packedPack-sequential_78/lstm_235/strided_slice:output:0.sequential_78/lstm_235/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_78/lstm_235/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_78/lstm_235/zerosFill,sequential_78/lstm_235/zeros/packed:output:0+sequential_78/lstm_235/zeros/Const:output:0*
T0*'
_output_shapes
:         2i
'sequential_78/lstm_235/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╝
%sequential_78/lstm_235/zeros_1/packedPack-sequential_78/lstm_235/strided_slice:output:00sequential_78/lstm_235/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_78/lstm_235/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_78/lstm_235/zeros_1Fill.sequential_78/lstm_235/zeros_1/packed:output:0-sequential_78/lstm_235/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2z
%sequential_78/lstm_235/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_78/lstm_235/transpose	Transpose&sequential_78/lstm_234/transpose_1:y:0.sequential_78/lstm_235/transpose/perm:output:0*
T0*+
_output_shapes
:         dr
sequential_78/lstm_235/Shape_1Shape$sequential_78/lstm_235/transpose:y:0*
T0*
_output_shapes
:v
,sequential_78/lstm_235/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_235/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_78/lstm_235/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_78/lstm_235/strided_slice_1StridedSlice'sequential_78/lstm_235/Shape_1:output:05sequential_78/lstm_235/strided_slice_1/stack:output:07sequential_78/lstm_235/strided_slice_1/stack_1:output:07sequential_78/lstm_235/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_78/lstm_235/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_78/lstm_235/TensorArrayV2TensorListReserve;sequential_78/lstm_235/TensorArrayV2/element_shape:output:0/sequential_78/lstm_235/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_78/lstm_235/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ц
>sequential_78/lstm_235/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_78/lstm_235/transpose:y:0Usequential_78/lstm_235/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_78/lstm_235/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_235/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_78/lstm_235/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_78/lstm_235/strided_slice_2StridedSlice$sequential_78/lstm_235/transpose:y:05sequential_78/lstm_235/strided_slice_2/stack:output:07sequential_78/lstm_235/strided_slice_2/stack_1:output:07sequential_78/lstm_235/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┐
:sequential_78/lstm_235/lstm_cell_517/MatMul/ReadVariableOpReadVariableOpCsequential_78_lstm_235_lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0П
+sequential_78/lstm_235/lstm_cell_517/MatMulMatMul/sequential_78/lstm_235/strided_slice_2:output:0Bsequential_78/lstm_235/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚├
<sequential_78/lstm_235/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOpEsequential_78_lstm_235_lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0О
-sequential_78/lstm_235/lstm_cell_517/MatMul_1MatMul%sequential_78/lstm_235/zeros:output:0Dsequential_78/lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚н
(sequential_78/lstm_235/lstm_cell_517/addAddV25sequential_78/lstm_235/lstm_cell_517/MatMul:product:07sequential_78/lstm_235/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚й
;sequential_78/lstm_235/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOpDsequential_78_lstm_235_lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0П
,sequential_78/lstm_235/lstm_cell_517/BiasAddBiasAdd,sequential_78/lstm_235/lstm_cell_517/add:z:0Csequential_78/lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚v
4sequential_78/lstm_235/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_78/lstm_235/lstm_cell_517/splitSplit=sequential_78/lstm_235/lstm_cell_517/split/split_dim:output:05sequential_78/lstm_235/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitъ
,sequential_78/lstm_235/lstm_cell_517/SigmoidSigmoid3sequential_78/lstm_235/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2а
.sequential_78/lstm_235/lstm_cell_517/Sigmoid_1Sigmoid3sequential_78/lstm_235/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2Й
(sequential_78/lstm_235/lstm_cell_517/mulMul2sequential_78/lstm_235/lstm_cell_517/Sigmoid_1:y:0'sequential_78/lstm_235/zeros_1:output:0*
T0*'
_output_shapes
:         2ў
)sequential_78/lstm_235/lstm_cell_517/ReluRelu3sequential_78/lstm_235/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2╬
*sequential_78/lstm_235/lstm_cell_517/mul_1Mul0sequential_78/lstm_235/lstm_cell_517/Sigmoid:y:07sequential_78/lstm_235/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2├
*sequential_78/lstm_235/lstm_cell_517/add_1AddV2,sequential_78/lstm_235/lstm_cell_517/mul:z:0.sequential_78/lstm_235/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2а
.sequential_78/lstm_235/lstm_cell_517/Sigmoid_2Sigmoid3sequential_78/lstm_235/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2Ћ
+sequential_78/lstm_235/lstm_cell_517/Relu_1Relu.sequential_78/lstm_235/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2м
*sequential_78/lstm_235/lstm_cell_517/mul_2Mul2sequential_78/lstm_235/lstm_cell_517/Sigmoid_2:y:09sequential_78/lstm_235/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ё
4sequential_78/lstm_235/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   §
&sequential_78/lstm_235/TensorArrayV2_1TensorListReserve=sequential_78/lstm_235/TensorArrayV2_1/element_shape:output:0/sequential_78/lstm_235/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_78/lstm_235/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_78/lstm_235/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_78/lstm_235/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_78/lstm_235/whileWhile2sequential_78/lstm_235/while/loop_counter:output:08sequential_78/lstm_235/while/maximum_iterations:output:0$sequential_78/lstm_235/time:output:0/sequential_78/lstm_235/TensorArrayV2_1:handle:0%sequential_78/lstm_235/zeros:output:0'sequential_78/lstm_235/zeros_1:output:0/sequential_78/lstm_235/strided_slice_1:output:0Nsequential_78/lstm_235/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_78_lstm_235_lstm_cell_517_matmul_readvariableop_resourceEsequential_78_lstm_235_lstm_cell_517_matmul_1_readvariableop_resourceDsequential_78_lstm_235_lstm_cell_517_biasadd_readvariableop_resource*
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
)sequential_78_lstm_235_while_body_3132740*5
cond-R+
)sequential_78_lstm_235_while_cond_3132739*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations ў
Gsequential_78/lstm_235/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Є
9sequential_78/lstm_235/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_78/lstm_235/while:output:3Psequential_78/lstm_235/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0
,sequential_78/lstm_235/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_78/lstm_235/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_235/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_78/lstm_235/strided_slice_3StridedSliceBsequential_78/lstm_235/TensorArrayV2Stack/TensorListStack:tensor:05sequential_78/lstm_235/strided_slice_3/stack:output:07sequential_78/lstm_235/strided_slice_3/stack_1:output:07sequential_78/lstm_235/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask|
'sequential_78/lstm_235/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_78/lstm_235/transpose_1	TransposeBsequential_78/lstm_235/TensorArrayV2Stack/TensorListStack:tensor:00sequential_78/lstm_235/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_78/lstm_235/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
sequential_78/lstm_236/ShapeShape&sequential_78/lstm_235/transpose_1:y:0*
T0*
_output_shapes
:t
*sequential_78/lstm_236/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_78/lstm_236/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_78/lstm_236/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:─
$sequential_78/lstm_236/strided_sliceStridedSlice%sequential_78/lstm_236/Shape:output:03sequential_78/lstm_236/strided_slice/stack:output:05sequential_78/lstm_236/strided_slice/stack_1:output:05sequential_78/lstm_236/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential_78/lstm_236/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
И
#sequential_78/lstm_236/zeros/packedPack-sequential_78/lstm_236/strided_slice:output:0.sequential_78/lstm_236/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_78/lstm_236/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
sequential_78/lstm_236/zerosFill,sequential_78/lstm_236/zeros/packed:output:0+sequential_78/lstm_236/zeros/Const:output:0*
T0*'
_output_shapes
:         
i
'sequential_78/lstm_236/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╝
%sequential_78/lstm_236/zeros_1/packedPack-sequential_78/lstm_236/strided_slice:output:00sequential_78/lstm_236/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:i
$sequential_78/lstm_236/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    и
sequential_78/lstm_236/zeros_1Fill.sequential_78/lstm_236/zeros_1/packed:output:0-sequential_78/lstm_236/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
z
%sequential_78/lstm_236/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╗
 sequential_78/lstm_236/transpose	Transpose&sequential_78/lstm_235/transpose_1:y:0.sequential_78/lstm_236/transpose/perm:output:0*
T0*+
_output_shapes
:         2r
sequential_78/lstm_236/Shape_1Shape$sequential_78/lstm_236/transpose:y:0*
T0*
_output_shapes
:v
,sequential_78/lstm_236/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_236/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_78/lstm_236/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
&sequential_78/lstm_236/strided_slice_1StridedSlice'sequential_78/lstm_236/Shape_1:output:05sequential_78/lstm_236/strided_slice_1/stack:output:07sequential_78/lstm_236/strided_slice_1/stack_1:output:07sequential_78/lstm_236/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
2sequential_78/lstm_236/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         щ
$sequential_78/lstm_236/TensorArrayV2TensorListReserve;sequential_78/lstm_236/TensorArrayV2/element_shape:output:0/sequential_78/lstm_236/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЮ
Lsequential_78/lstm_236/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ц
>sequential_78/lstm_236/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_78/lstm_236/transpose:y:0Usequential_78/lstm_236/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмv
,sequential_78/lstm_236/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_236/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_78/lstm_236/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:▄
&sequential_78/lstm_236/strided_slice_2StridedSlice$sequential_78/lstm_236/transpose:y:05sequential_78/lstm_236/strided_slice_2/stack:output:07sequential_78/lstm_236/strided_slice_2/stack_1:output:07sequential_78/lstm_236/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskЙ
:sequential_78/lstm_236/lstm_cell_518/MatMul/ReadVariableOpReadVariableOpCsequential_78_lstm_236_lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▄
+sequential_78/lstm_236/lstm_cell_518/MatMulMatMul/sequential_78/lstm_236/strided_slice_2:output:0Bsequential_78/lstm_236/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┬
<sequential_78/lstm_236/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOpEsequential_78_lstm_236_lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0о
-sequential_78/lstm_236/lstm_cell_518/MatMul_1MatMul%sequential_78/lstm_236/zeros:output:0Dsequential_78/lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (М
(sequential_78/lstm_236/lstm_cell_518/addAddV25sequential_78/lstm_236/lstm_cell_518/MatMul:product:07sequential_78/lstm_236/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (╝
;sequential_78/lstm_236/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOpDsequential_78_lstm_236_lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▄
,sequential_78/lstm_236/lstm_cell_518/BiasAddBiasAdd,sequential_78/lstm_236/lstm_cell_518/add:z:0Csequential_78/lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (v
4sequential_78/lstm_236/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
*sequential_78/lstm_236/lstm_cell_518/splitSplit=sequential_78/lstm_236/lstm_cell_518/split/split_dim:output:05sequential_78/lstm_236/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitъ
,sequential_78/lstm_236/lstm_cell_518/SigmoidSigmoid3sequential_78/lstm_236/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
а
.sequential_78/lstm_236/lstm_cell_518/Sigmoid_1Sigmoid3sequential_78/lstm_236/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
Й
(sequential_78/lstm_236/lstm_cell_518/mulMul2sequential_78/lstm_236/lstm_cell_518/Sigmoid_1:y:0'sequential_78/lstm_236/zeros_1:output:0*
T0*'
_output_shapes
:         
ў
)sequential_78/lstm_236/lstm_cell_518/ReluRelu3sequential_78/lstm_236/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
╬
*sequential_78/lstm_236/lstm_cell_518/mul_1Mul0sequential_78/lstm_236/lstm_cell_518/Sigmoid:y:07sequential_78/lstm_236/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
├
*sequential_78/lstm_236/lstm_cell_518/add_1AddV2,sequential_78/lstm_236/lstm_cell_518/mul:z:0.sequential_78/lstm_236/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
а
.sequential_78/lstm_236/lstm_cell_518/Sigmoid_2Sigmoid3sequential_78/lstm_236/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
Ћ
+sequential_78/lstm_236/lstm_cell_518/Relu_1Relu.sequential_78/lstm_236/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
м
*sequential_78/lstm_236/lstm_cell_518/mul_2Mul2sequential_78/lstm_236/lstm_cell_518/Sigmoid_2:y:09sequential_78/lstm_236/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ё
4sequential_78/lstm_236/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   §
&sequential_78/lstm_236/TensorArrayV2_1TensorListReserve=sequential_78/lstm_236/TensorArrayV2_1/element_shape:output:0/sequential_78/lstm_236/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм]
sequential_78/lstm_236/timeConst*
_output_shapes
: *
dtype0*
value	B : z
/sequential_78/lstm_236/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         k
)sequential_78/lstm_236/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╔
sequential_78/lstm_236/whileWhile2sequential_78/lstm_236/while/loop_counter:output:08sequential_78/lstm_236/while/maximum_iterations:output:0$sequential_78/lstm_236/time:output:0/sequential_78/lstm_236/TensorArrayV2_1:handle:0%sequential_78/lstm_236/zeros:output:0'sequential_78/lstm_236/zeros_1:output:0/sequential_78/lstm_236/strided_slice_1:output:0Nsequential_78/lstm_236/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csequential_78_lstm_236_lstm_cell_518_matmul_readvariableop_resourceEsequential_78_lstm_236_lstm_cell_518_matmul_1_readvariableop_resourceDsequential_78_lstm_236_lstm_cell_518_biasadd_readvariableop_resource*
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
)sequential_78_lstm_236_while_body_3132879*5
cond-R+
)sequential_78_lstm_236_while_cond_3132878*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations ў
Gsequential_78/lstm_236/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   Є
9sequential_78/lstm_236/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_78/lstm_236/while:output:3Psequential_78/lstm_236/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0
,sequential_78/lstm_236/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         x
.sequential_78/lstm_236/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: x
.sequential_78/lstm_236/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Щ
&sequential_78/lstm_236/strided_slice_3StridedSliceBsequential_78/lstm_236/TensorArrayV2Stack/TensorListStack:tensor:05sequential_78/lstm_236/strided_slice_3/stack:output:07sequential_78/lstm_236/strided_slice_3/stack_1:output:07sequential_78/lstm_236/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask|
'sequential_78/lstm_236/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          █
"sequential_78/lstm_236/transpose_1	TransposeBsequential_78/lstm_236/TensorArrayV2Stack/TensorListStack:tensor:00sequential_78/lstm_236/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
r
sequential_78/lstm_236/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_78/dense_78/MatMul/ReadVariableOpReadVariableOp5sequential_78_dense_78_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0└
sequential_78/dense_78/MatMulMatMul/sequential_78/lstm_236/strided_slice_3:output:04sequential_78/dense_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_78/dense_78/BiasAdd/ReadVariableOpReadVariableOp6sequential_78_dense_78_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_78/dense_78/BiasAddBiasAdd'sequential_78/dense_78/MatMul:product:05sequential_78/dense_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
IdentityIdentity'sequential_78/dense_78/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp.^sequential_78/dense_78/BiasAdd/ReadVariableOp-^sequential_78/dense_78/MatMul/ReadVariableOp<^sequential_78/lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp;^sequential_78/lstm_234/lstm_cell_516/MatMul/ReadVariableOp=^sequential_78/lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp^sequential_78/lstm_234/while<^sequential_78/lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp;^sequential_78/lstm_235/lstm_cell_517/MatMul/ReadVariableOp=^sequential_78/lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp^sequential_78/lstm_235/while<^sequential_78/lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp;^sequential_78/lstm_236/lstm_cell_518/MatMul/ReadVariableOp=^sequential_78/lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp^sequential_78/lstm_236/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2^
-sequential_78/dense_78/BiasAdd/ReadVariableOp-sequential_78/dense_78/BiasAdd/ReadVariableOp2\
,sequential_78/dense_78/MatMul/ReadVariableOp,sequential_78/dense_78/MatMul/ReadVariableOp2z
;sequential_78/lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp;sequential_78/lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp2x
:sequential_78/lstm_234/lstm_cell_516/MatMul/ReadVariableOp:sequential_78/lstm_234/lstm_cell_516/MatMul/ReadVariableOp2|
<sequential_78/lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp<sequential_78/lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp2<
sequential_78/lstm_234/whilesequential_78/lstm_234/while2z
;sequential_78/lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp;sequential_78/lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp2x
:sequential_78/lstm_235/lstm_cell_517/MatMul/ReadVariableOp:sequential_78/lstm_235/lstm_cell_517/MatMul/ReadVariableOp2|
<sequential_78/lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp<sequential_78/lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp2<
sequential_78/lstm_235/whilesequential_78/lstm_235/while2z
;sequential_78/lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp;sequential_78/lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp2x
:sequential_78/lstm_236/lstm_cell_518/MatMul/ReadVariableOp:sequential_78/lstm_236/lstm_cell_518/MatMul/ReadVariableOp2|
<sequential_78/lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp<sequential_78/lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp2<
sequential_78/lstm_236/whilesequential_78/lstm_236/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_234_input
─8
н
while_body_3134384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_518_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_518_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_518_matmul_readvariableop_resource:2(F
4while_lstm_cell_518_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_518/BiasAdd/ReadVariableOpб)while/lstm_cell_518/MatMul/ReadVariableOpб+while/lstm_cell_518/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_518/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_518/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_518/addAddV2$while/lstm_cell_518/MatMul:product:0&while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_518/BiasAddBiasAddwhile/lstm_cell_518/add:z:02while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_518/splitSplit,while/lstm_cell_518/split/split_dim:output:0$while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_518/SigmoidSigmoid"while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_1Sigmoid"while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_518/mulMul!while/lstm_cell_518/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_518/ReluRelu"while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_518/mul_1Mulwhile/lstm_cell_518/Sigmoid:y:0&while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_518/add_1AddV2while/lstm_cell_518/mul:z:0while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_2Sigmoid"while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_518/Relu_1Reluwhile/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_518/mul_2Mul!while/lstm_cell_518/Sigmoid_2:y:0(while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_518/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_518/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_518/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_518/BiasAdd/ReadVariableOp*^while/lstm_cell_518/MatMul/ReadVariableOp,^while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_518_biasadd_readvariableop_resource5while_lstm_cell_518_biasadd_readvariableop_resource_0"n
4while_lstm_cell_518_matmul_1_readvariableop_resource6while_lstm_cell_518_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_518_matmul_readvariableop_resource4while_lstm_cell_518_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_518/BiasAdd/ReadVariableOp*while/lstm_cell_518/BiasAdd/ReadVariableOp2V
)while/lstm_cell_518/MatMul/ReadVariableOp)while/lstm_cell_518/MatMul/ReadVariableOp2Z
+while/lstm_cell_518/MatMul_1/ReadVariableOp+while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_235_layer_call_fn_3136786

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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134318s
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
Л8
┌
while_body_3136240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_516_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_516_matmul_readvariableop_resource:	љG
4while_lstm_cell_516_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_516/BiasAdd/ReadVariableOpб)while/lstm_cell_516/MatMul/ReadVariableOpб+while/lstm_cell_516/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_516/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_516/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_516/addAddV2$while/lstm_cell_516/MatMul:product:0&while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_516/BiasAddBiasAddwhile/lstm_cell_516/add:z:02while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_516/splitSplit,while/lstm_cell_516/split/split_dim:output:0$while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_516/SigmoidSigmoid"while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_1Sigmoid"while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_516/mulMul!while/lstm_cell_516/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_516/ReluRelu"while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_516/mul_1Mulwhile/lstm_cell_516/Sigmoid:y:0&while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_516/add_1AddV2while/lstm_cell_516/mul:z:0while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_2Sigmoid"while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_516/Relu_1Reluwhile/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_516/mul_2Mul!while/lstm_cell_516/Sigmoid_2:y:0(while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_516/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_516/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_516/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_516/BiasAdd/ReadVariableOp*^while/lstm_cell_516/MatMul/ReadVariableOp,^while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_516_biasadd_readvariableop_resource5while_lstm_cell_516_biasadd_readvariableop_resource_0"n
4while_lstm_cell_516_matmul_1_readvariableop_resource6while_lstm_cell_516_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_516_matmul_readvariableop_resource4while_lstm_cell_516_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_516/BiasAdd/ReadVariableOp*while/lstm_cell_516/BiasAdd/ReadVariableOp2V
)while/lstm_cell_516/MatMul/ReadVariableOp)while/lstm_cell_516/MatMul/ReadVariableOp2Z
+while/lstm_cell_516/MatMul_1/ReadVariableOp+while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3137900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3137900___redundant_placeholder05
1while_while_cond_3137900___redundant_placeholder15
1while_while_cond_3137900___redundant_placeholder25
1while_while_cond_3137900___redundant_placeholder3
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
while_cond_3133049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3133049___redundant_placeholder05
1while_while_cond_3133049___redundant_placeholder15
1while_while_cond_3133049___redundant_placeholder25
1while_while_cond_3133049___redundant_placeholder3
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3138266

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
Ј#
ы
while_body_3133050
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_516_3133074_0:	љ0
while_lstm_cell_516_3133076_0:	dљ,
while_lstm_cell_516_3133078_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_516_3133074:	љ.
while_lstm_cell_516_3133076:	dљ*
while_lstm_cell_516_3133078:	љѕб+while/lstm_cell_516/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_516/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_516_3133074_0while_lstm_cell_516_3133076_0while_lstm_cell_516_3133078_0*
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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133036П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_516/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_516/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_516/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_516/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_516_3133074while_lstm_cell_516_3133074_0"<
while_lstm_cell_516_3133076while_lstm_cell_516_3133076_0"<
while_lstm_cell_516_3133078while_lstm_cell_516_3133078_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_516/StatefulPartitionedCall+while/lstm_cell_516/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
и

Ч
lstm_236_while_cond_3135619.
*lstm_236_while_lstm_236_while_loop_counter4
0lstm_236_while_lstm_236_while_maximum_iterations
lstm_236_while_placeholder 
lstm_236_while_placeholder_1 
lstm_236_while_placeholder_2 
lstm_236_while_placeholder_30
,lstm_236_while_less_lstm_236_strided_slice_1G
Clstm_236_while_lstm_236_while_cond_3135619___redundant_placeholder0G
Clstm_236_while_lstm_236_while_cond_3135619___redundant_placeholder1G
Clstm_236_while_lstm_236_while_cond_3135619___redundant_placeholder2G
Clstm_236_while_lstm_236_while_cond_3135619___redundant_placeholder3
lstm_236_while_identity
є
lstm_236/while/LessLesslstm_236_while_placeholder,lstm_236_while_less_lstm_236_strided_slice_1*
T0*
_output_shapes
: ]
lstm_236/while/IdentityIdentitylstm_236/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_236_while_identity lstm_236/while/Identity:output:0*(
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
»8
ј
E__inference_lstm_235_layer_call_and_return_conditional_losses_3133469

inputs(
lstm_cell_517_3133387:	d╚(
lstm_cell_517_3133389:	2╚$
lstm_cell_517_3133391:	╚
identityѕб%lstm_cell_517/StatefulPartitionedCallбwhile;
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
%lstm_cell_517/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_517_3133387lstm_cell_517_3133389lstm_cell_517_3133391*
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133386n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_517_3133387lstm_cell_517_3133389lstm_cell_517_3133391*
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
while_body_3133400*
condR
while_cond_3133399*K
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
NoOpNoOp&^lstm_cell_517/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_517/StatefulPartitionedCall%lstm_cell_517/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_516_layer_call_fn_3138021

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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133036o
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
З

Б
/__inference_sequential_78_layer_call_fn_3134518
lstm_234_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_234_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3134493o
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
_user_specified_namelstm_234_input
═
Ѓ
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133882

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
№
Э
/__inference_lstm_cell_517_layer_call_fn_3138136

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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133532o
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
оS
и
)sequential_78_lstm_236_while_body_3132879J
Fsequential_78_lstm_236_while_sequential_78_lstm_236_while_loop_counterP
Lsequential_78_lstm_236_while_sequential_78_lstm_236_while_maximum_iterations,
(sequential_78_lstm_236_while_placeholder.
*sequential_78_lstm_236_while_placeholder_1.
*sequential_78_lstm_236_while_placeholder_2.
*sequential_78_lstm_236_while_placeholder_3I
Esequential_78_lstm_236_while_sequential_78_lstm_236_strided_slice_1_0є
Ђsequential_78_lstm_236_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_236_tensorarrayunstack_tensorlistfromtensor_0]
Ksequential_78_lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0:2(_
Msequential_78_lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(Z
Lsequential_78_lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0:()
%sequential_78_lstm_236_while_identity+
'sequential_78_lstm_236_while_identity_1+
'sequential_78_lstm_236_while_identity_2+
'sequential_78_lstm_236_while_identity_3+
'sequential_78_lstm_236_while_identity_4+
'sequential_78_lstm_236_while_identity_5G
Csequential_78_lstm_236_while_sequential_78_lstm_236_strided_slice_1Ѓ
sequential_78_lstm_236_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_236_tensorarrayunstack_tensorlistfromtensor[
Isequential_78_lstm_236_while_lstm_cell_518_matmul_readvariableop_resource:2(]
Ksequential_78_lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource:
(X
Jsequential_78_lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource:(ѕбAsequential_78/lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpб@sequential_78/lstm_236/while/lstm_cell_518/MatMul/ReadVariableOpбBsequential_78/lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOpЪ
Nsequential_78/lstm_236/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   џ
@sequential_78/lstm_236/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_78_lstm_236_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_236_tensorarrayunstack_tensorlistfromtensor_0(sequential_78_lstm_236_while_placeholderWsequential_78/lstm_236/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╠
@sequential_78/lstm_236/while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOpKsequential_78_lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0ђ
1sequential_78/lstm_236/while/lstm_cell_518/MatMulMatMulGsequential_78/lstm_236/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_78/lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (л
Bsequential_78/lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOpMsequential_78_lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0у
3sequential_78/lstm_236/while/lstm_cell_518/MatMul_1MatMul*sequential_78_lstm_236_while_placeholder_2Jsequential_78/lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (т
.sequential_78/lstm_236/while/lstm_cell_518/addAddV2;sequential_78/lstm_236/while/lstm_cell_518/MatMul:product:0=sequential_78/lstm_236/while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (╩
Asequential_78/lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOpLsequential_78_lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Ь
2sequential_78/lstm_236/while/lstm_cell_518/BiasAddBiasAdd2sequential_78/lstm_236/while/lstm_cell_518/add:z:0Isequential_78/lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (|
:sequential_78/lstm_236/while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_78/lstm_236/while/lstm_cell_518/splitSplitCsequential_78/lstm_236/while/lstm_cell_518/split/split_dim:output:0;sequential_78/lstm_236/while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitф
2sequential_78/lstm_236/while/lstm_cell_518/SigmoidSigmoid9sequential_78/lstm_236/while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
г
4sequential_78/lstm_236/while/lstm_cell_518/Sigmoid_1Sigmoid9sequential_78/lstm_236/while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
═
.sequential_78/lstm_236/while/lstm_cell_518/mulMul8sequential_78/lstm_236/while/lstm_cell_518/Sigmoid_1:y:0*sequential_78_lstm_236_while_placeholder_3*
T0*'
_output_shapes
:         
ц
/sequential_78/lstm_236/while/lstm_cell_518/ReluRelu9sequential_78/lstm_236/while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Я
0sequential_78/lstm_236/while/lstm_cell_518/mul_1Mul6sequential_78/lstm_236/while/lstm_cell_518/Sigmoid:y:0=sequential_78/lstm_236/while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
Н
0sequential_78/lstm_236/while/lstm_cell_518/add_1AddV22sequential_78/lstm_236/while/lstm_cell_518/mul:z:04sequential_78/lstm_236/while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
г
4sequential_78/lstm_236/while/lstm_cell_518/Sigmoid_2Sigmoid9sequential_78/lstm_236/while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
А
1sequential_78/lstm_236/while/lstm_cell_518/Relu_1Relu4sequential_78/lstm_236/while/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
С
0sequential_78/lstm_236/while/lstm_cell_518/mul_2Mul8sequential_78/lstm_236/while/lstm_cell_518/Sigmoid_2:y:0?sequential_78/lstm_236/while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
б
Asequential_78/lstm_236/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_78_lstm_236_while_placeholder_1(sequential_78_lstm_236_while_placeholder4sequential_78/lstm_236/while/lstm_cell_518/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_78/lstm_236/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_78/lstm_236/while/addAddV2(sequential_78_lstm_236_while_placeholder+sequential_78/lstm_236/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_78/lstm_236/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_78/lstm_236/while/add_1AddV2Fsequential_78_lstm_236_while_sequential_78_lstm_236_while_loop_counter-sequential_78/lstm_236/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_78/lstm_236/while/IdentityIdentity&sequential_78/lstm_236/while/add_1:z:0"^sequential_78/lstm_236/while/NoOp*
T0*
_output_shapes
: к
'sequential_78/lstm_236/while/Identity_1IdentityLsequential_78_lstm_236_while_sequential_78_lstm_236_while_maximum_iterations"^sequential_78/lstm_236/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_78/lstm_236/while/Identity_2Identity$sequential_78/lstm_236/while/add:z:0"^sequential_78/lstm_236/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_78/lstm_236/while/Identity_3IdentityQsequential_78/lstm_236/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_78/lstm_236/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_78/lstm_236/while/Identity_4Identity4sequential_78/lstm_236/while/lstm_cell_518/mul_2:z:0"^sequential_78/lstm_236/while/NoOp*
T0*'
_output_shapes
:         
┐
'sequential_78/lstm_236/while/Identity_5Identity4sequential_78/lstm_236/while/lstm_cell_518/add_1:z:0"^sequential_78/lstm_236/while/NoOp*
T0*'
_output_shapes
:         
»
!sequential_78/lstm_236/while/NoOpNoOpB^sequential_78/lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpA^sequential_78/lstm_236/while/lstm_cell_518/MatMul/ReadVariableOpC^sequential_78/lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_78_lstm_236_while_identity.sequential_78/lstm_236/while/Identity:output:0"[
'sequential_78_lstm_236_while_identity_10sequential_78/lstm_236/while/Identity_1:output:0"[
'sequential_78_lstm_236_while_identity_20sequential_78/lstm_236/while/Identity_2:output:0"[
'sequential_78_lstm_236_while_identity_30sequential_78/lstm_236/while/Identity_3:output:0"[
'sequential_78_lstm_236_while_identity_40sequential_78/lstm_236/while/Identity_4:output:0"[
'sequential_78_lstm_236_while_identity_50sequential_78/lstm_236/while/Identity_5:output:0"џ
Jsequential_78_lstm_236_while_lstm_cell_518_biasadd_readvariableop_resourceLsequential_78_lstm_236_while_lstm_cell_518_biasadd_readvariableop_resource_0"ю
Ksequential_78_lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resourceMsequential_78_lstm_236_while_lstm_cell_518_matmul_1_readvariableop_resource_0"ў
Isequential_78_lstm_236_while_lstm_cell_518_matmul_readvariableop_resourceKsequential_78_lstm_236_while_lstm_cell_518_matmul_readvariableop_resource_0"ї
Csequential_78_lstm_236_while_sequential_78_lstm_236_strided_slice_1Esequential_78_lstm_236_while_sequential_78_lstm_236_strided_slice_1_0"Ё
sequential_78_lstm_236_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_236_tensorarrayunstack_tensorlistfromtensorЂsequential_78_lstm_236_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_236_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2є
Asequential_78/lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOpAsequential_78/lstm_236/while/lstm_cell_518/BiasAdd/ReadVariableOp2ё
@sequential_78/lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp@sequential_78/lstm_236/while/lstm_cell_518/MatMul/ReadVariableOp2ѕ
Bsequential_78/lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOpBsequential_78/lstm_236/while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Г
╣
*__inference_lstm_235_layer_call_fn_3136764
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3133469|
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
»8
ј
E__inference_lstm_234_layer_call_and_return_conditional_losses_3133119

inputs(
lstm_cell_516_3133037:	љ(
lstm_cell_516_3133039:	dљ$
lstm_cell_516_3133041:	љ
identityѕб%lstm_cell_516/StatefulPartitionedCallбwhile;
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
%lstm_cell_516/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_516_3133037lstm_cell_516_3133039lstm_cell_516_3133041*
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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133036n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_516_3133037lstm_cell_516_3133039lstm_cell_516_3133041*
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
while_body_3133050*
condR
while_cond_3133049*K
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
NoOpNoOp&^lstm_cell_516/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_516/StatefulPartitionedCall%lstm_cell_516/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
║
╚
while_cond_3136239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3136239___redundant_placeholder05
1while_while_cond_3136239___redundant_placeholder15
1while_while_cond_3136239___redundant_placeholder25
1while_while_cond_3136239___redundant_placeholder3
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
Ј#
ы
while_body_3133241
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_516_3133265_0:	љ0
while_lstm_cell_516_3133267_0:	dљ,
while_lstm_cell_516_3133269_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_516_3133265:	љ.
while_lstm_cell_516_3133267:	dљ*
while_lstm_cell_516_3133269:	љѕб+while/lstm_cell_516/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_516/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_516_3133265_0while_lstm_cell_516_3133267_0while_lstm_cell_516_3133269_0*
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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133182П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_516/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_516/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_516/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_516/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_516_3133265while_lstm_cell_516_3133265_0"<
while_lstm_cell_516_3133267while_lstm_cell_516_3133267_0"<
while_lstm_cell_516_3133269while_lstm_cell_516_3133269_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_516/StatefulPartitionedCall+while/lstm_cell_516/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_517_layer_call_fn_3138119

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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133386o
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
РJ
Б
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136753

inputs?
,lstm_cell_516_matmul_readvariableop_resource:	љA
.lstm_cell_516_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_516_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_516/BiasAdd/ReadVariableOpб#lstm_cell_516/MatMul/ReadVariableOpб%lstm_cell_516/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_516/MatMul/ReadVariableOpReadVariableOp,lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_516/MatMulMatMulstrided_slice_2:output:0+lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_516/MatMul_1MatMulzeros:output:0-lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_516/addAddV2lstm_cell_516/MatMul:product:0 lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_516/BiasAddBiasAddlstm_cell_516/add:z:0,lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_516/splitSplit&lstm_cell_516/split/split_dim:output:0lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_516/SigmoidSigmoidlstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_1Sigmoidlstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_516/mulMullstm_cell_516/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_516/ReluRelulstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_516/mul_1Mullstm_cell_516/Sigmoid:y:0 lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_516/add_1AddV2lstm_cell_516/mul:z:0lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_2Sigmoidlstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_516/Relu_1Relulstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_516/mul_2Mullstm_cell_516/Sigmoid_2:y:0"lstm_cell_516/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_516_matmul_readvariableop_resource.lstm_cell_516_matmul_1_readvariableop_resource-lstm_cell_516_biasadd_readvariableop_resource*
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
while_body_3136669*
condR
while_cond_3136668*K
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
NoOpNoOp%^lstm_cell_516/BiasAdd/ReadVariableOp$^lstm_cell_516/MatMul/ReadVariableOp&^lstm_cell_516/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_516/BiasAdd/ReadVariableOp$lstm_cell_516/BiasAdd/ReadVariableOp2J
#lstm_cell_516/MatMul/ReadVariableOp#lstm_cell_516/MatMul/ReadVariableOp2N
%lstm_cell_516/MatMul_1/ReadVariableOp%lstm_cell_516/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
─8
н
while_body_3137615
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_518_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_518_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_518_matmul_readvariableop_resource:2(F
4while_lstm_cell_518_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_518/BiasAdd/ReadVariableOpб)while/lstm_cell_518/MatMul/ReadVariableOpб+while/lstm_cell_518/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_518/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_518/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_518/addAddV2$while/lstm_cell_518/MatMul:product:0&while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_518/BiasAddBiasAddwhile/lstm_cell_518/add:z:02while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_518/splitSplit,while/lstm_cell_518/split/split_dim:output:0$while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_518/SigmoidSigmoid"while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_1Sigmoid"while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_518/mulMul!while/lstm_cell_518/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_518/ReluRelu"while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_518/mul_1Mulwhile/lstm_cell_518/Sigmoid:y:0&while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_518/add_1AddV2while/lstm_cell_518/mul:z:0while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_2Sigmoid"while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_518/Relu_1Reluwhile/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_518/mul_2Mul!while/lstm_cell_518/Sigmoid_2:y:0(while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_518/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_518/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_518/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_518/BiasAdd/ReadVariableOp*^while/lstm_cell_518/MatMul/ReadVariableOp,^while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_518_biasadd_readvariableop_resource5while_lstm_cell_518_biasadd_readvariableop_resource_0"n
4while_lstm_cell_518_matmul_1_readvariableop_resource6while_lstm_cell_518_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_518_matmul_readvariableop_resource4while_lstm_cell_518_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_518/BiasAdd/ReadVariableOp*while/lstm_cell_518/BiasAdd/ReadVariableOp2V
)while/lstm_cell_518/MatMul/ReadVariableOp)while/lstm_cell_518/MatMul/ReadVariableOp2Z
+while/lstm_cell_518/MatMul_1/ReadVariableOp+while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
я
 
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135194
lstm_234_input#
lstm_234_3135167:	љ#
lstm_234_3135169:	dљ
lstm_234_3135171:	љ#
lstm_235_3135174:	d╚#
lstm_235_3135176:	2╚
lstm_235_3135178:	╚"
lstm_236_3135181:2("
lstm_236_3135183:
(
lstm_236_3135185:("
dense_78_3135188:

dense_78_3135190:
identityѕб dense_78/StatefulPartitionedCallб lstm_234/StatefulPartitionedCallб lstm_235/StatefulPartitionedCallб lstm_236/StatefulPartitionedCallЊ
 lstm_234/StatefulPartitionedCallStatefulPartitionedCalllstm_234_inputlstm_234_3135167lstm_234_3135169lstm_234_3135171*
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3135014«
 lstm_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_234/StatefulPartitionedCall:output:0lstm_235_3135174lstm_235_3135176lstm_235_3135178*
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134849ф
 lstm_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_235/StatefulPartitionedCall:output:0lstm_236_3135181lstm_236_3135183lstm_236_3135185*
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134684ќ
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)lstm_236/StatefulPartitionedCall:output:0dense_78_3135188dense_78_3135190*
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
E__inference_dense_78_layer_call_and_return_conditional_losses_3134486x
IdentityIdentity)dense_78/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_78/StatefulPartitionedCall!^lstm_234/StatefulPartitionedCall!^lstm_235/StatefulPartitionedCall!^lstm_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 lstm_234/StatefulPartitionedCall lstm_234/StatefulPartitionedCall2D
 lstm_235/StatefulPartitionedCall lstm_235/StatefulPartitionedCall2D
 lstm_236/StatefulPartitionedCall lstm_236/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_234_input
сS
й
)sequential_78_lstm_234_while_body_3132601J
Fsequential_78_lstm_234_while_sequential_78_lstm_234_while_loop_counterP
Lsequential_78_lstm_234_while_sequential_78_lstm_234_while_maximum_iterations,
(sequential_78_lstm_234_while_placeholder.
*sequential_78_lstm_234_while_placeholder_1.
*sequential_78_lstm_234_while_placeholder_2.
*sequential_78_lstm_234_while_placeholder_3I
Esequential_78_lstm_234_while_sequential_78_lstm_234_strided_slice_1_0є
Ђsequential_78_lstm_234_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_234_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_78_lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0:	љ`
Msequential_78_lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљ[
Lsequential_78_lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ)
%sequential_78_lstm_234_while_identity+
'sequential_78_lstm_234_while_identity_1+
'sequential_78_lstm_234_while_identity_2+
'sequential_78_lstm_234_while_identity_3+
'sequential_78_lstm_234_while_identity_4+
'sequential_78_lstm_234_while_identity_5G
Csequential_78_lstm_234_while_sequential_78_lstm_234_strided_slice_1Ѓ
sequential_78_lstm_234_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_234_tensorarrayunstack_tensorlistfromtensor\
Isequential_78_lstm_234_while_lstm_cell_516_matmul_readvariableop_resource:	љ^
Ksequential_78_lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource:	dљY
Jsequential_78_lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource:	љѕбAsequential_78/lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpб@sequential_78/lstm_234/while/lstm_cell_516/MatMul/ReadVariableOpбBsequential_78/lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOpЪ
Nsequential_78/lstm_234/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       џ
@sequential_78/lstm_234/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_78_lstm_234_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_234_tensorarrayunstack_tensorlistfromtensor_0(sequential_78_lstm_234_while_placeholderWsequential_78/lstm_234/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0═
@sequential_78/lstm_234/while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOpKsequential_78_lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0Ђ
1sequential_78/lstm_234/while/lstm_cell_516/MatMulMatMulGsequential_78/lstm_234/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_78/lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЛ
Bsequential_78/lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOpMsequential_78_lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0У
3sequential_78/lstm_234/while/lstm_cell_516/MatMul_1MatMul*sequential_78_lstm_234_while_placeholder_2Jsequential_78/lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љТ
.sequential_78/lstm_234/while/lstm_cell_516/addAddV2;sequential_78/lstm_234/while/lstm_cell_516/MatMul:product:0=sequential_78/lstm_234/while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љ╦
Asequential_78/lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOpLsequential_78_lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0№
2sequential_78/lstm_234/while/lstm_cell_516/BiasAddBiasAdd2sequential_78/lstm_234/while/lstm_cell_516/add:z:0Isequential_78/lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ|
:sequential_78/lstm_234/while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_78/lstm_234/while/lstm_cell_516/splitSplitCsequential_78/lstm_234/while/lstm_cell_516/split/split_dim:output:0;sequential_78/lstm_234/while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitф
2sequential_78/lstm_234/while/lstm_cell_516/SigmoidSigmoid9sequential_78/lstm_234/while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dг
4sequential_78/lstm_234/while/lstm_cell_516/Sigmoid_1Sigmoid9sequential_78/lstm_234/while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         d═
.sequential_78/lstm_234/while/lstm_cell_516/mulMul8sequential_78/lstm_234/while/lstm_cell_516/Sigmoid_1:y:0*sequential_78_lstm_234_while_placeholder_3*
T0*'
_output_shapes
:         dц
/sequential_78/lstm_234/while/lstm_cell_516/ReluRelu9sequential_78/lstm_234/while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЯ
0sequential_78/lstm_234/while/lstm_cell_516/mul_1Mul6sequential_78/lstm_234/while/lstm_cell_516/Sigmoid:y:0=sequential_78/lstm_234/while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dН
0sequential_78/lstm_234/while/lstm_cell_516/add_1AddV22sequential_78/lstm_234/while/lstm_cell_516/mul:z:04sequential_78/lstm_234/while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dг
4sequential_78/lstm_234/while/lstm_cell_516/Sigmoid_2Sigmoid9sequential_78/lstm_234/while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dА
1sequential_78/lstm_234/while/lstm_cell_516/Relu_1Relu4sequential_78/lstm_234/while/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dС
0sequential_78/lstm_234/while/lstm_cell_516/mul_2Mul8sequential_78/lstm_234/while/lstm_cell_516/Sigmoid_2:y:0?sequential_78/lstm_234/while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dб
Asequential_78/lstm_234/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_78_lstm_234_while_placeholder_1(sequential_78_lstm_234_while_placeholder4sequential_78/lstm_234/while/lstm_cell_516/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_78/lstm_234/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_78/lstm_234/while/addAddV2(sequential_78_lstm_234_while_placeholder+sequential_78/lstm_234/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_78/lstm_234/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_78/lstm_234/while/add_1AddV2Fsequential_78_lstm_234_while_sequential_78_lstm_234_while_loop_counter-sequential_78/lstm_234/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_78/lstm_234/while/IdentityIdentity&sequential_78/lstm_234/while/add_1:z:0"^sequential_78/lstm_234/while/NoOp*
T0*
_output_shapes
: к
'sequential_78/lstm_234/while/Identity_1IdentityLsequential_78_lstm_234_while_sequential_78_lstm_234_while_maximum_iterations"^sequential_78/lstm_234/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_78/lstm_234/while/Identity_2Identity$sequential_78/lstm_234/while/add:z:0"^sequential_78/lstm_234/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_78/lstm_234/while/Identity_3IdentityQsequential_78/lstm_234/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_78/lstm_234/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_78/lstm_234/while/Identity_4Identity4sequential_78/lstm_234/while/lstm_cell_516/mul_2:z:0"^sequential_78/lstm_234/while/NoOp*
T0*'
_output_shapes
:         d┐
'sequential_78/lstm_234/while/Identity_5Identity4sequential_78/lstm_234/while/lstm_cell_516/add_1:z:0"^sequential_78/lstm_234/while/NoOp*
T0*'
_output_shapes
:         d»
!sequential_78/lstm_234/while/NoOpNoOpB^sequential_78/lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpA^sequential_78/lstm_234/while/lstm_cell_516/MatMul/ReadVariableOpC^sequential_78/lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_78_lstm_234_while_identity.sequential_78/lstm_234/while/Identity:output:0"[
'sequential_78_lstm_234_while_identity_10sequential_78/lstm_234/while/Identity_1:output:0"[
'sequential_78_lstm_234_while_identity_20sequential_78/lstm_234/while/Identity_2:output:0"[
'sequential_78_lstm_234_while_identity_30sequential_78/lstm_234/while/Identity_3:output:0"[
'sequential_78_lstm_234_while_identity_40sequential_78/lstm_234/while/Identity_4:output:0"[
'sequential_78_lstm_234_while_identity_50sequential_78/lstm_234/while/Identity_5:output:0"џ
Jsequential_78_lstm_234_while_lstm_cell_516_biasadd_readvariableop_resourceLsequential_78_lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0"ю
Ksequential_78_lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resourceMsequential_78_lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0"ў
Isequential_78_lstm_234_while_lstm_cell_516_matmul_readvariableop_resourceKsequential_78_lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0"ї
Csequential_78_lstm_234_while_sequential_78_lstm_234_strided_slice_1Esequential_78_lstm_234_while_sequential_78_lstm_234_strided_slice_1_0"Ё
sequential_78_lstm_234_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_234_tensorarrayunstack_tensorlistfromtensorЂsequential_78_lstm_234_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_234_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2є
Asequential_78/lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpAsequential_78/lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp2ё
@sequential_78/lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp@sequential_78/lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp2ѕ
Bsequential_78/lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOpBsequential_78/lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ѓ
и
*__inference_lstm_234_layer_call_fn_3136181

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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3135014s
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
/__inference_sequential_78_layer_call_fn_3135256

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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3134493o
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
РJ
Б
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137369

inputs?
,lstm_cell_517_matmul_readvariableop_resource:	d╚A
.lstm_cell_517_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_517_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_517/BiasAdd/ReadVariableOpб#lstm_cell_517/MatMul/ReadVariableOpб%lstm_cell_517/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_517/MatMul/ReadVariableOpReadVariableOp,lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_517/MatMulMatMulstrided_slice_2:output:0+lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_517/MatMul_1MatMulzeros:output:0-lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_517/addAddV2lstm_cell_517/MatMul:product:0 lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_517/BiasAddBiasAddlstm_cell_517/add:z:0,lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_517/splitSplit&lstm_cell_517/split/split_dim:output:0lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_517/SigmoidSigmoidlstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_1Sigmoidlstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_517/mulMullstm_cell_517/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_517/ReluRelulstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_517/mul_1Mullstm_cell_517/Sigmoid:y:0 lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_517/add_1AddV2lstm_cell_517/mul:z:0lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_2Sigmoidlstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_517/Relu_1Relulstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_517/mul_2Mullstm_cell_517/Sigmoid_2:y:0"lstm_cell_517/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_517_matmul_readvariableop_resource.lstm_cell_517_matmul_1_readvariableop_resource-lstm_cell_517_biasadd_readvariableop_resource*
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
while_body_3137285*
condR
while_cond_3137284*K
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
NoOpNoOp%^lstm_cell_517/BiasAdd/ReadVariableOp$^lstm_cell_517/MatMul/ReadVariableOp&^lstm_cell_517/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_517/BiasAdd/ReadVariableOp$lstm_cell_517/BiasAdd/ReadVariableOp2J
#lstm_cell_517/MatMul/ReadVariableOp#lstm_cell_517/MatMul/ReadVariableOp2N
%lstm_cell_517/MatMul_1/ReadVariableOp%lstm_cell_517/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_235_layer_call_and_return_conditional_losses_3133660

inputs(
lstm_cell_517_3133578:	d╚(
lstm_cell_517_3133580:	2╚$
lstm_cell_517_3133582:	╚
identityѕб%lstm_cell_517/StatefulPartitionedCallбwhile;
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
%lstm_cell_517/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_517_3133578lstm_cell_517_3133580lstm_cell_517_3133582*
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133532n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_517_3133578lstm_cell_517_3133580lstm_cell_517_3133582*
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
while_body_3133591*
condR
while_cond_3133590*K
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
NoOpNoOp&^lstm_cell_517/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_517/StatefulPartitionedCall%lstm_cell_517/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_234_layer_call_fn_3136148
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3133119|
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
АC
Щ

lstm_234_while_body_3135342.
*lstm_234_while_lstm_234_while_loop_counter4
0lstm_234_while_lstm_234_while_maximum_iterations
lstm_234_while_placeholder 
lstm_234_while_placeholder_1 
lstm_234_while_placeholder_2 
lstm_234_while_placeholder_3-
)lstm_234_while_lstm_234_strided_slice_1_0i
elstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0:	љR
?lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљM
>lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
lstm_234_while_identity
lstm_234_while_identity_1
lstm_234_while_identity_2
lstm_234_while_identity_3
lstm_234_while_identity_4
lstm_234_while_identity_5+
'lstm_234_while_lstm_234_strided_slice_1g
clstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensorN
;lstm_234_while_lstm_cell_516_matmul_readvariableop_resource:	љP
=lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource:	dљK
<lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpб2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOpб4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOpЉ
@lstm_234/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_234/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensor_0lstm_234_while_placeholderIlstm_234/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp=lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_234/while/lstm_cell_516/MatMulMatMul9lstm_234/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp?lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_234/while/lstm_cell_516/MatMul_1MatMullstm_234_while_placeholder_2<lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_234/while/lstm_cell_516/addAddV2-lstm_234/while/lstm_cell_516/MatMul:product:0/lstm_234/while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp>lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_234/while/lstm_cell_516/BiasAddBiasAdd$lstm_234/while/lstm_cell_516/add:z:0;lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_234/while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_234/while/lstm_cell_516/splitSplit5lstm_234/while/lstm_cell_516/split/split_dim:output:0-lstm_234/while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_234/while/lstm_cell_516/SigmoidSigmoid+lstm_234/while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_234/while/lstm_cell_516/Sigmoid_1Sigmoid+lstm_234/while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_234/while/lstm_cell_516/mulMul*lstm_234/while/lstm_cell_516/Sigmoid_1:y:0lstm_234_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_234/while/lstm_cell_516/ReluRelu+lstm_234/while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_234/while/lstm_cell_516/mul_1Mul(lstm_234/while/lstm_cell_516/Sigmoid:y:0/lstm_234/while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_234/while/lstm_cell_516/add_1AddV2$lstm_234/while/lstm_cell_516/mul:z:0&lstm_234/while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_234/while/lstm_cell_516/Sigmoid_2Sigmoid+lstm_234/while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_234/while/lstm_cell_516/Relu_1Relu&lstm_234/while/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_234/while/lstm_cell_516/mul_2Mul*lstm_234/while/lstm_cell_516/Sigmoid_2:y:01lstm_234/while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_234/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_234_while_placeholder_1lstm_234_while_placeholder&lstm_234/while/lstm_cell_516/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_234/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_234/while/addAddV2lstm_234_while_placeholderlstm_234/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_234/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_234/while/add_1AddV2*lstm_234_while_lstm_234_while_loop_counterlstm_234/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_234/while/IdentityIdentitylstm_234/while/add_1:z:0^lstm_234/while/NoOp*
T0*
_output_shapes
: ј
lstm_234/while/Identity_1Identity0lstm_234_while_lstm_234_while_maximum_iterations^lstm_234/while/NoOp*
T0*
_output_shapes
: t
lstm_234/while/Identity_2Identitylstm_234/while/add:z:0^lstm_234/while/NoOp*
T0*
_output_shapes
: А
lstm_234/while/Identity_3IdentityClstm_234/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_234/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_234/while/Identity_4Identity&lstm_234/while/lstm_cell_516/mul_2:z:0^lstm_234/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_234/while/Identity_5Identity&lstm_234/while/lstm_cell_516/add_1:z:0^lstm_234/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_234/while/NoOpNoOp4^lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp3^lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp5^lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_234_while_identity lstm_234/while/Identity:output:0"?
lstm_234_while_identity_1"lstm_234/while/Identity_1:output:0"?
lstm_234_while_identity_2"lstm_234/while/Identity_2:output:0"?
lstm_234_while_identity_3"lstm_234/while/Identity_3:output:0"?
lstm_234_while_identity_4"lstm_234/while/Identity_4:output:0"?
lstm_234_while_identity_5"lstm_234/while/Identity_5:output:0"T
'lstm_234_while_lstm_234_strided_slice_1)lstm_234_while_lstm_234_strided_slice_1_0"~
<lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource>lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0"ђ
=lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource?lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0"|
;lstm_234_while_lstm_cell_516_matmul_readvariableop_resource=lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0"╠
clstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensorelstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp2h
2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp2l
4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
)sequential_78_lstm_234_while_cond_3132600J
Fsequential_78_lstm_234_while_sequential_78_lstm_234_while_loop_counterP
Lsequential_78_lstm_234_while_sequential_78_lstm_234_while_maximum_iterations,
(sequential_78_lstm_234_while_placeholder.
*sequential_78_lstm_234_while_placeholder_1.
*sequential_78_lstm_234_while_placeholder_2.
*sequential_78_lstm_234_while_placeholder_3L
Hsequential_78_lstm_234_while_less_sequential_78_lstm_234_strided_slice_1c
_sequential_78_lstm_234_while_sequential_78_lstm_234_while_cond_3132600___redundant_placeholder0c
_sequential_78_lstm_234_while_sequential_78_lstm_234_while_cond_3132600___redundant_placeholder1c
_sequential_78_lstm_234_while_sequential_78_lstm_234_while_cond_3132600___redundant_placeholder2c
_sequential_78_lstm_234_while_sequential_78_lstm_234_while_cond_3132600___redundant_placeholder3)
%sequential_78_lstm_234_while_identity
Й
!sequential_78/lstm_234/while/LessLess(sequential_78_lstm_234_while_placeholderHsequential_78_lstm_234_while_less_sequential_78_lstm_234_strided_slice_1*
T0*
_output_shapes
: y
%sequential_78/lstm_234/while/IdentityIdentity%sequential_78/lstm_234/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_78_lstm_234_while_identity.sequential_78/lstm_234/while/Identity:output:0*(
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
E__inference_dense_78_layer_call_and_return_conditional_losses_3134486

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
Г
╣
*__inference_lstm_234_layer_call_fn_3136159
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3133310|
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
while_cond_3133240
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3133240___redundant_placeholder05
1while_while_cond_3133240___redundant_placeholder15
1while_while_cond_3133240___redundant_placeholder25
1while_while_cond_3133240___redundant_placeholder3
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
аK
Ц
E__inference_lstm_235_layer_call_and_return_conditional_losses_3136940
inputs_0?
,lstm_cell_517_matmul_readvariableop_resource:	d╚A
.lstm_cell_517_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_517_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_517/BiasAdd/ReadVariableOpб#lstm_cell_517/MatMul/ReadVariableOpб%lstm_cell_517/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_517/MatMul/ReadVariableOpReadVariableOp,lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_517/MatMulMatMulstrided_slice_2:output:0+lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_517/MatMul_1MatMulzeros:output:0-lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_517/addAddV2lstm_cell_517/MatMul:product:0 lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_517/BiasAddBiasAddlstm_cell_517/add:z:0,lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_517/splitSplit&lstm_cell_517/split/split_dim:output:0lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_517/SigmoidSigmoidlstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_1Sigmoidlstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_517/mulMullstm_cell_517/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_517/ReluRelulstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_517/mul_1Mullstm_cell_517/Sigmoid:y:0 lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_517/add_1AddV2lstm_cell_517/mul:z:0lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_2Sigmoidlstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_517/Relu_1Relulstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_517/mul_2Mullstm_cell_517/Sigmoid_2:y:0"lstm_cell_517/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_517_matmul_readvariableop_resource.lstm_cell_517_matmul_1_readvariableop_resource-lstm_cell_517_biasadd_readvariableop_resource*
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
while_body_3136856*
condR
while_cond_3136855*K
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
NoOpNoOp%^lstm_cell_517/BiasAdd/ReadVariableOp$^lstm_cell_517/MatMul/ReadVariableOp&^lstm_cell_517/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_517/BiasAdd/ReadVariableOp$lstm_cell_517/BiasAdd/ReadVariableOp2J
#lstm_cell_517/MatMul/ReadVariableOp#lstm_cell_517/MatMul/ReadVariableOp2N
%lstm_cell_517/MatMul_1/ReadVariableOp%lstm_cell_517/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
┐
ћ
)sequential_78_lstm_235_while_cond_3132739J
Fsequential_78_lstm_235_while_sequential_78_lstm_235_while_loop_counterP
Lsequential_78_lstm_235_while_sequential_78_lstm_235_while_maximum_iterations,
(sequential_78_lstm_235_while_placeholder.
*sequential_78_lstm_235_while_placeholder_1.
*sequential_78_lstm_235_while_placeholder_2.
*sequential_78_lstm_235_while_placeholder_3L
Hsequential_78_lstm_235_while_less_sequential_78_lstm_235_strided_slice_1c
_sequential_78_lstm_235_while_sequential_78_lstm_235_while_cond_3132739___redundant_placeholder0c
_sequential_78_lstm_235_while_sequential_78_lstm_235_while_cond_3132739___redundant_placeholder1c
_sequential_78_lstm_235_while_sequential_78_lstm_235_while_cond_3132739___redundant_placeholder2c
_sequential_78_lstm_235_while_sequential_78_lstm_235_while_cond_3132739___redundant_placeholder3)
%sequential_78_lstm_235_while_identity
Й
!sequential_78/lstm_235/while/LessLess(sequential_78_lstm_235_while_placeholderHsequential_78_lstm_235_while_less_sequential_78_lstm_235_strided_slice_1*
T0*
_output_shapes
: y
%sequential_78/lstm_235/while/IdentityIdentity%sequential_78/lstm_235/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_78_lstm_235_while_identity.sequential_78/lstm_235/while/Identity:output:0*(
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136610

inputs?
,lstm_cell_516_matmul_readvariableop_resource:	љA
.lstm_cell_516_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_516_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_516/BiasAdd/ReadVariableOpб#lstm_cell_516/MatMul/ReadVariableOpб%lstm_cell_516/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_516/MatMul/ReadVariableOpReadVariableOp,lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_516/MatMulMatMulstrided_slice_2:output:0+lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_516/MatMul_1MatMulzeros:output:0-lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_516/addAddV2lstm_cell_516/MatMul:product:0 lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_516/BiasAddBiasAddlstm_cell_516/add:z:0,lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_516/splitSplit&lstm_cell_516/split/split_dim:output:0lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_516/SigmoidSigmoidlstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_1Sigmoidlstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_516/mulMullstm_cell_516/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_516/ReluRelulstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_516/mul_1Mullstm_cell_516/Sigmoid:y:0 lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_516/add_1AddV2lstm_cell_516/mul:z:0lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_2Sigmoidlstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_516/Relu_1Relulstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_516/mul_2Mullstm_cell_516/Sigmoid_2:y:0"lstm_cell_516/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_516_matmul_readvariableop_resource.lstm_cell_516_matmul_1_readvariableop_resource-lstm_cell_516_biasadd_readvariableop_resource*
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
while_body_3136526*
condR
while_cond_3136525*K
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
NoOpNoOp%^lstm_cell_516/BiasAdd/ReadVariableOp$^lstm_cell_516/MatMul/ReadVariableOp&^lstm_cell_516/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_516/BiasAdd/ReadVariableOp$lstm_cell_516/BiasAdd/ReadVariableOp2J
#lstm_cell_516/MatMul/ReadVariableOp#lstm_cell_516/MatMul/ReadVariableOp2N
%lstm_cell_516/MatMul_1/ReadVariableOp%lstm_cell_516/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133182

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
Л8
┌
while_body_3136526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_516_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_516_matmul_readvariableop_resource:	љG
4while_lstm_cell_516_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_516/BiasAdd/ReadVariableOpб)while/lstm_cell_516/MatMul/ReadVariableOpб+while/lstm_cell_516/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_516/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_516/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_516/addAddV2$while/lstm_cell_516/MatMul:product:0&while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_516/BiasAddBiasAddwhile/lstm_cell_516/add:z:02while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_516/splitSplit,while/lstm_cell_516/split/split_dim:output:0$while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_516/SigmoidSigmoid"while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_1Sigmoid"while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_516/mulMul!while/lstm_cell_516/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_516/ReluRelu"while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_516/mul_1Mulwhile/lstm_cell_516/Sigmoid:y:0&while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_516/add_1AddV2while/lstm_cell_516/mul:z:0while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_2Sigmoid"while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_516/Relu_1Reluwhile/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_516/mul_2Mul!while/lstm_cell_516/Sigmoid_2:y:0(while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_516/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_516/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_516/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_516/BiasAdd/ReadVariableOp*^while/lstm_cell_516/MatMul/ReadVariableOp,^while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_516_biasadd_readvariableop_resource5while_lstm_cell_516_biasadd_readvariableop_resource_0"n
4while_lstm_cell_516_matmul_1_readvariableop_resource6while_lstm_cell_516_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_516_matmul_readvariableop_resource4while_lstm_cell_516_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_516/BiasAdd/ReadVariableOp*while/lstm_cell_516/BiasAdd/ReadVariableOp2V
)while/lstm_cell_516/MatMul/ReadVariableOp)while/lstm_cell_516/MatMul/ReadVariableOp2Z
+while/lstm_cell_516/MatMul_1/ReadVariableOp+while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134468

inputs>
,lstm_cell_518_matmul_readvariableop_resource:2(@
.lstm_cell_518_matmul_1_readvariableop_resource:
(;
-lstm_cell_518_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_518/BiasAdd/ReadVariableOpб#lstm_cell_518/MatMul/ReadVariableOpб%lstm_cell_518/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_518/MatMul/ReadVariableOpReadVariableOp,lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_518/MatMulMatMulstrided_slice_2:output:0+lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_518/MatMul_1MatMulzeros:output:0-lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_518/addAddV2lstm_cell_518/MatMul:product:0 lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_518/BiasAddBiasAddlstm_cell_518/add:z:0,lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_518/splitSplit&lstm_cell_518/split/split_dim:output:0lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_518/SigmoidSigmoidlstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_1Sigmoidlstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_518/mulMullstm_cell_518/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_518/ReluRelulstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_518/mul_1Mullstm_cell_518/Sigmoid:y:0 lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_518/add_1AddV2lstm_cell_518/mul:z:0lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_2Sigmoidlstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_518/Relu_1Relulstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_518/mul_2Mullstm_cell_518/Sigmoid_2:y:0"lstm_cell_518/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_518_matmul_readvariableop_resource.lstm_cell_518_matmul_1_readvariableop_resource-lstm_cell_518_biasadd_readvariableop_resource*
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
while_body_3134384*
condR
while_cond_3134383*K
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
NoOpNoOp%^lstm_cell_518/BiasAdd/ReadVariableOp$^lstm_cell_518/MatMul/ReadVariableOp&^lstm_cell_518/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_518/BiasAdd/ReadVariableOp$lstm_cell_518/BiasAdd/ReadVariableOp2J
#lstm_cell_518/MatMul/ReadVariableOp#lstm_cell_518/MatMul/ReadVariableOp2N
%lstm_cell_518/MatMul_1/ReadVariableOp%lstm_cell_518/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
╚	
Ш
E__inference_dense_78_layer_call_and_return_conditional_losses_3138004

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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3133310

inputs(
lstm_cell_516_3133228:	љ(
lstm_cell_516_3133230:	dљ$
lstm_cell_516_3133232:	љ
identityѕб%lstm_cell_516/StatefulPartitionedCallбwhile;
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
%lstm_cell_516/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_516_3133228lstm_cell_516_3133230lstm_cell_516_3133232*
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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133182n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_516_3133228lstm_cell_516_3133230lstm_cell_516_3133232*
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
while_body_3133241*
condR
while_cond_3133240*K
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
NoOpNoOp&^lstm_cell_516/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_516/StatefulPartitionedCall%lstm_cell_516/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133532

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
▄

Џ
/__inference_sequential_78_layer_call_fn_3135283

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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135082o
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
РJ
Б
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134849

inputs?
,lstm_cell_517_matmul_readvariableop_resource:	d╚A
.lstm_cell_517_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_517_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_517/BiasAdd/ReadVariableOpб#lstm_cell_517/MatMul/ReadVariableOpб%lstm_cell_517/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_517/MatMul/ReadVariableOpReadVariableOp,lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_517/MatMulMatMulstrided_slice_2:output:0+lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_517/MatMul_1MatMulzeros:output:0-lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_517/addAddV2lstm_cell_517/MatMul:product:0 lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_517/BiasAddBiasAddlstm_cell_517/add:z:0,lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_517/splitSplit&lstm_cell_517/split/split_dim:output:0lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_517/SigmoidSigmoidlstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_1Sigmoidlstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_517/mulMullstm_cell_517/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_517/ReluRelulstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_517/mul_1Mullstm_cell_517/Sigmoid:y:0 lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_517/add_1AddV2lstm_cell_517/mul:z:0lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_2Sigmoidlstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_517/Relu_1Relulstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_517/mul_2Mullstm_cell_517/Sigmoid_2:y:0"lstm_cell_517/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_517_matmul_readvariableop_resource.lstm_cell_517_matmul_1_readvariableop_resource-lstm_cell_517_biasadd_readvariableop_resource*
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
while_body_3134765*
condR
while_cond_3134764*K
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
NoOpNoOp%^lstm_cell_517/BiasAdd/ReadVariableOp$^lstm_cell_517/MatMul/ReadVariableOp&^lstm_cell_517/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_517/BiasAdd/ReadVariableOp$lstm_cell_517/BiasAdd/ReadVariableOp2J
#lstm_cell_517/MatMul/ReadVariableOp#lstm_cell_517/MatMul/ReadVariableOp2N
%lstm_cell_517/MatMul_1/ReadVariableOp%lstm_cell_517/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
аK
Ц
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136324
inputs_0?
,lstm_cell_516_matmul_readvariableop_resource:	љA
.lstm_cell_516_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_516_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_516/BiasAdd/ReadVariableOpб#lstm_cell_516/MatMul/ReadVariableOpб%lstm_cell_516/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_516/MatMul/ReadVariableOpReadVariableOp,lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_516/MatMulMatMulstrided_slice_2:output:0+lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_516/MatMul_1MatMulzeros:output:0-lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_516/addAddV2lstm_cell_516/MatMul:product:0 lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_516/BiasAddBiasAddlstm_cell_516/add:z:0,lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_516/splitSplit&lstm_cell_516/split/split_dim:output:0lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_516/SigmoidSigmoidlstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_1Sigmoidlstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_516/mulMullstm_cell_516/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_516/ReluRelulstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_516/mul_1Mullstm_cell_516/Sigmoid:y:0 lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_516/add_1AddV2lstm_cell_516/mul:z:0lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_2Sigmoidlstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_516/Relu_1Relulstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_516/mul_2Mullstm_cell_516/Sigmoid_2:y:0"lstm_cell_516/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_516_matmul_readvariableop_resource.lstm_cell_516_matmul_1_readvariableop_resource-lstm_cell_516_biasadd_readvariableop_resource*
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
while_body_3136240*
condR
while_cond_3136239*K
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
NoOpNoOp%^lstm_cell_516/BiasAdd/ReadVariableOp$^lstm_cell_516/MatMul/ReadVariableOp&^lstm_cell_516/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_516/BiasAdd/ReadVariableOp$lstm_cell_516/BiasAdd/ReadVariableOp2J
#lstm_cell_516/MatMul/ReadVariableOp#lstm_cell_516/MatMul/ReadVariableOp2N
%lstm_cell_516/MatMul_1/ReadVariableOp%lstm_cell_516/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
и

Ч
lstm_235_while_cond_3135480.
*lstm_235_while_lstm_235_while_loop_counter4
0lstm_235_while_lstm_235_while_maximum_iterations
lstm_235_while_placeholder 
lstm_235_while_placeholder_1 
lstm_235_while_placeholder_2 
lstm_235_while_placeholder_30
,lstm_235_while_less_lstm_235_strided_slice_1G
Clstm_235_while_lstm_235_while_cond_3135480___redundant_placeholder0G
Clstm_235_while_lstm_235_while_cond_3135480___redundant_placeholder1G
Clstm_235_while_lstm_235_while_cond_3135480___redundant_placeholder2G
Clstm_235_while_lstm_235_while_cond_3135480___redundant_placeholder3
lstm_235_while_identity
є
lstm_235/while/LessLesslstm_235_while_placeholder,lstm_235_while_less_lstm_235_strided_slice_1*
T0*
_output_shapes
: ]
lstm_235/while/IdentityIdentitylstm_235/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_235_while_identity lstm_235/while/Identity:output:0*(
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
Л8
┌
while_body_3134234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_517_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_517/BiasAdd/ReadVariableOpб)while/lstm_cell_517/MatMul/ReadVariableOpб+while/lstm_cell_517/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_517/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_517/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_517/addAddV2$while/lstm_cell_517/MatMul:product:0&while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_517/BiasAddBiasAddwhile/lstm_cell_517/add:z:02while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_517/splitSplit,while/lstm_cell_517/split/split_dim:output:0$while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_517/SigmoidSigmoid"while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_1Sigmoid"while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_517/mulMul!while/lstm_cell_517/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_517/ReluRelu"while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_517/mul_1Mulwhile/lstm_cell_517/Sigmoid:y:0&while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_517/add_1AddV2while/lstm_cell_517/mul:z:0while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_2Sigmoid"while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_517/Relu_1Reluwhile/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_517/mul_2Mul!while/lstm_cell_517/Sigmoid_2:y:0(while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_517/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_517/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_517/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_517/BiasAdd/ReadVariableOp*^while/lstm_cell_517/MatMul/ReadVariableOp,^while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_517_biasadd_readvariableop_resource5while_lstm_cell_517_biasadd_readvariableop_resource_0"n
4while_lstm_cell_517_matmul_1_readvariableop_resource6while_lstm_cell_517_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_517_matmul_readvariableop_resource4while_lstm_cell_517_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_517/BiasAdd/ReadVariableOp*while/lstm_cell_517/BiasAdd/ReadVariableOp2V
)while/lstm_cell_517/MatMul/ReadVariableOp)while/lstm_cell_517/MatMul/ReadVariableOp2Z
+while/lstm_cell_517/MatMul_1/ReadVariableOp+while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Л8
┌
while_body_3134930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_516_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_516_matmul_readvariableop_resource:	љG
4while_lstm_cell_516_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_516/BiasAdd/ReadVariableOpб)while/lstm_cell_516/MatMul/ReadVariableOpб+while/lstm_cell_516/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_516/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_516/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_516/addAddV2$while/lstm_cell_516/MatMul:product:0&while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_516/BiasAddBiasAddwhile/lstm_cell_516/add:z:02while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_516/splitSplit,while/lstm_cell_516/split/split_dim:output:0$while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_516/SigmoidSigmoid"while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_1Sigmoid"while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_516/mulMul!while/lstm_cell_516/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_516/ReluRelu"while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_516/mul_1Mulwhile/lstm_cell_516/Sigmoid:y:0&while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_516/add_1AddV2while/lstm_cell_516/mul:z:0while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_2Sigmoid"while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_516/Relu_1Reluwhile/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_516/mul_2Mul!while/lstm_cell_516/Sigmoid_2:y:0(while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_516/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_516/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_516/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_516/BiasAdd/ReadVariableOp*^while/lstm_cell_516/MatMul/ReadVariableOp,^while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_516_biasadd_readvariableop_resource5while_lstm_cell_516_biasadd_readvariableop_resource_0"n
4while_lstm_cell_516_matmul_1_readvariableop_resource6while_lstm_cell_516_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_516_matmul_readvariableop_resource4while_lstm_cell_516_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_516/BiasAdd/ReadVariableOp*while/lstm_cell_516/BiasAdd/ReadVariableOp2V
)while/lstm_cell_516/MatMul/ReadVariableOp)while/lstm_cell_516/MatMul/ReadVariableOp2Z
+while/lstm_cell_516/MatMul_1/ReadVariableOp+while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
и

Ч
lstm_236_while_cond_3136046.
*lstm_236_while_lstm_236_while_loop_counter4
0lstm_236_while_lstm_236_while_maximum_iterations
lstm_236_while_placeholder 
lstm_236_while_placeholder_1 
lstm_236_while_placeholder_2 
lstm_236_while_placeholder_30
,lstm_236_while_less_lstm_236_strided_slice_1G
Clstm_236_while_lstm_236_while_cond_3136046___redundant_placeholder0G
Clstm_236_while_lstm_236_while_cond_3136046___redundant_placeholder1G
Clstm_236_while_lstm_236_while_cond_3136046___redundant_placeholder2G
Clstm_236_while_lstm_236_while_cond_3136046___redundant_placeholder3
lstm_236_while_identity
є
lstm_236/while/LessLesslstm_236_while_placeholder,lstm_236_while_less_lstm_236_strided_slice_1*
T0*
_output_shapes
: ]
lstm_236/while/IdentityIdentitylstm_236/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_236_while_identity lstm_236/while/Identity:output:0*(
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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135164
lstm_234_input#
lstm_234_3135137:	љ#
lstm_234_3135139:	dљ
lstm_234_3135141:	љ#
lstm_235_3135144:	d╚#
lstm_235_3135146:	2╚
lstm_235_3135148:	╚"
lstm_236_3135151:2("
lstm_236_3135153:
(
lstm_236_3135155:("
dense_78_3135158:

dense_78_3135160:
identityѕб dense_78/StatefulPartitionedCallб lstm_234/StatefulPartitionedCallб lstm_235/StatefulPartitionedCallб lstm_236/StatefulPartitionedCallЊ
 lstm_234/StatefulPartitionedCallStatefulPartitionedCalllstm_234_inputlstm_234_3135137lstm_234_3135139lstm_234_3135141*
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3134168«
 lstm_235/StatefulPartitionedCallStatefulPartitionedCall)lstm_234/StatefulPartitionedCall:output:0lstm_235_3135144lstm_235_3135146lstm_235_3135148*
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134318ф
 lstm_236/StatefulPartitionedCallStatefulPartitionedCall)lstm_235/StatefulPartitionedCall:output:0lstm_236_3135151lstm_236_3135153lstm_236_3135155*
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134468ќ
 dense_78/StatefulPartitionedCallStatefulPartitionedCall)lstm_236/StatefulPartitionedCall:output:0dense_78_3135158dense_78_3135160*
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
E__inference_dense_78_layer_call_and_return_conditional_losses_3134486x
IdentityIdentity)dense_78/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         м
NoOpNoOp!^dense_78/StatefulPartitionedCall!^lstm_234/StatefulPartitionedCall!^lstm_235/StatefulPartitionedCall!^lstm_236/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_78/StatefulPartitionedCall dense_78/StatefulPartitionedCall2D
 lstm_234/StatefulPartitionedCall lstm_234/StatefulPartitionedCall2D
 lstm_235/StatefulPartitionedCall lstm_235/StatefulPartitionedCall2D
 lstm_236/StatefulPartitionedCall lstm_236/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_234_input
РJ
Б
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137226

inputs?
,lstm_cell_517_matmul_readvariableop_resource:	d╚A
.lstm_cell_517_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_517_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_517/BiasAdd/ReadVariableOpб#lstm_cell_517/MatMul/ReadVariableOpб%lstm_cell_517/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_517/MatMul/ReadVariableOpReadVariableOp,lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_517/MatMulMatMulstrided_slice_2:output:0+lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_517/MatMul_1MatMulzeros:output:0-lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_517/addAddV2lstm_cell_517/MatMul:product:0 lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_517/BiasAddBiasAddlstm_cell_517/add:z:0,lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_517/splitSplit&lstm_cell_517/split/split_dim:output:0lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_517/SigmoidSigmoidlstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_1Sigmoidlstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_517/mulMullstm_cell_517/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_517/ReluRelulstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_517/mul_1Mullstm_cell_517/Sigmoid:y:0 lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_517/add_1AddV2lstm_cell_517/mul:z:0lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_2Sigmoidlstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_517/Relu_1Relulstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_517/mul_2Mullstm_cell_517/Sigmoid_2:y:0"lstm_cell_517/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_517_matmul_readvariableop_resource.lstm_cell_517_matmul_1_readvariableop_resource-lstm_cell_517_biasadd_readvariableop_resource*
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
while_body_3137142*
condR
while_cond_3137141*K
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
NoOpNoOp%^lstm_cell_517/BiasAdd/ReadVariableOp$^lstm_cell_517/MatMul/ReadVariableOp&^lstm_cell_517/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_517/BiasAdd/ReadVariableOp$lstm_cell_517/BiasAdd/ReadVariableOp2J
#lstm_cell_517/MatMul/ReadVariableOp#lstm_cell_517/MatMul/ReadVariableOp2N
%lstm_cell_517/MatMul_1/ReadVariableOp%lstm_cell_517/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_516_layer_call_fn_3138038

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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133182o
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
║
╚
while_cond_3133749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3133749___redundant_placeholder05
1while_while_cond_3133749___redundant_placeholder15
1while_while_cond_3133749___redundant_placeholder25
1while_while_cond_3133749___redundant_placeholder3
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
О
є
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3133036

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
Ј#
ы
while_body_3133400
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_517_3133424_0:	d╚0
while_lstm_cell_517_3133426_0:	2╚,
while_lstm_cell_517_3133428_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_517_3133424:	d╚.
while_lstm_cell_517_3133426:	2╚*
while_lstm_cell_517_3133428:	╚ѕб+while/lstm_cell_517/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_517/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_517_3133424_0while_lstm_cell_517_3133426_0while_lstm_cell_517_3133428_0*
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133386П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_517/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_517/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_517/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_517/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_517_3133424while_lstm_cell_517_3133424_0"<
while_lstm_cell_517_3133426while_lstm_cell_517_3133426_0"<
while_lstm_cell_517_3133428while_lstm_cell_517_3133428_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_517/StatefulPartitionedCall+while/lstm_cell_517/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
е8
І
E__inference_lstm_236_layer_call_and_return_conditional_losses_3133819

inputs'
lstm_cell_518_3133737:2('
lstm_cell_518_3133739:
(#
lstm_cell_518_3133741:(
identityѕб%lstm_cell_518/StatefulPartitionedCallбwhile;
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
%lstm_cell_518/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_518_3133737lstm_cell_518_3133739lstm_cell_518_3133741*
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133736n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_518_3133737lstm_cell_518_3133739lstm_cell_518_3133741*
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
while_body_3133750*
condR
while_cond_3133749*K
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
NoOpNoOp&^lstm_cell_518/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_518/StatefulPartitionedCall%lstm_cell_518/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
РJ
Б
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134318

inputs?
,lstm_cell_517_matmul_readvariableop_resource:	d╚A
.lstm_cell_517_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_517_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_517/BiasAdd/ReadVariableOpб#lstm_cell_517/MatMul/ReadVariableOpб%lstm_cell_517/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_517/MatMul/ReadVariableOpReadVariableOp,lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_517/MatMulMatMulstrided_slice_2:output:0+lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_517/MatMul_1MatMulzeros:output:0-lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_517/addAddV2lstm_cell_517/MatMul:product:0 lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_517/BiasAddBiasAddlstm_cell_517/add:z:0,lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_517/splitSplit&lstm_cell_517/split/split_dim:output:0lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_517/SigmoidSigmoidlstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_1Sigmoidlstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_517/mulMullstm_cell_517/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_517/ReluRelulstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_517/mul_1Mullstm_cell_517/Sigmoid:y:0 lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_517/add_1AddV2lstm_cell_517/mul:z:0lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_517/Sigmoid_2Sigmoidlstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_517/Relu_1Relulstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_517/mul_2Mullstm_cell_517/Sigmoid_2:y:0"lstm_cell_517/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_517_matmul_readvariableop_resource.lstm_cell_517_matmul_1_readvariableop_resource-lstm_cell_517_biasadd_readvariableop_resource*
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
while_body_3134234*
condR
while_cond_3134233*K
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
NoOpNoOp%^lstm_cell_517/BiasAdd/ReadVariableOp$^lstm_cell_517/MatMul/ReadVariableOp&^lstm_cell_517/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_517/BiasAdd/ReadVariableOp$lstm_cell_517/BiasAdd/ReadVariableOp2J
#lstm_cell_517/MatMul/ReadVariableOp#lstm_cell_517/MatMul/ReadVariableOp2N
%lstm_cell_517/MatMul_1/ReadVariableOp%lstm_cell_517/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133386

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
║
╚
while_cond_3136525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3136525___redundant_placeholder05
1while_while_cond_3136525___redundant_placeholder15
1while_while_cond_3136525___redundant_placeholder25
1while_while_cond_3136525___redundant_placeholder3
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
Л8
┌
while_body_3136669
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_516_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_516_matmul_readvariableop_resource:	љG
4while_lstm_cell_516_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_516/BiasAdd/ReadVariableOpб)while/lstm_cell_516/MatMul/ReadVariableOpб+while/lstm_cell_516/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_516/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_516/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_516/addAddV2$while/lstm_cell_516/MatMul:product:0&while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_516/BiasAddBiasAddwhile/lstm_cell_516/add:z:02while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_516/splitSplit,while/lstm_cell_516/split/split_dim:output:0$while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_516/SigmoidSigmoid"while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_1Sigmoid"while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_516/mulMul!while/lstm_cell_516/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_516/ReluRelu"while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_516/mul_1Mulwhile/lstm_cell_516/Sigmoid:y:0&while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_516/add_1AddV2while/lstm_cell_516/mul:z:0while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_2Sigmoid"while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_516/Relu_1Reluwhile/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_516/mul_2Mul!while/lstm_cell_516/Sigmoid_2:y:0(while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_516/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_516/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_516/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_516/BiasAdd/ReadVariableOp*^while/lstm_cell_516/MatMul/ReadVariableOp,^while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_516_biasadd_readvariableop_resource5while_lstm_cell_516_biasadd_readvariableop_resource_0"n
4while_lstm_cell_516_matmul_1_readvariableop_resource6while_lstm_cell_516_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_516_matmul_readvariableop_resource4while_lstm_cell_516_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_516/BiasAdd/ReadVariableOp*while/lstm_cell_516/BiasAdd/ReadVariableOp2V
)while/lstm_cell_516/MatMul/ReadVariableOp)while/lstm_cell_516/MatMul/ReadVariableOp2Z
+while/lstm_cell_516/MatMul_1/ReadVariableOp+while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ѕ#
в
while_body_3133750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_518_3133774_0:2(/
while_lstm_cell_518_3133776_0:
(+
while_lstm_cell_518_3133778_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_518_3133774:2(-
while_lstm_cell_518_3133776:
()
while_lstm_cell_518_3133778:(ѕб+while/lstm_cell_518/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_518/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_518_3133774_0while_lstm_cell_518_3133776_0while_lstm_cell_518_3133778_0*
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133736П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_518/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_518/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_518/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_518/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_518_3133774while_lstm_cell_518_3133774_0"<
while_lstm_cell_518_3133776while_lstm_cell_518_3133776_0"<
while_lstm_cell_518_3133778while_lstm_cell_518_3133778_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_518/StatefulPartitionedCall+while/lstm_cell_518/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
љ
Х
*__inference_lstm_236_layer_call_fn_3137380
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3133819o
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
║
╚
while_cond_3134764
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3134764___redundant_placeholder05
1while_while_cond_3134764___redundant_placeholder15
1while_while_cond_3134764___redundant_placeholder25
1while_while_cond_3134764___redundant_placeholder3
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
жЂ
ќ
J__inference_sequential_78_layer_call_and_return_conditional_losses_3136137

inputsH
5lstm_234_lstm_cell_516_matmul_readvariableop_resource:	љJ
7lstm_234_lstm_cell_516_matmul_1_readvariableop_resource:	dљE
6lstm_234_lstm_cell_516_biasadd_readvariableop_resource:	љH
5lstm_235_lstm_cell_517_matmul_readvariableop_resource:	d╚J
7lstm_235_lstm_cell_517_matmul_1_readvariableop_resource:	2╚E
6lstm_235_lstm_cell_517_biasadd_readvariableop_resource:	╚G
5lstm_236_lstm_cell_518_matmul_readvariableop_resource:2(I
7lstm_236_lstm_cell_518_matmul_1_readvariableop_resource:
(D
6lstm_236_lstm_cell_518_biasadd_readvariableop_resource:(9
'dense_78_matmul_readvariableop_resource:
6
(dense_78_biasadd_readvariableop_resource:
identityѕбdense_78/BiasAdd/ReadVariableOpбdense_78/MatMul/ReadVariableOpб-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOpб,lstm_234/lstm_cell_516/MatMul/ReadVariableOpб.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOpбlstm_234/whileб-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOpб,lstm_235/lstm_cell_517/MatMul/ReadVariableOpб.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOpбlstm_235/whileб-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOpб,lstm_236/lstm_cell_518/MatMul/ReadVariableOpб.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOpбlstm_236/whileD
lstm_234/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_234/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_234/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_234/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_234/strided_sliceStridedSlicelstm_234/Shape:output:0%lstm_234/strided_slice/stack:output:0'lstm_234/strided_slice/stack_1:output:0'lstm_234/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_234/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_234/zeros/packedPacklstm_234/strided_slice:output:0 lstm_234/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_234/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_234/zerosFilllstm_234/zeros/packed:output:0lstm_234/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_234/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_234/zeros_1/packedPacklstm_234/strided_slice:output:0"lstm_234/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_234/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_234/zeros_1Fill lstm_234/zeros_1/packed:output:0lstm_234/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_234/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_234/transpose	Transposeinputs lstm_234/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_234/Shape_1Shapelstm_234/transpose:y:0*
T0*
_output_shapes
:h
lstm_234/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_234/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_234/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_234/strided_slice_1StridedSlicelstm_234/Shape_1:output:0'lstm_234/strided_slice_1/stack:output:0)lstm_234/strided_slice_1/stack_1:output:0)lstm_234/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_234/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_234/TensorArrayV2TensorListReserve-lstm_234/TensorArrayV2/element_shape:output:0!lstm_234/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_234/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_234/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_234/transpose:y:0Glstm_234/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_234/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_234/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_234/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_234/strided_slice_2StridedSlicelstm_234/transpose:y:0'lstm_234/strided_slice_2/stack:output:0)lstm_234/strided_slice_2/stack_1:output:0)lstm_234/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_234/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp5lstm_234_lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_234/lstm_cell_516/MatMulMatMul!lstm_234/strided_slice_2:output:04lstm_234/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp7lstm_234_lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_234/lstm_cell_516/MatMul_1MatMullstm_234/zeros:output:06lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_234/lstm_cell_516/addAddV2'lstm_234/lstm_cell_516/MatMul:product:0)lstm_234/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp6lstm_234_lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_234/lstm_cell_516/BiasAddBiasAddlstm_234/lstm_cell_516/add:z:05lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_234/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_234/lstm_cell_516/splitSplit/lstm_234/lstm_cell_516/split/split_dim:output:0'lstm_234/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_234/lstm_cell_516/SigmoidSigmoid%lstm_234/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_234/lstm_cell_516/Sigmoid_1Sigmoid%lstm_234/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_234/lstm_cell_516/mulMul$lstm_234/lstm_cell_516/Sigmoid_1:y:0lstm_234/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_234/lstm_cell_516/ReluRelu%lstm_234/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dц
lstm_234/lstm_cell_516/mul_1Mul"lstm_234/lstm_cell_516/Sigmoid:y:0)lstm_234/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_234/lstm_cell_516/add_1AddV2lstm_234/lstm_cell_516/mul:z:0 lstm_234/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_234/lstm_cell_516/Sigmoid_2Sigmoid%lstm_234/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dy
lstm_234/lstm_cell_516/Relu_1Relu lstm_234/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_234/lstm_cell_516/mul_2Mul$lstm_234/lstm_cell_516/Sigmoid_2:y:0+lstm_234/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_234/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_234/TensorArrayV2_1TensorListReserve/lstm_234/TensorArrayV2_1/element_shape:output:0!lstm_234/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_234/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_234/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_234/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_234/whileWhile$lstm_234/while/loop_counter:output:0*lstm_234/while/maximum_iterations:output:0lstm_234/time:output:0!lstm_234/TensorArrayV2_1:handle:0lstm_234/zeros:output:0lstm_234/zeros_1:output:0!lstm_234/strided_slice_1:output:0@lstm_234/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_234_lstm_cell_516_matmul_readvariableop_resource7lstm_234_lstm_cell_516_matmul_1_readvariableop_resource6lstm_234_lstm_cell_516_biasadd_readvariableop_resource*
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
lstm_234_while_body_3135769*'
condR
lstm_234_while_cond_3135768*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_234/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_234/TensorArrayV2Stack/TensorListStackTensorListStacklstm_234/while:output:3Blstm_234/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_234/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_234/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_234/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_234/strided_slice_3StridedSlice4lstm_234/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_234/strided_slice_3/stack:output:0)lstm_234/strided_slice_3/stack_1:output:0)lstm_234/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_234/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_234/transpose_1	Transpose4lstm_234/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_234/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_234/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_235/ShapeShapelstm_234/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_235/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_235/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_235/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_235/strided_sliceStridedSlicelstm_235/Shape:output:0%lstm_235/strided_slice/stack:output:0'lstm_235/strided_slice/stack_1:output:0'lstm_235/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_235/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_235/zeros/packedPacklstm_235/strided_slice:output:0 lstm_235/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_235/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_235/zerosFilllstm_235/zeros/packed:output:0lstm_235/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_235/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_235/zeros_1/packedPacklstm_235/strided_slice:output:0"lstm_235/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_235/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_235/zeros_1Fill lstm_235/zeros_1/packed:output:0lstm_235/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_235/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_235/transpose	Transposelstm_234/transpose_1:y:0 lstm_235/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_235/Shape_1Shapelstm_235/transpose:y:0*
T0*
_output_shapes
:h
lstm_235/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_235/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_235/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_235/strided_slice_1StridedSlicelstm_235/Shape_1:output:0'lstm_235/strided_slice_1/stack:output:0)lstm_235/strided_slice_1/stack_1:output:0)lstm_235/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_235/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_235/TensorArrayV2TensorListReserve-lstm_235/TensorArrayV2/element_shape:output:0!lstm_235/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_235/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_235/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_235/transpose:y:0Glstm_235/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_235/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_235/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_235/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_235/strided_slice_2StridedSlicelstm_235/transpose:y:0'lstm_235/strided_slice_2/stack:output:0)lstm_235/strided_slice_2/stack_1:output:0)lstm_235/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_235/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp5lstm_235_lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_235/lstm_cell_517/MatMulMatMul!lstm_235/strided_slice_2:output:04lstm_235/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp7lstm_235_lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_235/lstm_cell_517/MatMul_1MatMullstm_235/zeros:output:06lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_235/lstm_cell_517/addAddV2'lstm_235/lstm_cell_517/MatMul:product:0)lstm_235/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp6lstm_235_lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_235/lstm_cell_517/BiasAddBiasAddlstm_235/lstm_cell_517/add:z:05lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_235/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_235/lstm_cell_517/splitSplit/lstm_235/lstm_cell_517/split/split_dim:output:0'lstm_235/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_235/lstm_cell_517/SigmoidSigmoid%lstm_235/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_235/lstm_cell_517/Sigmoid_1Sigmoid%lstm_235/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_235/lstm_cell_517/mulMul$lstm_235/lstm_cell_517/Sigmoid_1:y:0lstm_235/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_235/lstm_cell_517/ReluRelu%lstm_235/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_235/lstm_cell_517/mul_1Mul"lstm_235/lstm_cell_517/Sigmoid:y:0)lstm_235/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_235/lstm_cell_517/add_1AddV2lstm_235/lstm_cell_517/mul:z:0 lstm_235/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_235/lstm_cell_517/Sigmoid_2Sigmoid%lstm_235/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2y
lstm_235/lstm_cell_517/Relu_1Relu lstm_235/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_235/lstm_cell_517/mul_2Mul$lstm_235/lstm_cell_517/Sigmoid_2:y:0+lstm_235/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_235/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_235/TensorArrayV2_1TensorListReserve/lstm_235/TensorArrayV2_1/element_shape:output:0!lstm_235/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_235/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_235/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_235/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_235/whileWhile$lstm_235/while/loop_counter:output:0*lstm_235/while/maximum_iterations:output:0lstm_235/time:output:0!lstm_235/TensorArrayV2_1:handle:0lstm_235/zeros:output:0lstm_235/zeros_1:output:0!lstm_235/strided_slice_1:output:0@lstm_235/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_235_lstm_cell_517_matmul_readvariableop_resource7lstm_235_lstm_cell_517_matmul_1_readvariableop_resource6lstm_235_lstm_cell_517_biasadd_readvariableop_resource*
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
lstm_235_while_body_3135908*'
condR
lstm_235_while_cond_3135907*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_235/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_235/TensorArrayV2Stack/TensorListStackTensorListStacklstm_235/while:output:3Blstm_235/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_235/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_235/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_235/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_235/strided_slice_3StridedSlice4lstm_235/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_235/strided_slice_3/stack:output:0)lstm_235/strided_slice_3/stack_1:output:0)lstm_235/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_235/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_235/transpose_1	Transpose4lstm_235/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_235/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_235/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_236/ShapeShapelstm_235/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_236/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_236/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_236/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_236/strided_sliceStridedSlicelstm_236/Shape:output:0%lstm_236/strided_slice/stack:output:0'lstm_236/strided_slice/stack_1:output:0'lstm_236/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_236/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_236/zeros/packedPacklstm_236/strided_slice:output:0 lstm_236/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_236/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_236/zerosFilllstm_236/zeros/packed:output:0lstm_236/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_236/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_236/zeros_1/packedPacklstm_236/strided_slice:output:0"lstm_236/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_236/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_236/zeros_1Fill lstm_236/zeros_1/packed:output:0lstm_236/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_236/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_236/transpose	Transposelstm_235/transpose_1:y:0 lstm_236/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_236/Shape_1Shapelstm_236/transpose:y:0*
T0*
_output_shapes
:h
lstm_236/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_236/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_236/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_236/strided_slice_1StridedSlicelstm_236/Shape_1:output:0'lstm_236/strided_slice_1/stack:output:0)lstm_236/strided_slice_1/stack_1:output:0)lstm_236/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_236/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_236/TensorArrayV2TensorListReserve-lstm_236/TensorArrayV2/element_shape:output:0!lstm_236/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_236/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_236/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_236/transpose:y:0Glstm_236/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_236/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_236/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_236/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_236/strided_slice_2StridedSlicelstm_236/transpose:y:0'lstm_236/strided_slice_2/stack:output:0)lstm_236/strided_slice_2/stack_1:output:0)lstm_236/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_236/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp5lstm_236_lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_236/lstm_cell_518/MatMulMatMul!lstm_236/strided_slice_2:output:04lstm_236/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp7lstm_236_lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_236/lstm_cell_518/MatMul_1MatMullstm_236/zeros:output:06lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_236/lstm_cell_518/addAddV2'lstm_236/lstm_cell_518/MatMul:product:0)lstm_236/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp6lstm_236_lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_236/lstm_cell_518/BiasAddBiasAddlstm_236/lstm_cell_518/add:z:05lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_236/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_236/lstm_cell_518/splitSplit/lstm_236/lstm_cell_518/split/split_dim:output:0'lstm_236/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_236/lstm_cell_518/SigmoidSigmoid%lstm_236/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_236/lstm_cell_518/Sigmoid_1Sigmoid%lstm_236/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_236/lstm_cell_518/mulMul$lstm_236/lstm_cell_518/Sigmoid_1:y:0lstm_236/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_236/lstm_cell_518/ReluRelu%lstm_236/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_236/lstm_cell_518/mul_1Mul"lstm_236/lstm_cell_518/Sigmoid:y:0)lstm_236/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_236/lstm_cell_518/add_1AddV2lstm_236/lstm_cell_518/mul:z:0 lstm_236/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_236/lstm_cell_518/Sigmoid_2Sigmoid%lstm_236/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
y
lstm_236/lstm_cell_518/Relu_1Relu lstm_236/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_236/lstm_cell_518/mul_2Mul$lstm_236/lstm_cell_518/Sigmoid_2:y:0+lstm_236/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_236/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_236/TensorArrayV2_1TensorListReserve/lstm_236/TensorArrayV2_1/element_shape:output:0!lstm_236/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_236/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_236/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_236/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_236/whileWhile$lstm_236/while/loop_counter:output:0*lstm_236/while/maximum_iterations:output:0lstm_236/time:output:0!lstm_236/TensorArrayV2_1:handle:0lstm_236/zeros:output:0lstm_236/zeros_1:output:0!lstm_236/strided_slice_1:output:0@lstm_236/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_236_lstm_cell_518_matmul_readvariableop_resource7lstm_236_lstm_cell_518_matmul_1_readvariableop_resource6lstm_236_lstm_cell_518_biasadd_readvariableop_resource*
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
lstm_236_while_body_3136047*'
condR
lstm_236_while_cond_3136046*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_236/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_236/TensorArrayV2Stack/TensorListStackTensorListStacklstm_236/while:output:3Blstm_236/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_236/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_236/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_236/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_236/strided_slice_3StridedSlice4lstm_236/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_236/strided_slice_3/stack:output:0)lstm_236/strided_slice_3/stack_1:output:0)lstm_236/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_236/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_236/transpose_1	Transpose4lstm_236/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_236/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_236/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_78/MatMul/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_78/MatMulMatMul!lstm_236/strided_slice_3:output:0&dense_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_78/BiasAdd/ReadVariableOpReadVariableOp(dense_78_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_78/BiasAddBiasAdddense_78/MatMul:product:0'dense_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_78/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_78/BiasAdd/ReadVariableOp^dense_78/MatMul/ReadVariableOp.^lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp-^lstm_234/lstm_cell_516/MatMul/ReadVariableOp/^lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp^lstm_234/while.^lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp-^lstm_235/lstm_cell_517/MatMul/ReadVariableOp/^lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp^lstm_235/while.^lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp-^lstm_236/lstm_cell_518/MatMul/ReadVariableOp/^lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp^lstm_236/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_78/BiasAdd/ReadVariableOpdense_78/BiasAdd/ReadVariableOp2@
dense_78/MatMul/ReadVariableOpdense_78/MatMul/ReadVariableOp2^
-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp2\
,lstm_234/lstm_cell_516/MatMul/ReadVariableOp,lstm_234/lstm_cell_516/MatMul/ReadVariableOp2`
.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp2 
lstm_234/whilelstm_234/while2^
-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp2\
,lstm_235/lstm_cell_517/MatMul/ReadVariableOp,lstm_235/lstm_cell_517/MatMul/ReadVariableOp2`
.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp2 
lstm_235/whilelstm_235/while2^
-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp2\
,lstm_236/lstm_cell_518/MatMul/ReadVariableOp,lstm_236/lstm_cell_518/MatMul/ReadVariableOp2`
.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp2 
lstm_236/whilelstm_236/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
─8
н
while_body_3137901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_518_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_518_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_518_matmul_readvariableop_resource:2(F
4while_lstm_cell_518_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_518/BiasAdd/ReadVariableOpб)while/lstm_cell_518/MatMul/ReadVariableOpб+while/lstm_cell_518/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_518/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_518/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_518/addAddV2$while/lstm_cell_518/MatMul:product:0&while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_518/BiasAddBiasAddwhile/lstm_cell_518/add:z:02while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_518/splitSplit,while/lstm_cell_518/split/split_dim:output:0$while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_518/SigmoidSigmoid"while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_1Sigmoid"while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_518/mulMul!while/lstm_cell_518/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_518/ReluRelu"while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_518/mul_1Mulwhile/lstm_cell_518/Sigmoid:y:0&while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_518/add_1AddV2while/lstm_cell_518/mul:z:0while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_2Sigmoid"while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_518/Relu_1Reluwhile/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_518/mul_2Mul!while/lstm_cell_518/Sigmoid_2:y:0(while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_518/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_518/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_518/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_518/BiasAdd/ReadVariableOp*^while/lstm_cell_518/MatMul/ReadVariableOp,^while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_518_biasadd_readvariableop_resource5while_lstm_cell_518_biasadd_readvariableop_resource_0"n
4while_lstm_cell_518_matmul_1_readvariableop_resource6while_lstm_cell_518_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_518_matmul_readvariableop_resource4while_lstm_cell_518_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_518/BiasAdd/ReadVariableOp*while/lstm_cell_518/BiasAdd/ReadVariableOp2V
)while/lstm_cell_518/MatMul/ReadVariableOp)while/lstm_cell_518/MatMul/ReadVariableOp2Z
+while/lstm_cell_518/MatMul_1/ReadVariableOp+while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_dense_78_layer_call_fn_3137994

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
E__inference_dense_78_layer_call_and_return_conditional_losses_3134486o
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
║
╚
while_cond_3136668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3136668___redundant_placeholder05
1while_while_cond_3136668___redundant_placeholder15
1while_while_cond_3136668___redundant_placeholder25
1while_while_cond_3136668___redundant_placeholder3
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
В
ш
/__inference_lstm_cell_518_layer_call_fn_3138217

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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133736o
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
while_cond_3136998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3136998___redundant_placeholder05
1while_while_cond_3136998___redundant_placeholder15
1while_while_cond_3136998___redundant_placeholder25
1while_while_cond_3136998___redundant_placeholder3
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
ПJ
а
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137842

inputs>
,lstm_cell_518_matmul_readvariableop_resource:2(@
.lstm_cell_518_matmul_1_readvariableop_resource:
(;
-lstm_cell_518_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_518/BiasAdd/ReadVariableOpб#lstm_cell_518/MatMul/ReadVariableOpб%lstm_cell_518/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_518/MatMul/ReadVariableOpReadVariableOp,lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_518/MatMulMatMulstrided_slice_2:output:0+lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_518/MatMul_1MatMulzeros:output:0-lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_518/addAddV2lstm_cell_518/MatMul:product:0 lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_518/BiasAddBiasAddlstm_cell_518/add:z:0,lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_518/splitSplit&lstm_cell_518/split/split_dim:output:0lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_518/SigmoidSigmoidlstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_1Sigmoidlstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_518/mulMullstm_cell_518/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_518/ReluRelulstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_518/mul_1Mullstm_cell_518/Sigmoid:y:0 lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_518/add_1AddV2lstm_cell_518/mul:z:0lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_2Sigmoidlstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_518/Relu_1Relulstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_518/mul_2Mullstm_cell_518/Sigmoid_2:y:0"lstm_cell_518/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_518_matmul_readvariableop_resource.lstm_cell_518_matmul_1_readvariableop_resource-lstm_cell_518_biasadd_readvariableop_resource*
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
while_body_3137758*
condR
while_cond_3137757*K
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
NoOpNoOp%^lstm_cell_518/BiasAdd/ReadVariableOp$^lstm_cell_518/MatMul/ReadVariableOp&^lstm_cell_518/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_518/BiasAdd/ReadVariableOp$lstm_cell_518/BiasAdd/ReadVariableOp2J
#lstm_cell_518/MatMul/ReadVariableOp#lstm_cell_518/MatMul/ReadVariableOp2N
%lstm_cell_518/MatMul_1/ReadVariableOp%lstm_cell_518/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
РW
Ъ
 __inference__traced_save_3138441
file_prefix.
*savev2_dense_78_kernel_read_readvariableop,
(savev2_dense_78_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_234_lstm_cell_234_kernel_read_readvariableopF
Bsavev2_lstm_234_lstm_cell_234_recurrent_kernel_read_readvariableop:
6savev2_lstm_234_lstm_cell_234_bias_read_readvariableop<
8savev2_lstm_235_lstm_cell_235_kernel_read_readvariableopF
Bsavev2_lstm_235_lstm_cell_235_recurrent_kernel_read_readvariableop:
6savev2_lstm_235_lstm_cell_235_bias_read_readvariableop<
8savev2_lstm_236_lstm_cell_236_kernel_read_readvariableopF
Bsavev2_lstm_236_lstm_cell_236_recurrent_kernel_read_readvariableop:
6savev2_lstm_236_lstm_cell_236_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_78_kernel_m_read_readvariableop3
/savev2_adam_dense_78_bias_m_read_readvariableopC
?savev2_adam_lstm_234_lstm_cell_234_kernel_m_read_readvariableopM
Isavev2_adam_lstm_234_lstm_cell_234_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_234_lstm_cell_234_bias_m_read_readvariableopC
?savev2_adam_lstm_235_lstm_cell_235_kernel_m_read_readvariableopM
Isavev2_adam_lstm_235_lstm_cell_235_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_235_lstm_cell_235_bias_m_read_readvariableopC
?savev2_adam_lstm_236_lstm_cell_236_kernel_m_read_readvariableopM
Isavev2_adam_lstm_236_lstm_cell_236_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_236_lstm_cell_236_bias_m_read_readvariableop5
1savev2_adam_dense_78_kernel_v_read_readvariableop3
/savev2_adam_dense_78_bias_v_read_readvariableopC
?savev2_adam_lstm_234_lstm_cell_234_kernel_v_read_readvariableopM
Isavev2_adam_lstm_234_lstm_cell_234_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_234_lstm_cell_234_bias_v_read_readvariableopC
?savev2_adam_lstm_235_lstm_cell_235_kernel_v_read_readvariableopM
Isavev2_adam_lstm_235_lstm_cell_235_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_235_lstm_cell_235_bias_v_read_readvariableopC
?savev2_adam_lstm_236_lstm_cell_236_kernel_v_read_readvariableopM
Isavev2_adam_lstm_236_lstm_cell_236_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_236_lstm_cell_236_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_78_kernel_read_readvariableop(savev2_dense_78_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_234_lstm_cell_234_kernel_read_readvariableopBsavev2_lstm_234_lstm_cell_234_recurrent_kernel_read_readvariableop6savev2_lstm_234_lstm_cell_234_bias_read_readvariableop8savev2_lstm_235_lstm_cell_235_kernel_read_readvariableopBsavev2_lstm_235_lstm_cell_235_recurrent_kernel_read_readvariableop6savev2_lstm_235_lstm_cell_235_bias_read_readvariableop8savev2_lstm_236_lstm_cell_236_kernel_read_readvariableopBsavev2_lstm_236_lstm_cell_236_recurrent_kernel_read_readvariableop6savev2_lstm_236_lstm_cell_236_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_78_kernel_m_read_readvariableop/savev2_adam_dense_78_bias_m_read_readvariableop?savev2_adam_lstm_234_lstm_cell_234_kernel_m_read_readvariableopIsavev2_adam_lstm_234_lstm_cell_234_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_234_lstm_cell_234_bias_m_read_readvariableop?savev2_adam_lstm_235_lstm_cell_235_kernel_m_read_readvariableopIsavev2_adam_lstm_235_lstm_cell_235_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_235_lstm_cell_235_bias_m_read_readvariableop?savev2_adam_lstm_236_lstm_cell_236_kernel_m_read_readvariableopIsavev2_adam_lstm_236_lstm_cell_236_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_236_lstm_cell_236_bias_m_read_readvariableop1savev2_adam_dense_78_kernel_v_read_readvariableop/savev2_adam_dense_78_bias_v_read_readvariableop?savev2_adam_lstm_234_lstm_cell_234_kernel_v_read_readvariableopIsavev2_adam_lstm_234_lstm_cell_234_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_234_lstm_cell_234_bias_v_read_readvariableop?savev2_adam_lstm_235_lstm_cell_235_kernel_v_read_readvariableopIsavev2_adam_lstm_235_lstm_cell_235_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_235_lstm_cell_235_bias_v_read_readvariableop?savev2_adam_lstm_236_lstm_cell_236_kernel_v_read_readvariableopIsavev2_adam_lstm_236_lstm_cell_236_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_236_lstm_cell_236_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
и

Ч
lstm_235_while_cond_3135907.
*lstm_235_while_lstm_235_while_loop_counter4
0lstm_235_while_lstm_235_while_maximum_iterations
lstm_235_while_placeholder 
lstm_235_while_placeholder_1 
lstm_235_while_placeholder_2 
lstm_235_while_placeholder_30
,lstm_235_while_less_lstm_235_strided_slice_1G
Clstm_235_while_lstm_235_while_cond_3135907___redundant_placeholder0G
Clstm_235_while_lstm_235_while_cond_3135907___redundant_placeholder1G
Clstm_235_while_lstm_235_while_cond_3135907___redundant_placeholder2G
Clstm_235_while_lstm_235_while_cond_3135907___redundant_placeholder3
lstm_235_while_identity
є
lstm_235/while/LessLesslstm_235_while_placeholder,lstm_235_while_less_lstm_235_strided_slice_1*
T0*
_output_shapes
: ]
lstm_235/while/IdentityIdentitylstm_235/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_235_while_identity lstm_235/while/Identity:output:0*(
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
while_cond_3133940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3133940___redundant_placeholder05
1while_while_cond_3133940___redundant_placeholder15
1while_while_cond_3133940___redundant_placeholder25
1while_while_cond_3133940___redundant_placeholder3
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137556
inputs_0>
,lstm_cell_518_matmul_readvariableop_resource:2(@
.lstm_cell_518_matmul_1_readvariableop_resource:
(;
-lstm_cell_518_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_518/BiasAdd/ReadVariableOpб#lstm_cell_518/MatMul/ReadVariableOpб%lstm_cell_518/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_518/MatMul/ReadVariableOpReadVariableOp,lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_518/MatMulMatMulstrided_slice_2:output:0+lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_518/MatMul_1MatMulzeros:output:0-lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_518/addAddV2lstm_cell_518/MatMul:product:0 lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_518/BiasAddBiasAddlstm_cell_518/add:z:0,lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_518/splitSplit&lstm_cell_518/split/split_dim:output:0lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_518/SigmoidSigmoidlstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_1Sigmoidlstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_518/mulMullstm_cell_518/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_518/ReluRelulstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_518/mul_1Mullstm_cell_518/Sigmoid:y:0 lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_518/add_1AddV2lstm_cell_518/mul:z:0lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_2Sigmoidlstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_518/Relu_1Relulstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_518/mul_2Mullstm_cell_518/Sigmoid_2:y:0"lstm_cell_518/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_518_matmul_readvariableop_resource.lstm_cell_518_matmul_1_readvariableop_resource-lstm_cell_518_biasadd_readvariableop_resource*
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
while_body_3137472*
condR
while_cond_3137471*K
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
NoOpNoOp%^lstm_cell_518/BiasAdd/ReadVariableOp$^lstm_cell_518/MatMul/ReadVariableOp&^lstm_cell_518/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_518/BiasAdd/ReadVariableOp$lstm_cell_518/BiasAdd/ReadVariableOp2J
#lstm_cell_518/MatMul/ReadVariableOp#lstm_cell_518/MatMul/ReadVariableOp2N
%lstm_cell_518/MatMul_1/ReadVariableOp%lstm_cell_518/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
║
╚
while_cond_3137471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3137471___redundant_placeholder05
1while_while_cond_3137471___redundant_placeholder15
1while_while_cond_3137471___redundant_placeholder25
1while_while_cond_3137471___redundant_placeholder3
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
ПJ
а
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137985

inputs>
,lstm_cell_518_matmul_readvariableop_resource:2(@
.lstm_cell_518_matmul_1_readvariableop_resource:
(;
-lstm_cell_518_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_518/BiasAdd/ReadVariableOpб#lstm_cell_518/MatMul/ReadVariableOpб%lstm_cell_518/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_518/MatMul/ReadVariableOpReadVariableOp,lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_518/MatMulMatMulstrided_slice_2:output:0+lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_518/MatMul_1MatMulzeros:output:0-lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_518/addAddV2lstm_cell_518/MatMul:product:0 lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_518/BiasAddBiasAddlstm_cell_518/add:z:0,lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_518/splitSplit&lstm_cell_518/split/split_dim:output:0lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_518/SigmoidSigmoidlstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_1Sigmoidlstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_518/mulMullstm_cell_518/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_518/ReluRelulstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_518/mul_1Mullstm_cell_518/Sigmoid:y:0 lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_518/add_1AddV2lstm_cell_518/mul:z:0lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_2Sigmoidlstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_518/Relu_1Relulstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_518/mul_2Mullstm_cell_518/Sigmoid_2:y:0"lstm_cell_518/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_518_matmul_readvariableop_resource.lstm_cell_518_matmul_1_readvariableop_resource-lstm_cell_518_biasadd_readvariableop_resource*
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
while_body_3137901*
condR
while_cond_3137900*K
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
NoOpNoOp%^lstm_cell_518/BiasAdd/ReadVariableOp$^lstm_cell_518/MatMul/ReadVariableOp&^lstm_cell_518/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_518/BiasAdd/ReadVariableOp$lstm_cell_518/BiasAdd/ReadVariableOp2J
#lstm_cell_518/MatMul/ReadVariableOp#lstm_cell_518/MatMul/ReadVariableOp2N
%lstm_cell_518/MatMul_1/ReadVariableOp%lstm_cell_518/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
═
Ѓ
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133736

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
while_cond_3137757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3137757___redundant_placeholder05
1while_while_cond_3137757___redundant_placeholder15
1while_while_cond_3137757___redundant_placeholder25
1while_while_cond_3137757___redundant_placeholder3
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
Н
Ё
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3138298

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
Г
╣
*__inference_lstm_235_layer_call_fn_3136775
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3133660|
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
сS
й
)sequential_78_lstm_235_while_body_3132740J
Fsequential_78_lstm_235_while_sequential_78_lstm_235_while_loop_counterP
Lsequential_78_lstm_235_while_sequential_78_lstm_235_while_maximum_iterations,
(sequential_78_lstm_235_while_placeholder.
*sequential_78_lstm_235_while_placeholder_1.
*sequential_78_lstm_235_while_placeholder_2.
*sequential_78_lstm_235_while_placeholder_3I
Esequential_78_lstm_235_while_sequential_78_lstm_235_strided_slice_1_0є
Ђsequential_78_lstm_235_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_235_tensorarrayunstack_tensorlistfromtensor_0^
Ksequential_78_lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚`
Msequential_78_lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚[
Lsequential_78_lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚)
%sequential_78_lstm_235_while_identity+
'sequential_78_lstm_235_while_identity_1+
'sequential_78_lstm_235_while_identity_2+
'sequential_78_lstm_235_while_identity_3+
'sequential_78_lstm_235_while_identity_4+
'sequential_78_lstm_235_while_identity_5G
Csequential_78_lstm_235_while_sequential_78_lstm_235_strided_slice_1Ѓ
sequential_78_lstm_235_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_235_tensorarrayunstack_tensorlistfromtensor\
Isequential_78_lstm_235_while_lstm_cell_517_matmul_readvariableop_resource:	d╚^
Ksequential_78_lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚Y
Jsequential_78_lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕбAsequential_78/lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpб@sequential_78/lstm_235/while/lstm_cell_517/MatMul/ReadVariableOpбBsequential_78/lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOpЪ
Nsequential_78/lstm_235/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   џ
@sequential_78/lstm_235/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЂsequential_78_lstm_235_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_235_tensorarrayunstack_tensorlistfromtensor_0(sequential_78_lstm_235_while_placeholderWsequential_78/lstm_235/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0═
@sequential_78/lstm_235/while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOpKsequential_78_lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0Ђ
1sequential_78/lstm_235/while/lstm_cell_517/MatMulMatMulGsequential_78/lstm_235/while/TensorArrayV2Read/TensorListGetItem:item:0Hsequential_78/lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Л
Bsequential_78/lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOpMsequential_78_lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0У
3sequential_78/lstm_235/while/lstm_cell_517/MatMul_1MatMul*sequential_78_lstm_235_while_placeholder_2Jsequential_78/lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Т
.sequential_78/lstm_235/while/lstm_cell_517/addAddV2;sequential_78/lstm_235/while/lstm_cell_517/MatMul:product:0=sequential_78/lstm_235/while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚╦
Asequential_78/lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOpLsequential_78_lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0№
2sequential_78/lstm_235/while/lstm_cell_517/BiasAddBiasAdd2sequential_78/lstm_235/while/lstm_cell_517/add:z:0Isequential_78/lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚|
:sequential_78/lstm_235/while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
0sequential_78/lstm_235/while/lstm_cell_517/splitSplitCsequential_78/lstm_235/while/lstm_cell_517/split/split_dim:output:0;sequential_78/lstm_235/while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitф
2sequential_78/lstm_235/while/lstm_cell_517/SigmoidSigmoid9sequential_78/lstm_235/while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2г
4sequential_78/lstm_235/while/lstm_cell_517/Sigmoid_1Sigmoid9sequential_78/lstm_235/while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2═
.sequential_78/lstm_235/while/lstm_cell_517/mulMul8sequential_78/lstm_235/while/lstm_cell_517/Sigmoid_1:y:0*sequential_78_lstm_235_while_placeholder_3*
T0*'
_output_shapes
:         2ц
/sequential_78/lstm_235/while/lstm_cell_517/ReluRelu9sequential_78/lstm_235/while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Я
0sequential_78/lstm_235/while/lstm_cell_517/mul_1Mul6sequential_78/lstm_235/while/lstm_cell_517/Sigmoid:y:0=sequential_78/lstm_235/while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2Н
0sequential_78/lstm_235/while/lstm_cell_517/add_1AddV22sequential_78/lstm_235/while/lstm_cell_517/mul:z:04sequential_78/lstm_235/while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2г
4sequential_78/lstm_235/while/lstm_cell_517/Sigmoid_2Sigmoid9sequential_78/lstm_235/while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2А
1sequential_78/lstm_235/while/lstm_cell_517/Relu_1Relu4sequential_78/lstm_235/while/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2С
0sequential_78/lstm_235/while/lstm_cell_517/mul_2Mul8sequential_78/lstm_235/while/lstm_cell_517/Sigmoid_2:y:0?sequential_78/lstm_235/while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2б
Asequential_78/lstm_235/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_78_lstm_235_while_placeholder_1(sequential_78_lstm_235_while_placeholder4sequential_78/lstm_235/while/lstm_cell_517/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмd
"sequential_78/lstm_235/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
 sequential_78/lstm_235/while/addAddV2(sequential_78_lstm_235_while_placeholder+sequential_78/lstm_235/while/add/y:output:0*
T0*
_output_shapes
: f
$sequential_78/lstm_235/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :├
"sequential_78/lstm_235/while/add_1AddV2Fsequential_78_lstm_235_while_sequential_78_lstm_235_while_loop_counter-sequential_78/lstm_235/while/add_1/y:output:0*
T0*
_output_shapes
: ъ
%sequential_78/lstm_235/while/IdentityIdentity&sequential_78/lstm_235/while/add_1:z:0"^sequential_78/lstm_235/while/NoOp*
T0*
_output_shapes
: к
'sequential_78/lstm_235/while/Identity_1IdentityLsequential_78_lstm_235_while_sequential_78_lstm_235_while_maximum_iterations"^sequential_78/lstm_235/while/NoOp*
T0*
_output_shapes
: ъ
'sequential_78/lstm_235/while/Identity_2Identity$sequential_78/lstm_235/while/add:z:0"^sequential_78/lstm_235/while/NoOp*
T0*
_output_shapes
: ╦
'sequential_78/lstm_235/while/Identity_3IdentityQsequential_78/lstm_235/while/TensorArrayV2Write/TensorListSetItem:output_handle:0"^sequential_78/lstm_235/while/NoOp*
T0*
_output_shapes
: ┐
'sequential_78/lstm_235/while/Identity_4Identity4sequential_78/lstm_235/while/lstm_cell_517/mul_2:z:0"^sequential_78/lstm_235/while/NoOp*
T0*'
_output_shapes
:         2┐
'sequential_78/lstm_235/while/Identity_5Identity4sequential_78/lstm_235/while/lstm_cell_517/add_1:z:0"^sequential_78/lstm_235/while/NoOp*
T0*'
_output_shapes
:         2»
!sequential_78/lstm_235/while/NoOpNoOpB^sequential_78/lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpA^sequential_78/lstm_235/while/lstm_cell_517/MatMul/ReadVariableOpC^sequential_78/lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "W
%sequential_78_lstm_235_while_identity.sequential_78/lstm_235/while/Identity:output:0"[
'sequential_78_lstm_235_while_identity_10sequential_78/lstm_235/while/Identity_1:output:0"[
'sequential_78_lstm_235_while_identity_20sequential_78/lstm_235/while/Identity_2:output:0"[
'sequential_78_lstm_235_while_identity_30sequential_78/lstm_235/while/Identity_3:output:0"[
'sequential_78_lstm_235_while_identity_40sequential_78/lstm_235/while/Identity_4:output:0"[
'sequential_78_lstm_235_while_identity_50sequential_78/lstm_235/while/Identity_5:output:0"џ
Jsequential_78_lstm_235_while_lstm_cell_517_biasadd_readvariableop_resourceLsequential_78_lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0"ю
Ksequential_78_lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resourceMsequential_78_lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0"ў
Isequential_78_lstm_235_while_lstm_cell_517_matmul_readvariableop_resourceKsequential_78_lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0"ї
Csequential_78_lstm_235_while_sequential_78_lstm_235_strided_slice_1Esequential_78_lstm_235_while_sequential_78_lstm_235_strided_slice_1_0"Ё
sequential_78_lstm_235_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_235_tensorarrayunstack_tensorlistfromtensorЂsequential_78_lstm_235_while_tensorarrayv2read_tensorlistgetitem_sequential_78_lstm_235_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2є
Asequential_78/lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpAsequential_78/lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp2ё
@sequential_78/lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp@sequential_78/lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp2ѕ
Bsequential_78/lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOpBsequential_78/lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Л8
┌
while_body_3134084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_516_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_516_matmul_readvariableop_resource:	љG
4while_lstm_cell_516_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_516/BiasAdd/ReadVariableOpб)while/lstm_cell_516/MatMul/ReadVariableOpб+while/lstm_cell_516/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_516/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_516/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_516/addAddV2$while/lstm_cell_516/MatMul:product:0&while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_516/BiasAddBiasAddwhile/lstm_cell_516/add:z:02while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_516/splitSplit,while/lstm_cell_516/split/split_dim:output:0$while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_516/SigmoidSigmoid"while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_1Sigmoid"while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_516/mulMul!while/lstm_cell_516/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_516/ReluRelu"while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_516/mul_1Mulwhile/lstm_cell_516/Sigmoid:y:0&while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_516/add_1AddV2while/lstm_cell_516/mul:z:0while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_2Sigmoid"while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_516/Relu_1Reluwhile/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_516/mul_2Mul!while/lstm_cell_516/Sigmoid_2:y:0(while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_516/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_516/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_516/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_516/BiasAdd/ReadVariableOp*^while/lstm_cell_516/MatMul/ReadVariableOp,^while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_516_biasadd_readvariableop_resource5while_lstm_cell_516_biasadd_readvariableop_resource_0"n
4while_lstm_cell_516_matmul_1_readvariableop_resource6while_lstm_cell_516_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_516_matmul_readvariableop_resource4while_lstm_cell_516_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_516/BiasAdd/ReadVariableOp*while/lstm_cell_516/BiasAdd/ReadVariableOp2V
)while/lstm_cell_516/MatMul/ReadVariableOp)while/lstm_cell_516/MatMul/ReadVariableOp2Z
+while/lstm_cell_516/MatMul_1/ReadVariableOp+while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3134233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3134233___redundant_placeholder05
1while_while_cond_3134233___redundant_placeholder15
1while_while_cond_3134233___redundant_placeholder25
1while_while_cond_3134233___redundant_placeholder3
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
while_cond_3136855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3136855___redundant_placeholder05
1while_while_cond_3136855___redundant_placeholder15
1while_while_cond_3136855___redundant_placeholder25
1while_while_cond_3136855___redundant_placeholder3
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
Л8
┌
while_body_3137285
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_517_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_517/BiasAdd/ReadVariableOpб)while/lstm_cell_517/MatMul/ReadVariableOpб+while/lstm_cell_517/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_517/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_517/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_517/addAddV2$while/lstm_cell_517/MatMul:product:0&while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_517/BiasAddBiasAddwhile/lstm_cell_517/add:z:02while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_517/splitSplit,while/lstm_cell_517/split/split_dim:output:0$while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_517/SigmoidSigmoid"while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_1Sigmoid"while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_517/mulMul!while/lstm_cell_517/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_517/ReluRelu"while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_517/mul_1Mulwhile/lstm_cell_517/Sigmoid:y:0&while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_517/add_1AddV2while/lstm_cell_517/mul:z:0while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_2Sigmoid"while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_517/Relu_1Reluwhile/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_517/mul_2Mul!while/lstm_cell_517/Sigmoid_2:y:0(while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_517/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_517/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_517/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_517/BiasAdd/ReadVariableOp*^while/lstm_cell_517/MatMul/ReadVariableOp,^while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_517_biasadd_readvariableop_resource5while_lstm_cell_517_biasadd_readvariableop_resource_0"n
4while_lstm_cell_517_matmul_1_readvariableop_resource6while_lstm_cell_517_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_517_matmul_readvariableop_resource4while_lstm_cell_517_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_517/BiasAdd/ReadVariableOp*while/lstm_cell_517/BiasAdd/ReadVariableOp2V
)while/lstm_cell_517/MatMul/ReadVariableOp)while/lstm_cell_517/MatMul/ReadVariableOp2Z
+while/lstm_cell_517/MatMul_1/ReadVariableOp+while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
АC
Щ

lstm_235_while_body_3135481.
*lstm_235_while_lstm_235_while_loop_counter4
0lstm_235_while_lstm_235_while_maximum_iterations
lstm_235_while_placeholder 
lstm_235_while_placeholder_1 
lstm_235_while_placeholder_2 
lstm_235_while_placeholder_3-
)lstm_235_while_lstm_235_strided_slice_1_0i
elstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚R
?lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚M
>lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
lstm_235_while_identity
lstm_235_while_identity_1
lstm_235_while_identity_2
lstm_235_while_identity_3
lstm_235_while_identity_4
lstm_235_while_identity_5+
'lstm_235_while_lstm_235_strided_slice_1g
clstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensorN
;lstm_235_while_lstm_cell_517_matmul_readvariableop_resource:	d╚P
=lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚K
<lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpб2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOpб4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOpЉ
@lstm_235/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_235/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensor_0lstm_235_while_placeholderIlstm_235/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp=lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_235/while/lstm_cell_517/MatMulMatMul9lstm_235/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp?lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_235/while/lstm_cell_517/MatMul_1MatMullstm_235_while_placeholder_2<lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_235/while/lstm_cell_517/addAddV2-lstm_235/while/lstm_cell_517/MatMul:product:0/lstm_235/while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp>lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_235/while/lstm_cell_517/BiasAddBiasAdd$lstm_235/while/lstm_cell_517/add:z:0;lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_235/while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_235/while/lstm_cell_517/splitSplit5lstm_235/while/lstm_cell_517/split/split_dim:output:0-lstm_235/while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_235/while/lstm_cell_517/SigmoidSigmoid+lstm_235/while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_235/while/lstm_cell_517/Sigmoid_1Sigmoid+lstm_235/while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_235/while/lstm_cell_517/mulMul*lstm_235/while/lstm_cell_517/Sigmoid_1:y:0lstm_235_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_235/while/lstm_cell_517/ReluRelu+lstm_235/while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_235/while/lstm_cell_517/mul_1Mul(lstm_235/while/lstm_cell_517/Sigmoid:y:0/lstm_235/while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_235/while/lstm_cell_517/add_1AddV2$lstm_235/while/lstm_cell_517/mul:z:0&lstm_235/while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_235/while/lstm_cell_517/Sigmoid_2Sigmoid+lstm_235/while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_235/while/lstm_cell_517/Relu_1Relu&lstm_235/while/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_235/while/lstm_cell_517/mul_2Mul*lstm_235/while/lstm_cell_517/Sigmoid_2:y:01lstm_235/while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_235/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_235_while_placeholder_1lstm_235_while_placeholder&lstm_235/while/lstm_cell_517/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_235/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_235/while/addAddV2lstm_235_while_placeholderlstm_235/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_235/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_235/while/add_1AddV2*lstm_235_while_lstm_235_while_loop_counterlstm_235/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_235/while/IdentityIdentitylstm_235/while/add_1:z:0^lstm_235/while/NoOp*
T0*
_output_shapes
: ј
lstm_235/while/Identity_1Identity0lstm_235_while_lstm_235_while_maximum_iterations^lstm_235/while/NoOp*
T0*
_output_shapes
: t
lstm_235/while/Identity_2Identitylstm_235/while/add:z:0^lstm_235/while/NoOp*
T0*
_output_shapes
: А
lstm_235/while/Identity_3IdentityClstm_235/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_235/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_235/while/Identity_4Identity&lstm_235/while/lstm_cell_517/mul_2:z:0^lstm_235/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_235/while/Identity_5Identity&lstm_235/while/lstm_cell_517/add_1:z:0^lstm_235/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_235/while/NoOpNoOp4^lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp3^lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp5^lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_235_while_identity lstm_235/while/Identity:output:0"?
lstm_235_while_identity_1"lstm_235/while/Identity_1:output:0"?
lstm_235_while_identity_2"lstm_235/while/Identity_2:output:0"?
lstm_235_while_identity_3"lstm_235/while/Identity_3:output:0"?
lstm_235_while_identity_4"lstm_235/while/Identity_4:output:0"?
lstm_235_while_identity_5"lstm_235/while/Identity_5:output:0"T
'lstm_235_while_lstm_235_strided_slice_1)lstm_235_while_lstm_235_strided_slice_1_0"~
<lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource>lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0"ђ
=lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource?lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0"|
;lstm_235_while_lstm_cell_517_matmul_readvariableop_resource=lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0"╠
clstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensorelstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp2h
2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp2l
4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3135014

inputs?
,lstm_cell_516_matmul_readvariableop_resource:	љA
.lstm_cell_516_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_516_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_516/BiasAdd/ReadVariableOpб#lstm_cell_516/MatMul/ReadVariableOpб%lstm_cell_516/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_516/MatMul/ReadVariableOpReadVariableOp,lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_516/MatMulMatMulstrided_slice_2:output:0+lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_516/MatMul_1MatMulzeros:output:0-lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_516/addAddV2lstm_cell_516/MatMul:product:0 lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_516/BiasAddBiasAddlstm_cell_516/add:z:0,lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_516/splitSplit&lstm_cell_516/split/split_dim:output:0lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_516/SigmoidSigmoidlstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_1Sigmoidlstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_516/mulMullstm_cell_516/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_516/ReluRelulstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_516/mul_1Mullstm_cell_516/Sigmoid:y:0 lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_516/add_1AddV2lstm_cell_516/mul:z:0lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_2Sigmoidlstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_516/Relu_1Relulstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_516/mul_2Mullstm_cell_516/Sigmoid_2:y:0"lstm_cell_516/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_516_matmul_readvariableop_resource.lstm_cell_516_matmul_1_readvariableop_resource-lstm_cell_516_biasadd_readvariableop_resource*
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
while_body_3134930*
condR
while_cond_3134929*K
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
NoOpNoOp%^lstm_cell_516/BiasAdd/ReadVariableOp$^lstm_cell_516/MatMul/ReadVariableOp&^lstm_cell_516/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_516/BiasAdd/ReadVariableOp$lstm_cell_516/BiasAdd/ReadVariableOp2J
#lstm_cell_516/MatMul/ReadVariableOp#lstm_cell_516/MatMul/ReadVariableOp2N
%lstm_cell_516/MatMul_1/ReadVariableOp%lstm_cell_516/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ѕ#
в
while_body_3133941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_518_3133965_0:2(/
while_lstm_cell_518_3133967_0:
(+
while_lstm_cell_518_3133969_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_518_3133965:2(-
while_lstm_cell_518_3133967:
()
while_lstm_cell_518_3133969:(ѕб+while/lstm_cell_518/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_518/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_518_3133965_0while_lstm_cell_518_3133967_0while_lstm_cell_518_3133969_0*
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133882П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_518/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_518/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_518/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_518/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_518_3133965while_lstm_cell_518_3133965_0"<
while_lstm_cell_518_3133967while_lstm_cell_518_3133967_0"<
while_lstm_cell_518_3133969while_lstm_cell_518_3133969_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_518/StatefulPartitionedCall+while/lstm_cell_518/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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

lstm_234_while_body_3135769.
*lstm_234_while_lstm_234_while_loop_counter4
0lstm_234_while_lstm_234_while_maximum_iterations
lstm_234_while_placeholder 
lstm_234_while_placeholder_1 
lstm_234_while_placeholder_2 
lstm_234_while_placeholder_3-
)lstm_234_while_lstm_234_strided_slice_1_0i
elstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0:	љR
?lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљM
>lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
lstm_234_while_identity
lstm_234_while_identity_1
lstm_234_while_identity_2
lstm_234_while_identity_3
lstm_234_while_identity_4
lstm_234_while_identity_5+
'lstm_234_while_lstm_234_strided_slice_1g
clstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensorN
;lstm_234_while_lstm_cell_516_matmul_readvariableop_resource:	љP
=lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource:	dљK
<lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpб2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOpб4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOpЉ
@lstm_234/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_234/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensor_0lstm_234_while_placeholderIlstm_234/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp=lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_234/while/lstm_cell_516/MatMulMatMul9lstm_234/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp?lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_234/while/lstm_cell_516/MatMul_1MatMullstm_234_while_placeholder_2<lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_234/while/lstm_cell_516/addAddV2-lstm_234/while/lstm_cell_516/MatMul:product:0/lstm_234/while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp>lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_234/while/lstm_cell_516/BiasAddBiasAdd$lstm_234/while/lstm_cell_516/add:z:0;lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_234/while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_234/while/lstm_cell_516/splitSplit5lstm_234/while/lstm_cell_516/split/split_dim:output:0-lstm_234/while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_234/while/lstm_cell_516/SigmoidSigmoid+lstm_234/while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_234/while/lstm_cell_516/Sigmoid_1Sigmoid+lstm_234/while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_234/while/lstm_cell_516/mulMul*lstm_234/while/lstm_cell_516/Sigmoid_1:y:0lstm_234_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_234/while/lstm_cell_516/ReluRelu+lstm_234/while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_234/while/lstm_cell_516/mul_1Mul(lstm_234/while/lstm_cell_516/Sigmoid:y:0/lstm_234/while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_234/while/lstm_cell_516/add_1AddV2$lstm_234/while/lstm_cell_516/mul:z:0&lstm_234/while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_234/while/lstm_cell_516/Sigmoid_2Sigmoid+lstm_234/while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_234/while/lstm_cell_516/Relu_1Relu&lstm_234/while/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_234/while/lstm_cell_516/mul_2Mul*lstm_234/while/lstm_cell_516/Sigmoid_2:y:01lstm_234/while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_234/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_234_while_placeholder_1lstm_234_while_placeholder&lstm_234/while/lstm_cell_516/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_234/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_234/while/addAddV2lstm_234_while_placeholderlstm_234/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_234/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_234/while/add_1AddV2*lstm_234_while_lstm_234_while_loop_counterlstm_234/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_234/while/IdentityIdentitylstm_234/while/add_1:z:0^lstm_234/while/NoOp*
T0*
_output_shapes
: ј
lstm_234/while/Identity_1Identity0lstm_234_while_lstm_234_while_maximum_iterations^lstm_234/while/NoOp*
T0*
_output_shapes
: t
lstm_234/while/Identity_2Identitylstm_234/while/add:z:0^lstm_234/while/NoOp*
T0*
_output_shapes
: А
lstm_234/while/Identity_3IdentityClstm_234/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_234/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_234/while/Identity_4Identity&lstm_234/while/lstm_cell_516/mul_2:z:0^lstm_234/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_234/while/Identity_5Identity&lstm_234/while/lstm_cell_516/add_1:z:0^lstm_234/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_234/while/NoOpNoOp4^lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp3^lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp5^lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_234_while_identity lstm_234/while/Identity:output:0"?
lstm_234_while_identity_1"lstm_234/while/Identity_1:output:0"?
lstm_234_while_identity_2"lstm_234/while/Identity_2:output:0"?
lstm_234_while_identity_3"lstm_234/while/Identity_3:output:0"?
lstm_234_while_identity_4"lstm_234/while/Identity_4:output:0"?
lstm_234_while_identity_5"lstm_234/while/Identity_5:output:0"T
'lstm_234_while_lstm_234_strided_slice_1)lstm_234_while_lstm_234_strided_slice_1_0"~
<lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource>lstm_234_while_lstm_cell_516_biasadd_readvariableop_resource_0"ђ
=lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource?lstm_234_while_lstm_cell_516_matmul_1_readvariableop_resource_0"|
;lstm_234_while_lstm_cell_516_matmul_readvariableop_resource=lstm_234_while_lstm_cell_516_matmul_readvariableop_resource_0"╠
clstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensorelstm_234_while_tensorarrayv2read_tensorlistgetitem_lstm_234_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp3lstm_234/while/lstm_cell_516/BiasAdd/ReadVariableOp2h
2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp2lstm_234/while/lstm_cell_516/MatMul/ReadVariableOp2l
4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp4lstm_234/while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3136382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3136382___redundant_placeholder05
1while_while_cond_3136382___redundant_placeholder15
1while_while_cond_3136382___redundant_placeholder25
1while_while_cond_3136382___redundant_placeholder3
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
while_body_3134600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_518_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_518_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_518_matmul_readvariableop_resource:2(F
4while_lstm_cell_518_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_518/BiasAdd/ReadVariableOpб)while/lstm_cell_518/MatMul/ReadVariableOpб+while/lstm_cell_518/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_518/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_518/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_518/addAddV2$while/lstm_cell_518/MatMul:product:0&while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_518/BiasAddBiasAddwhile/lstm_cell_518/add:z:02while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_518/splitSplit,while/lstm_cell_518/split/split_dim:output:0$while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_518/SigmoidSigmoid"while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_1Sigmoid"while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_518/mulMul!while/lstm_cell_518/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_518/ReluRelu"while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_518/mul_1Mulwhile/lstm_cell_518/Sigmoid:y:0&while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_518/add_1AddV2while/lstm_cell_518/mul:z:0while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_2Sigmoid"while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_518/Relu_1Reluwhile/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_518/mul_2Mul!while/lstm_cell_518/Sigmoid_2:y:0(while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_518/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_518/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_518/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_518/BiasAdd/ReadVariableOp*^while/lstm_cell_518/MatMul/ReadVariableOp,^while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_518_biasadd_readvariableop_resource5while_lstm_cell_518_biasadd_readvariableop_resource_0"n
4while_lstm_cell_518_matmul_1_readvariableop_resource6while_lstm_cell_518_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_518_matmul_readvariableop_resource4while_lstm_cell_518_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_518/BiasAdd/ReadVariableOp*while/lstm_cell_518/BiasAdd/ReadVariableOp2V
)while/lstm_cell_518/MatMul/ReadVariableOp)while/lstm_cell_518/MatMul/ReadVariableOp2Z
+while/lstm_cell_518/MatMul_1/ReadVariableOp+while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
┬

Ў
%__inference_signature_wrapper_3135229
lstm_234_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_234_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3132969o
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
_user_specified_namelstm_234_input
Э
┤
*__inference_lstm_236_layer_call_fn_3137402

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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134468o
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
┐
ћ
)sequential_78_lstm_236_while_cond_3132878J
Fsequential_78_lstm_236_while_sequential_78_lstm_236_while_loop_counterP
Lsequential_78_lstm_236_while_sequential_78_lstm_236_while_maximum_iterations,
(sequential_78_lstm_236_while_placeholder.
*sequential_78_lstm_236_while_placeholder_1.
*sequential_78_lstm_236_while_placeholder_2.
*sequential_78_lstm_236_while_placeholder_3L
Hsequential_78_lstm_236_while_less_sequential_78_lstm_236_strided_slice_1c
_sequential_78_lstm_236_while_sequential_78_lstm_236_while_cond_3132878___redundant_placeholder0c
_sequential_78_lstm_236_while_sequential_78_lstm_236_while_cond_3132878___redundant_placeholder1c
_sequential_78_lstm_236_while_sequential_78_lstm_236_while_cond_3132878___redundant_placeholder2c
_sequential_78_lstm_236_while_sequential_78_lstm_236_while_cond_3132878___redundant_placeholder3)
%sequential_78_lstm_236_while_identity
Й
!sequential_78/lstm_236/while/LessLess(sequential_78_lstm_236_while_placeholderHsequential_78_lstm_236_while_less_sequential_78_lstm_236_strided_slice_1*
T0*
_output_shapes
: y
%sequential_78/lstm_236/while/IdentityIdentity%sequential_78/lstm_236/while/Less:z:0*
T0
*
_output_shapes
: "W
%sequential_78_lstm_236_while_identity.sequential_78/lstm_236/while/Identity:output:0*(
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
ПJ
а
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134684

inputs>
,lstm_cell_518_matmul_readvariableop_resource:2(@
.lstm_cell_518_matmul_1_readvariableop_resource:
(;
-lstm_cell_518_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_518/BiasAdd/ReadVariableOpб#lstm_cell_518/MatMul/ReadVariableOpб%lstm_cell_518/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_518/MatMul/ReadVariableOpReadVariableOp,lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_518/MatMulMatMulstrided_slice_2:output:0+lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_518/MatMul_1MatMulzeros:output:0-lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_518/addAddV2lstm_cell_518/MatMul:product:0 lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_518/BiasAddBiasAddlstm_cell_518/add:z:0,lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_518/splitSplit&lstm_cell_518/split/split_dim:output:0lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_518/SigmoidSigmoidlstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_1Sigmoidlstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_518/mulMullstm_cell_518/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_518/ReluRelulstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_518/mul_1Mullstm_cell_518/Sigmoid:y:0 lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_518/add_1AddV2lstm_cell_518/mul:z:0lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_2Sigmoidlstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_518/Relu_1Relulstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_518/mul_2Mullstm_cell_518/Sigmoid_2:y:0"lstm_cell_518/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_518_matmul_readvariableop_resource.lstm_cell_518_matmul_1_readvariableop_resource-lstm_cell_518_biasadd_readvariableop_resource*
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
while_body_3134600*
condR
while_cond_3134599*K
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
NoOpNoOp%^lstm_cell_518/BiasAdd/ReadVariableOp$^lstm_cell_518/MatMul/ReadVariableOp&^lstm_cell_518/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_518/BiasAdd/ReadVariableOp$lstm_cell_518/BiasAdd/ReadVariableOp2J
#lstm_cell_518/MatMul/ReadVariableOp#lstm_cell_518/MatMul/ReadVariableOp2N
%lstm_cell_518/MatMul_1/ReadVariableOp%lstm_cell_518/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3138102

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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134010

inputs'
lstm_cell_518_3133928:2('
lstm_cell_518_3133930:
(#
lstm_cell_518_3133932:(
identityѕб%lstm_cell_518/StatefulPartitionedCallбwhile;
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
%lstm_cell_518/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_518_3133928lstm_cell_518_3133930lstm_cell_518_3133932*
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133882n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_518_3133928lstm_cell_518_3133930lstm_cell_518_3133932*
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
while_body_3133941*
condR
while_cond_3133940*K
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
NoOpNoOp&^lstm_cell_518/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_518/StatefulPartitionedCall%lstm_cell_518/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
─8
н
while_body_3137758
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_518_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_518_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_518_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_518_matmul_readvariableop_resource:2(F
4while_lstm_cell_518_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_518_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_518/BiasAdd/ReadVariableOpб)while/lstm_cell_518/MatMul/ReadVariableOpб+while/lstm_cell_518/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_518_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_518/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_518_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_518/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_518/addAddV2$while/lstm_cell_518/MatMul:product:0&while/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_518_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_518/BiasAddBiasAddwhile/lstm_cell_518/add:z:02while/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_518/splitSplit,while/lstm_cell_518/split/split_dim:output:0$while/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_518/SigmoidSigmoid"while/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_1Sigmoid"while/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_518/mulMul!while/lstm_cell_518/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_518/ReluRelu"while/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_518/mul_1Mulwhile/lstm_cell_518/Sigmoid:y:0&while/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_518/add_1AddV2while/lstm_cell_518/mul:z:0while/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_518/Sigmoid_2Sigmoid"while/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_518/Relu_1Reluwhile/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_518/mul_2Mul!while/lstm_cell_518/Sigmoid_2:y:0(while/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_518/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_518/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_518/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_518/BiasAdd/ReadVariableOp*^while/lstm_cell_518/MatMul/ReadVariableOp,^while/lstm_cell_518/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_518_biasadd_readvariableop_resource5while_lstm_cell_518_biasadd_readvariableop_resource_0"n
4while_lstm_cell_518_matmul_1_readvariableop_resource6while_lstm_cell_518_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_518_matmul_readvariableop_resource4while_lstm_cell_518_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_518/BiasAdd/ReadVariableOp*while/lstm_cell_518/BiasAdd/ReadVariableOp2V
)while/lstm_cell_518/MatMul/ReadVariableOp)while/lstm_cell_518/MatMul/ReadVariableOp2Z
+while/lstm_cell_518/MatMul_1/ReadVariableOp+while/lstm_cell_518/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3133590
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3133590___redundant_placeholder05
1while_while_cond_3133590___redundant_placeholder15
1while_while_cond_3133590___redundant_placeholder25
1while_while_cond_3133590___redundant_placeholder3
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
*__inference_lstm_236_layer_call_fn_3137413

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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134684o
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
њK
б
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137699
inputs_0>
,lstm_cell_518_matmul_readvariableop_resource:2(@
.lstm_cell_518_matmul_1_readvariableop_resource:
(;
-lstm_cell_518_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_518/BiasAdd/ReadVariableOpб#lstm_cell_518/MatMul/ReadVariableOpб%lstm_cell_518/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_518/MatMul/ReadVariableOpReadVariableOp,lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_518/MatMulMatMulstrided_slice_2:output:0+lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_518/MatMul_1MatMulzeros:output:0-lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_518/addAddV2lstm_cell_518/MatMul:product:0 lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_518/BiasAddBiasAddlstm_cell_518/add:z:0,lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_518/splitSplit&lstm_cell_518/split/split_dim:output:0lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_518/SigmoidSigmoidlstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_1Sigmoidlstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_518/mulMullstm_cell_518/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_518/ReluRelulstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_518/mul_1Mullstm_cell_518/Sigmoid:y:0 lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_518/add_1AddV2lstm_cell_518/mul:z:0lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_518/Sigmoid_2Sigmoidlstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_518/Relu_1Relulstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_518/mul_2Mullstm_cell_518/Sigmoid_2:y:0"lstm_cell_518/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_518_matmul_readvariableop_resource.lstm_cell_518_matmul_1_readvariableop_resource-lstm_cell_518_biasadd_readvariableop_resource*
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
while_body_3137615*
condR
while_cond_3137614*K
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
NoOpNoOp%^lstm_cell_518/BiasAdd/ReadVariableOp$^lstm_cell_518/MatMul/ReadVariableOp&^lstm_cell_518/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_518/BiasAdd/ReadVariableOp$lstm_cell_518/BiasAdd/ReadVariableOp2J
#lstm_cell_518/MatMul/ReadVariableOp#lstm_cell_518/MatMul/ReadVariableOp2N
%lstm_cell_518/MatMul_1/ReadVariableOp%lstm_cell_518/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
и

Ч
lstm_234_while_cond_3135341.
*lstm_234_while_lstm_234_while_loop_counter4
0lstm_234_while_lstm_234_while_maximum_iterations
lstm_234_while_placeholder 
lstm_234_while_placeholder_1 
lstm_234_while_placeholder_2 
lstm_234_while_placeholder_30
,lstm_234_while_less_lstm_234_strided_slice_1G
Clstm_234_while_lstm_234_while_cond_3135341___redundant_placeholder0G
Clstm_234_while_lstm_234_while_cond_3135341___redundant_placeholder1G
Clstm_234_while_lstm_234_while_cond_3135341___redundant_placeholder2G
Clstm_234_while_lstm_234_while_cond_3135341___redundant_placeholder3
lstm_234_while_identity
є
lstm_234/while/LessLesslstm_234_while_placeholder,lstm_234_while_less_lstm_234_strided_slice_1*
T0*
_output_shapes
: ]
lstm_234/while/IdentityIdentitylstm_234/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_234_while_identity lstm_234/while/Identity:output:0*(
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
љ
Х
*__inference_lstm_236_layer_call_fn_3137391
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3134010o
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
while_body_3136999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_517_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_517/BiasAdd/ReadVariableOpб)while/lstm_cell_517/MatMul/ReadVariableOpб+while/lstm_cell_517/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_517/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_517/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_517/addAddV2$while/lstm_cell_517/MatMul:product:0&while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_517/BiasAddBiasAddwhile/lstm_cell_517/add:z:02while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_517/splitSplit,while/lstm_cell_517/split/split_dim:output:0$while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_517/SigmoidSigmoid"while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_1Sigmoid"while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_517/mulMul!while/lstm_cell_517/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_517/ReluRelu"while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_517/mul_1Mulwhile/lstm_cell_517/Sigmoid:y:0&while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_517/add_1AddV2while/lstm_cell_517/mul:z:0while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_2Sigmoid"while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_517/Relu_1Reluwhile/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_517/mul_2Mul!while/lstm_cell_517/Sigmoid_2:y:0(while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_517/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_517/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_517/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_517/BiasAdd/ReadVariableOp*^while/lstm_cell_517/MatMul/ReadVariableOp,^while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_517_biasadd_readvariableop_resource5while_lstm_cell_517_biasadd_readvariableop_resource_0"n
4while_lstm_cell_517_matmul_1_readvariableop_resource6while_lstm_cell_517_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_517_matmul_readvariableop_resource4while_lstm_cell_517_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_517/BiasAdd/ReadVariableOp*while/lstm_cell_517/BiasAdd/ReadVariableOp2V
)while/lstm_cell_517/MatMul/ReadVariableOp)while/lstm_cell_517/MatMul/ReadVariableOp2Z
+while/lstm_cell_517/MatMul_1/ReadVariableOp+while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ј#
ы
while_body_3133591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_517_3133615_0:	d╚0
while_lstm_cell_517_3133617_0:	2╚,
while_lstm_cell_517_3133619_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_517_3133615:	d╚.
while_lstm_cell_517_3133617:	2╚*
while_lstm_cell_517_3133619:	╚ѕб+while/lstm_cell_517/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_517/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_517_3133615_0while_lstm_cell_517_3133617_0while_lstm_cell_517_3133619_0*
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3133532П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_517/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_517/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_517/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_517/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_517_3133615while_lstm_cell_517_3133615_0"<
while_lstm_cell_517_3133617while_lstm_cell_517_3133617_0"<
while_lstm_cell_517_3133619while_lstm_cell_517_3133619_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_517/StatefulPartitionedCall+while/lstm_cell_517/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
Л8
┌
while_body_3134765
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_517_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_517/BiasAdd/ReadVariableOpб)while/lstm_cell_517/MatMul/ReadVariableOpб+while/lstm_cell_517/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_517/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_517/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_517/addAddV2$while/lstm_cell_517/MatMul:product:0&while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_517/BiasAddBiasAddwhile/lstm_cell_517/add:z:02while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_517/splitSplit,while/lstm_cell_517/split/split_dim:output:0$while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_517/SigmoidSigmoid"while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_1Sigmoid"while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_517/mulMul!while/lstm_cell_517/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_517/ReluRelu"while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_517/mul_1Mulwhile/lstm_cell_517/Sigmoid:y:0&while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_517/add_1AddV2while/lstm_cell_517/mul:z:0while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_2Sigmoid"while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_517/Relu_1Reluwhile/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_517/mul_2Mul!while/lstm_cell_517/Sigmoid_2:y:0(while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_517/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_517/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_517/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_517/BiasAdd/ReadVariableOp*^while/lstm_cell_517/MatMul/ReadVariableOp,^while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_517_biasadd_readvariableop_resource5while_lstm_cell_517_biasadd_readvariableop_resource_0"n
4while_lstm_cell_517_matmul_1_readvariableop_resource6while_lstm_cell_517_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_517_matmul_readvariableop_resource4while_lstm_cell_517_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_517/BiasAdd/ReadVariableOp*while/lstm_cell_517/BiasAdd/ReadVariableOp2V
)while/lstm_cell_517/MatMul/ReadVariableOp)while/lstm_cell_517/MatMul/ReadVariableOp2Z
+while/lstm_cell_517/MatMul_1/ReadVariableOp+while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3138168

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
║
╚
while_cond_3134929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3134929___redundant_placeholder05
1while_while_cond_3134929___redundant_placeholder15
1while_while_cond_3134929___redundant_placeholder25
1while_while_cond_3134929___redundant_placeholder3
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
while_cond_3137141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3137141___redundant_placeholder05
1while_while_cond_3137141___redundant_placeholder15
1while_while_cond_3137141___redundant_placeholder25
1while_while_cond_3137141___redundant_placeholder3
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3134168

inputs?
,lstm_cell_516_matmul_readvariableop_resource:	љA
.lstm_cell_516_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_516_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_516/BiasAdd/ReadVariableOpб#lstm_cell_516/MatMul/ReadVariableOpб%lstm_cell_516/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_516/MatMul/ReadVariableOpReadVariableOp,lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_516/MatMulMatMulstrided_slice_2:output:0+lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_516/MatMul_1MatMulzeros:output:0-lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_516/addAddV2lstm_cell_516/MatMul:product:0 lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_516/BiasAddBiasAddlstm_cell_516/add:z:0,lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_516/splitSplit&lstm_cell_516/split/split_dim:output:0lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_516/SigmoidSigmoidlstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_1Sigmoidlstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_516/mulMullstm_cell_516/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_516/ReluRelulstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_516/mul_1Mullstm_cell_516/Sigmoid:y:0 lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_516/add_1AddV2lstm_cell_516/mul:z:0lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_2Sigmoidlstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_516/Relu_1Relulstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_516/mul_2Mullstm_cell_516/Sigmoid_2:y:0"lstm_cell_516/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_516_matmul_readvariableop_resource.lstm_cell_516_matmul_1_readvariableop_resource-lstm_cell_516_biasadd_readvariableop_resource*
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
while_body_3134084*
condR
while_cond_3134083*K
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
NoOpNoOp%^lstm_cell_516/BiasAdd/ReadVariableOp$^lstm_cell_516/MatMul/ReadVariableOp&^lstm_cell_516/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_516/BiasAdd/ReadVariableOp$lstm_cell_516/BiasAdd/ReadVariableOp2J
#lstm_cell_516/MatMul/ReadVariableOp#lstm_cell_516/MatMul/ReadVariableOp2N
%lstm_cell_516/MatMul_1/ReadVariableOp%lstm_cell_516/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
АC
Щ

lstm_235_while_body_3135908.
*lstm_235_while_lstm_235_while_loop_counter4
0lstm_235_while_lstm_235_while_maximum_iterations
lstm_235_while_placeholder 
lstm_235_while_placeholder_1 
lstm_235_while_placeholder_2 
lstm_235_while_placeholder_3-
)lstm_235_while_lstm_235_strided_slice_1_0i
elstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚R
?lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚M
>lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
lstm_235_while_identity
lstm_235_while_identity_1
lstm_235_while_identity_2
lstm_235_while_identity_3
lstm_235_while_identity_4
lstm_235_while_identity_5+
'lstm_235_while_lstm_235_strided_slice_1g
clstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensorN
;lstm_235_while_lstm_cell_517_matmul_readvariableop_resource:	d╚P
=lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚K
<lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpб2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOpб4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOpЉ
@lstm_235/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_235/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensor_0lstm_235_while_placeholderIlstm_235/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp=lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_235/while/lstm_cell_517/MatMulMatMul9lstm_235/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp?lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_235/while/lstm_cell_517/MatMul_1MatMullstm_235_while_placeholder_2<lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_235/while/lstm_cell_517/addAddV2-lstm_235/while/lstm_cell_517/MatMul:product:0/lstm_235/while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp>lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_235/while/lstm_cell_517/BiasAddBiasAdd$lstm_235/while/lstm_cell_517/add:z:0;lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_235/while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_235/while/lstm_cell_517/splitSplit5lstm_235/while/lstm_cell_517/split/split_dim:output:0-lstm_235/while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_235/while/lstm_cell_517/SigmoidSigmoid+lstm_235/while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_235/while/lstm_cell_517/Sigmoid_1Sigmoid+lstm_235/while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_235/while/lstm_cell_517/mulMul*lstm_235/while/lstm_cell_517/Sigmoid_1:y:0lstm_235_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_235/while/lstm_cell_517/ReluRelu+lstm_235/while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_235/while/lstm_cell_517/mul_1Mul(lstm_235/while/lstm_cell_517/Sigmoid:y:0/lstm_235/while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_235/while/lstm_cell_517/add_1AddV2$lstm_235/while/lstm_cell_517/mul:z:0&lstm_235/while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_235/while/lstm_cell_517/Sigmoid_2Sigmoid+lstm_235/while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_235/while/lstm_cell_517/Relu_1Relu&lstm_235/while/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_235/while/lstm_cell_517/mul_2Mul*lstm_235/while/lstm_cell_517/Sigmoid_2:y:01lstm_235/while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_235/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_235_while_placeholder_1lstm_235_while_placeholder&lstm_235/while/lstm_cell_517/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_235/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_235/while/addAddV2lstm_235_while_placeholderlstm_235/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_235/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_235/while/add_1AddV2*lstm_235_while_lstm_235_while_loop_counterlstm_235/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_235/while/IdentityIdentitylstm_235/while/add_1:z:0^lstm_235/while/NoOp*
T0*
_output_shapes
: ј
lstm_235/while/Identity_1Identity0lstm_235_while_lstm_235_while_maximum_iterations^lstm_235/while/NoOp*
T0*
_output_shapes
: t
lstm_235/while/Identity_2Identitylstm_235/while/add:z:0^lstm_235/while/NoOp*
T0*
_output_shapes
: А
lstm_235/while/Identity_3IdentityClstm_235/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_235/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_235/while/Identity_4Identity&lstm_235/while/lstm_cell_517/mul_2:z:0^lstm_235/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_235/while/Identity_5Identity&lstm_235/while/lstm_cell_517/add_1:z:0^lstm_235/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_235/while/NoOpNoOp4^lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp3^lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp5^lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_235_while_identity lstm_235/while/Identity:output:0"?
lstm_235_while_identity_1"lstm_235/while/Identity_1:output:0"?
lstm_235_while_identity_2"lstm_235/while/Identity_2:output:0"?
lstm_235_while_identity_3"lstm_235/while/Identity_3:output:0"?
lstm_235_while_identity_4"lstm_235/while/Identity_4:output:0"?
lstm_235_while_identity_5"lstm_235/while/Identity_5:output:0"T
'lstm_235_while_lstm_235_strided_slice_1)lstm_235_while_lstm_235_strided_slice_1_0"~
<lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource>lstm_235_while_lstm_cell_517_biasadd_readvariableop_resource_0"ђ
=lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource?lstm_235_while_lstm_cell_517_matmul_1_readvariableop_resource_0"|
;lstm_235_while_lstm_cell_517_matmul_readvariableop_resource=lstm_235_while_lstm_cell_517_matmul_readvariableop_resource_0"╠
clstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensorelstm_235_while_tensorarrayv2read_tensorlistgetitem_lstm_235_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp3lstm_235/while/lstm_cell_517/BiasAdd/ReadVariableOp2h
2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp2lstm_235/while/lstm_cell_517/MatMul/ReadVariableOp2l
4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp4lstm_235/while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_518_layer_call_fn_3138234

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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3133882o
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
while_cond_3134083
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3134083___redundant_placeholder05
1while_while_cond_3134083___redundant_placeholder15
1while_while_cond_3134083___redundant_placeholder25
1while_while_cond_3134083___redundant_placeholder3
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
жЂ
ќ
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135710

inputsH
5lstm_234_lstm_cell_516_matmul_readvariableop_resource:	љJ
7lstm_234_lstm_cell_516_matmul_1_readvariableop_resource:	dљE
6lstm_234_lstm_cell_516_biasadd_readvariableop_resource:	љH
5lstm_235_lstm_cell_517_matmul_readvariableop_resource:	d╚J
7lstm_235_lstm_cell_517_matmul_1_readvariableop_resource:	2╚E
6lstm_235_lstm_cell_517_biasadd_readvariableop_resource:	╚G
5lstm_236_lstm_cell_518_matmul_readvariableop_resource:2(I
7lstm_236_lstm_cell_518_matmul_1_readvariableop_resource:
(D
6lstm_236_lstm_cell_518_biasadd_readvariableop_resource:(9
'dense_78_matmul_readvariableop_resource:
6
(dense_78_biasadd_readvariableop_resource:
identityѕбdense_78/BiasAdd/ReadVariableOpбdense_78/MatMul/ReadVariableOpб-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOpб,lstm_234/lstm_cell_516/MatMul/ReadVariableOpб.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOpбlstm_234/whileб-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOpб,lstm_235/lstm_cell_517/MatMul/ReadVariableOpб.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOpбlstm_235/whileб-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOpб,lstm_236/lstm_cell_518/MatMul/ReadVariableOpб.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOpбlstm_236/whileD
lstm_234/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_234/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_234/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_234/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_234/strided_sliceStridedSlicelstm_234/Shape:output:0%lstm_234/strided_slice/stack:output:0'lstm_234/strided_slice/stack_1:output:0'lstm_234/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_234/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_234/zeros/packedPacklstm_234/strided_slice:output:0 lstm_234/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_234/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_234/zerosFilllstm_234/zeros/packed:output:0lstm_234/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_234/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_234/zeros_1/packedPacklstm_234/strided_slice:output:0"lstm_234/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_234/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_234/zeros_1Fill lstm_234/zeros_1/packed:output:0lstm_234/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_234/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_234/transpose	Transposeinputs lstm_234/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_234/Shape_1Shapelstm_234/transpose:y:0*
T0*
_output_shapes
:h
lstm_234/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_234/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_234/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_234/strided_slice_1StridedSlicelstm_234/Shape_1:output:0'lstm_234/strided_slice_1/stack:output:0)lstm_234/strided_slice_1/stack_1:output:0)lstm_234/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_234/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_234/TensorArrayV2TensorListReserve-lstm_234/TensorArrayV2/element_shape:output:0!lstm_234/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_234/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_234/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_234/transpose:y:0Glstm_234/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_234/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_234/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_234/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_234/strided_slice_2StridedSlicelstm_234/transpose:y:0'lstm_234/strided_slice_2/stack:output:0)lstm_234/strided_slice_2/stack_1:output:0)lstm_234/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_234/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp5lstm_234_lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_234/lstm_cell_516/MatMulMatMul!lstm_234/strided_slice_2:output:04lstm_234/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp7lstm_234_lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_234/lstm_cell_516/MatMul_1MatMullstm_234/zeros:output:06lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_234/lstm_cell_516/addAddV2'lstm_234/lstm_cell_516/MatMul:product:0)lstm_234/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp6lstm_234_lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_234/lstm_cell_516/BiasAddBiasAddlstm_234/lstm_cell_516/add:z:05lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_234/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_234/lstm_cell_516/splitSplit/lstm_234/lstm_cell_516/split/split_dim:output:0'lstm_234/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_234/lstm_cell_516/SigmoidSigmoid%lstm_234/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_234/lstm_cell_516/Sigmoid_1Sigmoid%lstm_234/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_234/lstm_cell_516/mulMul$lstm_234/lstm_cell_516/Sigmoid_1:y:0lstm_234/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_234/lstm_cell_516/ReluRelu%lstm_234/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dц
lstm_234/lstm_cell_516/mul_1Mul"lstm_234/lstm_cell_516/Sigmoid:y:0)lstm_234/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_234/lstm_cell_516/add_1AddV2lstm_234/lstm_cell_516/mul:z:0 lstm_234/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_234/lstm_cell_516/Sigmoid_2Sigmoid%lstm_234/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dy
lstm_234/lstm_cell_516/Relu_1Relu lstm_234/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_234/lstm_cell_516/mul_2Mul$lstm_234/lstm_cell_516/Sigmoid_2:y:0+lstm_234/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_234/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_234/TensorArrayV2_1TensorListReserve/lstm_234/TensorArrayV2_1/element_shape:output:0!lstm_234/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_234/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_234/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_234/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_234/whileWhile$lstm_234/while/loop_counter:output:0*lstm_234/while/maximum_iterations:output:0lstm_234/time:output:0!lstm_234/TensorArrayV2_1:handle:0lstm_234/zeros:output:0lstm_234/zeros_1:output:0!lstm_234/strided_slice_1:output:0@lstm_234/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_234_lstm_cell_516_matmul_readvariableop_resource7lstm_234_lstm_cell_516_matmul_1_readvariableop_resource6lstm_234_lstm_cell_516_biasadd_readvariableop_resource*
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
lstm_234_while_body_3135342*'
condR
lstm_234_while_cond_3135341*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_234/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_234/TensorArrayV2Stack/TensorListStackTensorListStacklstm_234/while:output:3Blstm_234/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_234/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_234/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_234/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_234/strided_slice_3StridedSlice4lstm_234/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_234/strided_slice_3/stack:output:0)lstm_234/strided_slice_3/stack_1:output:0)lstm_234/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_234/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_234/transpose_1	Transpose4lstm_234/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_234/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_234/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_235/ShapeShapelstm_234/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_235/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_235/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_235/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_235/strided_sliceStridedSlicelstm_235/Shape:output:0%lstm_235/strided_slice/stack:output:0'lstm_235/strided_slice/stack_1:output:0'lstm_235/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_235/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_235/zeros/packedPacklstm_235/strided_slice:output:0 lstm_235/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_235/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_235/zerosFilllstm_235/zeros/packed:output:0lstm_235/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_235/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_235/zeros_1/packedPacklstm_235/strided_slice:output:0"lstm_235/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_235/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_235/zeros_1Fill lstm_235/zeros_1/packed:output:0lstm_235/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_235/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_235/transpose	Transposelstm_234/transpose_1:y:0 lstm_235/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_235/Shape_1Shapelstm_235/transpose:y:0*
T0*
_output_shapes
:h
lstm_235/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_235/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_235/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_235/strided_slice_1StridedSlicelstm_235/Shape_1:output:0'lstm_235/strided_slice_1/stack:output:0)lstm_235/strided_slice_1/stack_1:output:0)lstm_235/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_235/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_235/TensorArrayV2TensorListReserve-lstm_235/TensorArrayV2/element_shape:output:0!lstm_235/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_235/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_235/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_235/transpose:y:0Glstm_235/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_235/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_235/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_235/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_235/strided_slice_2StridedSlicelstm_235/transpose:y:0'lstm_235/strided_slice_2/stack:output:0)lstm_235/strided_slice_2/stack_1:output:0)lstm_235/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_235/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp5lstm_235_lstm_cell_517_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_235/lstm_cell_517/MatMulMatMul!lstm_235/strided_slice_2:output:04lstm_235/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp7lstm_235_lstm_cell_517_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_235/lstm_cell_517/MatMul_1MatMullstm_235/zeros:output:06lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_235/lstm_cell_517/addAddV2'lstm_235/lstm_cell_517/MatMul:product:0)lstm_235/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp6lstm_235_lstm_cell_517_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_235/lstm_cell_517/BiasAddBiasAddlstm_235/lstm_cell_517/add:z:05lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_235/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_235/lstm_cell_517/splitSplit/lstm_235/lstm_cell_517/split/split_dim:output:0'lstm_235/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_235/lstm_cell_517/SigmoidSigmoid%lstm_235/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_235/lstm_cell_517/Sigmoid_1Sigmoid%lstm_235/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_235/lstm_cell_517/mulMul$lstm_235/lstm_cell_517/Sigmoid_1:y:0lstm_235/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_235/lstm_cell_517/ReluRelu%lstm_235/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_235/lstm_cell_517/mul_1Mul"lstm_235/lstm_cell_517/Sigmoid:y:0)lstm_235/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_235/lstm_cell_517/add_1AddV2lstm_235/lstm_cell_517/mul:z:0 lstm_235/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_235/lstm_cell_517/Sigmoid_2Sigmoid%lstm_235/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2y
lstm_235/lstm_cell_517/Relu_1Relu lstm_235/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_235/lstm_cell_517/mul_2Mul$lstm_235/lstm_cell_517/Sigmoid_2:y:0+lstm_235/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_235/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_235/TensorArrayV2_1TensorListReserve/lstm_235/TensorArrayV2_1/element_shape:output:0!lstm_235/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_235/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_235/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_235/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_235/whileWhile$lstm_235/while/loop_counter:output:0*lstm_235/while/maximum_iterations:output:0lstm_235/time:output:0!lstm_235/TensorArrayV2_1:handle:0lstm_235/zeros:output:0lstm_235/zeros_1:output:0!lstm_235/strided_slice_1:output:0@lstm_235/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_235_lstm_cell_517_matmul_readvariableop_resource7lstm_235_lstm_cell_517_matmul_1_readvariableop_resource6lstm_235_lstm_cell_517_biasadd_readvariableop_resource*
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
lstm_235_while_body_3135481*'
condR
lstm_235_while_cond_3135480*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_235/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_235/TensorArrayV2Stack/TensorListStackTensorListStacklstm_235/while:output:3Blstm_235/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_235/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_235/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_235/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_235/strided_slice_3StridedSlice4lstm_235/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_235/strided_slice_3/stack:output:0)lstm_235/strided_slice_3/stack_1:output:0)lstm_235/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_235/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_235/transpose_1	Transpose4lstm_235/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_235/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_235/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_236/ShapeShapelstm_235/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_236/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_236/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_236/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_236/strided_sliceStridedSlicelstm_236/Shape:output:0%lstm_236/strided_slice/stack:output:0'lstm_236/strided_slice/stack_1:output:0'lstm_236/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_236/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_236/zeros/packedPacklstm_236/strided_slice:output:0 lstm_236/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_236/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_236/zerosFilllstm_236/zeros/packed:output:0lstm_236/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_236/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_236/zeros_1/packedPacklstm_236/strided_slice:output:0"lstm_236/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_236/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_236/zeros_1Fill lstm_236/zeros_1/packed:output:0lstm_236/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_236/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_236/transpose	Transposelstm_235/transpose_1:y:0 lstm_236/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_236/Shape_1Shapelstm_236/transpose:y:0*
T0*
_output_shapes
:h
lstm_236/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_236/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_236/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_236/strided_slice_1StridedSlicelstm_236/Shape_1:output:0'lstm_236/strided_slice_1/stack:output:0)lstm_236/strided_slice_1/stack_1:output:0)lstm_236/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_236/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_236/TensorArrayV2TensorListReserve-lstm_236/TensorArrayV2/element_shape:output:0!lstm_236/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_236/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_236/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_236/transpose:y:0Glstm_236/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_236/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_236/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_236/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_236/strided_slice_2StridedSlicelstm_236/transpose:y:0'lstm_236/strided_slice_2/stack:output:0)lstm_236/strided_slice_2/stack_1:output:0)lstm_236/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_236/lstm_cell_518/MatMul/ReadVariableOpReadVariableOp5lstm_236_lstm_cell_518_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_236/lstm_cell_518/MatMulMatMul!lstm_236/strided_slice_2:output:04lstm_236/lstm_cell_518/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOpReadVariableOp7lstm_236_lstm_cell_518_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_236/lstm_cell_518/MatMul_1MatMullstm_236/zeros:output:06lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_236/lstm_cell_518/addAddV2'lstm_236/lstm_cell_518/MatMul:product:0)lstm_236/lstm_cell_518/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOpReadVariableOp6lstm_236_lstm_cell_518_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_236/lstm_cell_518/BiasAddBiasAddlstm_236/lstm_cell_518/add:z:05lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_236/lstm_cell_518/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_236/lstm_cell_518/splitSplit/lstm_236/lstm_cell_518/split/split_dim:output:0'lstm_236/lstm_cell_518/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_236/lstm_cell_518/SigmoidSigmoid%lstm_236/lstm_cell_518/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_236/lstm_cell_518/Sigmoid_1Sigmoid%lstm_236/lstm_cell_518/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_236/lstm_cell_518/mulMul$lstm_236/lstm_cell_518/Sigmoid_1:y:0lstm_236/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_236/lstm_cell_518/ReluRelu%lstm_236/lstm_cell_518/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_236/lstm_cell_518/mul_1Mul"lstm_236/lstm_cell_518/Sigmoid:y:0)lstm_236/lstm_cell_518/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_236/lstm_cell_518/add_1AddV2lstm_236/lstm_cell_518/mul:z:0 lstm_236/lstm_cell_518/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_236/lstm_cell_518/Sigmoid_2Sigmoid%lstm_236/lstm_cell_518/split:output:3*
T0*'
_output_shapes
:         
y
lstm_236/lstm_cell_518/Relu_1Relu lstm_236/lstm_cell_518/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_236/lstm_cell_518/mul_2Mul$lstm_236/lstm_cell_518/Sigmoid_2:y:0+lstm_236/lstm_cell_518/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_236/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_236/TensorArrayV2_1TensorListReserve/lstm_236/TensorArrayV2_1/element_shape:output:0!lstm_236/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_236/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_236/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_236/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_236/whileWhile$lstm_236/while/loop_counter:output:0*lstm_236/while/maximum_iterations:output:0lstm_236/time:output:0!lstm_236/TensorArrayV2_1:handle:0lstm_236/zeros:output:0lstm_236/zeros_1:output:0!lstm_236/strided_slice_1:output:0@lstm_236/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_236_lstm_cell_518_matmul_readvariableop_resource7lstm_236_lstm_cell_518_matmul_1_readvariableop_resource6lstm_236_lstm_cell_518_biasadd_readvariableop_resource*
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
lstm_236_while_body_3135620*'
condR
lstm_236_while_cond_3135619*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_236/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_236/TensorArrayV2Stack/TensorListStackTensorListStacklstm_236/while:output:3Blstm_236/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_236/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_236/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_236/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_236/strided_slice_3StridedSlice4lstm_236/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_236/strided_slice_3/stack:output:0)lstm_236/strided_slice_3/stack_1:output:0)lstm_236/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_236/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_236/transpose_1	Transpose4lstm_236/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_236/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_236/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    є
dense_78/MatMul/ReadVariableOpReadVariableOp'dense_78_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ќ
dense_78/MatMulMatMul!lstm_236/strided_slice_3:output:0&dense_78/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ё
dense_78/BiasAdd/ReadVariableOpReadVariableOp(dense_78_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
dense_78/BiasAddBiasAdddense_78/MatMul:product:0'dense_78/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_78/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp ^dense_78/BiasAdd/ReadVariableOp^dense_78/MatMul/ReadVariableOp.^lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp-^lstm_234/lstm_cell_516/MatMul/ReadVariableOp/^lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp^lstm_234/while.^lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp-^lstm_235/lstm_cell_517/MatMul/ReadVariableOp/^lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp^lstm_235/while.^lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp-^lstm_236/lstm_cell_518/MatMul/ReadVariableOp/^lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp^lstm_236/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2B
dense_78/BiasAdd/ReadVariableOpdense_78/BiasAdd/ReadVariableOp2@
dense_78/MatMul/ReadVariableOpdense_78/MatMul/ReadVariableOp2^
-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp-lstm_234/lstm_cell_516/BiasAdd/ReadVariableOp2\
,lstm_234/lstm_cell_516/MatMul/ReadVariableOp,lstm_234/lstm_cell_516/MatMul/ReadVariableOp2`
.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp.lstm_234/lstm_cell_516/MatMul_1/ReadVariableOp2 
lstm_234/whilelstm_234/while2^
-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp-lstm_235/lstm_cell_517/BiasAdd/ReadVariableOp2\
,lstm_235/lstm_cell_517/MatMul/ReadVariableOp,lstm_235/lstm_cell_517/MatMul/ReadVariableOp2`
.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp.lstm_235/lstm_cell_517/MatMul_1/ReadVariableOp2 
lstm_235/whilelstm_235/while2^
-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp-lstm_236/lstm_cell_518/BiasAdd/ReadVariableOp2\
,lstm_236/lstm_cell_518/MatMul/ReadVariableOp,lstm_236/lstm_cell_518/MatMul/ReadVariableOp2`
.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp.lstm_236/lstm_cell_518/MatMul_1/ReadVariableOp2 
lstm_236/whilelstm_236/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3138200

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
║
╚
while_cond_3137284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3137284___redundant_placeholder05
1while_while_cond_3137284___redundant_placeholder15
1while_while_cond_3137284___redundant_placeholder25
1while_while_cond_3137284___redundant_placeholder3
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
аK
Ц
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136467
inputs_0?
,lstm_cell_516_matmul_readvariableop_resource:	љA
.lstm_cell_516_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_516_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_516/BiasAdd/ReadVariableOpб#lstm_cell_516/MatMul/ReadVariableOpб%lstm_cell_516/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_516/MatMul/ReadVariableOpReadVariableOp,lstm_cell_516_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_516/MatMulMatMulstrided_slice_2:output:0+lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_516_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_516/MatMul_1MatMulzeros:output:0-lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_516/addAddV2lstm_cell_516/MatMul:product:0 lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_516_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_516/BiasAddBiasAddlstm_cell_516/add:z:0,lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_516/splitSplit&lstm_cell_516/split/split_dim:output:0lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_516/SigmoidSigmoidlstm_cell_516/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_1Sigmoidlstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_516/mulMullstm_cell_516/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_516/ReluRelulstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_516/mul_1Mullstm_cell_516/Sigmoid:y:0 lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_516/add_1AddV2lstm_cell_516/mul:z:0lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_516/Sigmoid_2Sigmoidlstm_cell_516/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_516/Relu_1Relulstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_516/mul_2Mullstm_cell_516/Sigmoid_2:y:0"lstm_cell_516/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_516_matmul_readvariableop_resource.lstm_cell_516_matmul_1_readvariableop_resource-lstm_cell_516_biasadd_readvariableop_resource*
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
while_body_3136383*
condR
while_cond_3136382*K
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
NoOpNoOp%^lstm_cell_516/BiasAdd/ReadVariableOp$^lstm_cell_516/MatMul/ReadVariableOp&^lstm_cell_516/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_516/BiasAdd/ReadVariableOp$lstm_cell_516/BiasAdd/ReadVariableOp2J
#lstm_cell_516/MatMul/ReadVariableOp#lstm_cell_516/MatMul/ReadVariableOp2N
%lstm_cell_516/MatMul_1/ReadVariableOp%lstm_cell_516/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
Л8
┌
while_body_3136856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_517_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_517_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_517_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_517_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_517_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_517_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_517/BiasAdd/ReadVariableOpб)while/lstm_cell_517/MatMul/ReadVariableOpб+while/lstm_cell_517/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_517/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_517_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_517/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_517/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_517/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_517_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_517/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_517/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_517/addAddV2$while/lstm_cell_517/MatMul:product:0&while/lstm_cell_517/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_517/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_517_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_517/BiasAddBiasAddwhile/lstm_cell_517/add:z:02while/lstm_cell_517/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_517/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_517/splitSplit,while/lstm_cell_517/split/split_dim:output:0$while/lstm_cell_517/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_517/SigmoidSigmoid"while/lstm_cell_517/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_1Sigmoid"while/lstm_cell_517/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_517/mulMul!while/lstm_cell_517/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_517/ReluRelu"while/lstm_cell_517/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_517/mul_1Mulwhile/lstm_cell_517/Sigmoid:y:0&while/lstm_cell_517/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_517/add_1AddV2while/lstm_cell_517/mul:z:0while/lstm_cell_517/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_517/Sigmoid_2Sigmoid"while/lstm_cell_517/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_517/Relu_1Reluwhile/lstm_cell_517/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_517/mul_2Mul!while/lstm_cell_517/Sigmoid_2:y:0(while/lstm_cell_517/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_517/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_517/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_517/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_517/BiasAdd/ReadVariableOp*^while/lstm_cell_517/MatMul/ReadVariableOp,^while/lstm_cell_517/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_517_biasadd_readvariableop_resource5while_lstm_cell_517_biasadd_readvariableop_resource_0"n
4while_lstm_cell_517_matmul_1_readvariableop_resource6while_lstm_cell_517_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_517_matmul_readvariableop_resource4while_lstm_cell_517_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_517/BiasAdd/ReadVariableOp*while/lstm_cell_517/BiasAdd/ReadVariableOp2V
)while/lstm_cell_517/MatMul/ReadVariableOp)while/lstm_cell_517/MatMul/ReadVariableOp2Z
+while/lstm_cell_517/MatMul_1/ReadVariableOp+while/lstm_cell_517/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
и

Ч
lstm_234_while_cond_3135768.
*lstm_234_while_lstm_234_while_loop_counter4
0lstm_234_while_lstm_234_while_maximum_iterations
lstm_234_while_placeholder 
lstm_234_while_placeholder_1 
lstm_234_while_placeholder_2 
lstm_234_while_placeholder_30
,lstm_234_while_less_lstm_234_strided_slice_1G
Clstm_234_while_lstm_234_while_cond_3135768___redundant_placeholder0G
Clstm_234_while_lstm_234_while_cond_3135768___redundant_placeholder1G
Clstm_234_while_lstm_234_while_cond_3135768___redundant_placeholder2G
Clstm_234_while_lstm_234_while_cond_3135768___redundant_placeholder3
lstm_234_while_identity
є
lstm_234/while/LessLesslstm_234_while_placeholder,lstm_234_while_less_lstm_234_strided_slice_1*
T0*
_output_shapes
: ]
lstm_234/while/IdentityIdentitylstm_234/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_234_while_identity lstm_234/while/Identity:output:0*(
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
Л8
┌
while_body_3136383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_516_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_516_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_516_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_516_matmul_readvariableop_resource:	љG
4while_lstm_cell_516_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_516_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_516/BiasAdd/ReadVariableOpб)while/lstm_cell_516/MatMul/ReadVariableOpб+while/lstm_cell_516/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_516/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_516_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_516/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_516/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_516/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_516_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_516/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_516/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_516/addAddV2$while/lstm_cell_516/MatMul:product:0&while/lstm_cell_516/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_516/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_516_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_516/BiasAddBiasAddwhile/lstm_cell_516/add:z:02while/lstm_cell_516/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_516/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_516/splitSplit,while/lstm_cell_516/split/split_dim:output:0$while/lstm_cell_516/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_516/SigmoidSigmoid"while/lstm_cell_516/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_1Sigmoid"while/lstm_cell_516/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_516/mulMul!while/lstm_cell_516/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_516/ReluRelu"while/lstm_cell_516/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_516/mul_1Mulwhile/lstm_cell_516/Sigmoid:y:0&while/lstm_cell_516/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_516/add_1AddV2while/lstm_cell_516/mul:z:0while/lstm_cell_516/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_516/Sigmoid_2Sigmoid"while/lstm_cell_516/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_516/Relu_1Reluwhile/lstm_cell_516/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_516/mul_2Mul!while/lstm_cell_516/Sigmoid_2:y:0(while/lstm_cell_516/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_516/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_516/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_516/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_516/BiasAdd/ReadVariableOp*^while/lstm_cell_516/MatMul/ReadVariableOp,^while/lstm_cell_516/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_516_biasadd_readvariableop_resource5while_lstm_cell_516_biasadd_readvariableop_resource_0"n
4while_lstm_cell_516_matmul_1_readvariableop_resource6while_lstm_cell_516_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_516_matmul_readvariableop_resource4while_lstm_cell_516_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_516/BiasAdd/ReadVariableOp*while/lstm_cell_516/BiasAdd/ReadVariableOp2V
)while/lstm_cell_516/MatMul/ReadVariableOp)while/lstm_cell_516/MatMul/ReadVariableOp2Z
+while/lstm_cell_516/MatMul_1/ReadVariableOp+while/lstm_cell_516/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ѓ
и
*__inference_lstm_235_layer_call_fn_3136797

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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3134849s
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
 
_user_specified_nameinputs"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*й
serving_defaultЕ
M
lstm_234_input;
 serving_default_lstm_234_input:0         <
dense_780
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
2dense_78/kernel
:2dense_78/bias
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
0:.	љ2lstm_234/lstm_cell_234/kernel
::8	dљ2'lstm_234/lstm_cell_234/recurrent_kernel
*:(љ2lstm_234/lstm_cell_234/bias
0:.	d╚2lstm_235/lstm_cell_235/kernel
::8	2╚2'lstm_235/lstm_cell_235/recurrent_kernel
*:(╚2lstm_235/lstm_cell_235/bias
/:-2(2lstm_236/lstm_cell_236/kernel
9:7
(2'lstm_236/lstm_cell_236/recurrent_kernel
):'(2lstm_236/lstm_cell_236/bias
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
2Adam/dense_78/kernel/m
 :2Adam/dense_78/bias/m
5:3	љ2$Adam/lstm_234/lstm_cell_234/kernel/m
?:=	dљ2.Adam/lstm_234/lstm_cell_234/recurrent_kernel/m
/:-љ2"Adam/lstm_234/lstm_cell_234/bias/m
5:3	d╚2$Adam/lstm_235/lstm_cell_235/kernel/m
?:=	2╚2.Adam/lstm_235/lstm_cell_235/recurrent_kernel/m
/:-╚2"Adam/lstm_235/lstm_cell_235/bias/m
4:22(2$Adam/lstm_236/lstm_cell_236/kernel/m
>:<
(2.Adam/lstm_236/lstm_cell_236/recurrent_kernel/m
.:,(2"Adam/lstm_236/lstm_cell_236/bias/m
&:$
2Adam/dense_78/kernel/v
 :2Adam/dense_78/bias/v
5:3	љ2$Adam/lstm_234/lstm_cell_234/kernel/v
?:=	dљ2.Adam/lstm_234/lstm_cell_234/recurrent_kernel/v
/:-љ2"Adam/lstm_234/lstm_cell_234/bias/v
5:3	d╚2$Adam/lstm_235/lstm_cell_235/kernel/v
?:=	2╚2.Adam/lstm_235/lstm_cell_235/recurrent_kernel/v
/:-╚2"Adam/lstm_235/lstm_cell_235/bias/v
4:22(2$Adam/lstm_236/lstm_cell_236/kernel/v
>:<
(2.Adam/lstm_236/lstm_cell_236/recurrent_kernel/v
.:,(2"Adam/lstm_236/lstm_cell_236/bias/v
і2Є
/__inference_sequential_78_layer_call_fn_3134518
/__inference_sequential_78_layer_call_fn_3135256
/__inference_sequential_78_layer_call_fn_3135283
/__inference_sequential_78_layer_call_fn_3135134└
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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135710
J__inference_sequential_78_layer_call_and_return_conditional_losses_3136137
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135164
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135194└
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
"__inference__wrapped_model_3132969lstm_234_input"ў
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
*__inference_lstm_234_layer_call_fn_3136148
*__inference_lstm_234_layer_call_fn_3136159
*__inference_lstm_234_layer_call_fn_3136170
*__inference_lstm_234_layer_call_fn_3136181Н
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136324
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136467
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136610
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136753Н
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
*__inference_lstm_235_layer_call_fn_3136764
*__inference_lstm_235_layer_call_fn_3136775
*__inference_lstm_235_layer_call_fn_3136786
*__inference_lstm_235_layer_call_fn_3136797Н
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3136940
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137083
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137226
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137369Н
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
*__inference_lstm_236_layer_call_fn_3137380
*__inference_lstm_236_layer_call_fn_3137391
*__inference_lstm_236_layer_call_fn_3137402
*__inference_lstm_236_layer_call_fn_3137413Н
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137556
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137699
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137842
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137985Н
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
*__inference_dense_78_layer_call_fn_3137994б
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
E__inference_dense_78_layer_call_and_return_conditional_losses_3138004б
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
%__inference_signature_wrapper_3135229lstm_234_input"ћ
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
/__inference_lstm_cell_516_layer_call_fn_3138021
/__inference_lstm_cell_516_layer_call_fn_3138038Й
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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3138070
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3138102Й
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
/__inference_lstm_cell_517_layer_call_fn_3138119
/__inference_lstm_cell_517_layer_call_fn_3138136Й
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3138168
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3138200Й
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
/__inference_lstm_cell_518_layer_call_fn_3138217
/__inference_lstm_cell_518_layer_call_fn_3138234Й
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3138266
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3138298Й
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
"__inference__wrapped_model_3132969-./012345!";б8
1б.
,і)
lstm_234_input         
ф "3ф0
.
dense_78"і
dense_78         Ц
E__inference_dense_78_layer_call_and_return_conditional_losses_3138004\!"/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ }
*__inference_dense_78_layer_call_fn_3137994O!"/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136324і-./OбL
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136467і-./OбL
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136610q-./?б<
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
E__inference_lstm_234_layer_call_and_return_conditional_losses_3136753q-./?б<
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
*__inference_lstm_234_layer_call_fn_3136148}-./OбL
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
*__inference_lstm_234_layer_call_fn_3136159}-./OбL
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
*__inference_lstm_234_layer_call_fn_3136170d-./?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_234_layer_call_fn_3136181d-./?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_235_layer_call_and_return_conditional_losses_3136940і012OбL
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137083і012OбL
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137226q012?б<
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
E__inference_lstm_235_layer_call_and_return_conditional_losses_3137369q012?б<
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
*__inference_lstm_235_layer_call_fn_3136764}012OбL
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
*__inference_lstm_235_layer_call_fn_3136775}012OбL
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
*__inference_lstm_235_layer_call_fn_3136786d012?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_235_layer_call_fn_3136797d012?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137556}345OбL
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137699}345OбL
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137842m345?б<
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
E__inference_lstm_236_layer_call_and_return_conditional_losses_3137985m345?б<
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
*__inference_lstm_236_layer_call_fn_3137380p345OбL
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
*__inference_lstm_236_layer_call_fn_3137391p345OбL
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
*__inference_lstm_236_layer_call_fn_3137402`345?б<
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
*__inference_lstm_236_layer_call_fn_3137413`345?б<
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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3138070§-./ђб}
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
J__inference_lstm_cell_516_layer_call_and_return_conditional_losses_3138102§-./ђб}
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
/__inference_lstm_cell_516_layer_call_fn_3138021ь-./ђб}
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
/__inference_lstm_cell_516_layer_call_fn_3138038ь-./ђб}
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3138168§012ђб}
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
J__inference_lstm_cell_517_layer_call_and_return_conditional_losses_3138200§012ђб}
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
/__inference_lstm_cell_517_layer_call_fn_3138119ь012ђб}
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
/__inference_lstm_cell_517_layer_call_fn_3138136ь012ђб}
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3138266§345ђб}
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
J__inference_lstm_cell_518_layer_call_and_return_conditional_losses_3138298§345ђб}
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
/__inference_lstm_cell_518_layer_call_fn_3138217ь345ђб}
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
/__inference_lstm_cell_518_layer_call_fn_3138234ь345ђб}
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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135164y-./012345!"Cб@
9б6
,і)
lstm_234_input         
p 

 
ф "%б"
і
0         
џ К
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135194y-./012345!"Cб@
9б6
,і)
lstm_234_input         
p

 
ф "%б"
і
0         
џ ┐
J__inference_sequential_78_layer_call_and_return_conditional_losses_3135710q-./012345!";б8
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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3136137q-./012345!";б8
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
/__inference_sequential_78_layer_call_fn_3134518l-./012345!"Cб@
9б6
,і)
lstm_234_input         
p 

 
ф "і         Ъ
/__inference_sequential_78_layer_call_fn_3135134l-./012345!"Cб@
9б6
,і)
lstm_234_input         
p

 
ф "і         Ќ
/__inference_sequential_78_layer_call_fn_3135256d-./012345!";б8
1б.
$і!
inputs         
p 

 
ф "і         Ќ
/__inference_sequential_78_layer_call_fn_3135283d-./012345!";б8
1б.
$і!
inputs         
p

 
ф "і         ╗
%__inference_signature_wrapper_3135229Љ-./012345!"MбJ
б 
Cф@
>
lstm_234_input,і)
lstm_234_input         "3ф0
.
dense_78"і
dense_78         