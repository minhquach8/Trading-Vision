зе/
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
ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28№┐-
|
dense_288/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_288/kernel
u
$dense_288/kernel/Read/ReadVariableOpReadVariableOpdense_288/kernel*
_output_shapes

:
*
dtype0
t
dense_288/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_288/bias
m
"dense_288/bias/Read/ReadVariableOpReadVariableOpdense_288/bias*
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
lstm_864/lstm_cell_864/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_864/lstm_cell_864/kernel
љ
1lstm_864/lstm_cell_864/kernel/Read/ReadVariableOpReadVariableOplstm_864/lstm_cell_864/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_864/lstm_cell_864/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_864/lstm_cell_864/recurrent_kernel
ц
;lstm_864/lstm_cell_864/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_864/lstm_cell_864/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_864/lstm_cell_864/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_864/lstm_cell_864/bias
ѕ
/lstm_864/lstm_cell_864/bias/Read/ReadVariableOpReadVariableOplstm_864/lstm_cell_864/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_865/lstm_cell_865/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_865/lstm_cell_865/kernel
љ
1lstm_865/lstm_cell_865/kernel/Read/ReadVariableOpReadVariableOplstm_865/lstm_cell_865/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_865/lstm_cell_865/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_865/lstm_cell_865/recurrent_kernel
ц
;lstm_865/lstm_cell_865/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_865/lstm_cell_865/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_865/lstm_cell_865/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_865/lstm_cell_865/bias
ѕ
/lstm_865/lstm_cell_865/bias/Read/ReadVariableOpReadVariableOplstm_865/lstm_cell_865/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_866/lstm_cell_866/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_866/lstm_cell_866/kernel
Ј
1lstm_866/lstm_cell_866/kernel/Read/ReadVariableOpReadVariableOplstm_866/lstm_cell_866/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_866/lstm_cell_866/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_866/lstm_cell_866/recurrent_kernel
Б
;lstm_866/lstm_cell_866/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_866/lstm_cell_866/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_866/lstm_cell_866/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_866/lstm_cell_866/bias
Є
/lstm_866/lstm_cell_866/bias/Read/ReadVariableOpReadVariableOplstm_866/lstm_cell_866/bias*
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
і
Adam/dense_288/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_288/kernel/m
Ѓ
+Adam/dense_288/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_288/kernel/m*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_288/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_288/bias/m
{
)Adam/dense_288/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_288/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_864/lstm_cell_864/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_864/lstm_cell_864/kernel/m
ъ
8Adam/lstm_864/lstm_cell_864/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_864/lstm_cell_864/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_864/lstm_cell_864/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_864/lstm_cell_864/recurrent_kernel/m
▓
BAdam/lstm_864/lstm_cell_864/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_864/lstm_cell_864/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_864/lstm_cell_864/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_864/lstm_cell_864/bias/m
ќ
6Adam/lstm_864/lstm_cell_864/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_864/lstm_cell_864/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_865/lstm_cell_865/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_865/lstm_cell_865/kernel/m
ъ
8Adam/lstm_865/lstm_cell_865/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_865/lstm_cell_865/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_865/lstm_cell_865/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_865/lstm_cell_865/recurrent_kernel/m
▓
BAdam/lstm_865/lstm_cell_865/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_865/lstm_cell_865/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_865/lstm_cell_865/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_865/lstm_cell_865/bias/m
ќ
6Adam/lstm_865/lstm_cell_865/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_865/lstm_cell_865/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_866/lstm_cell_866/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_866/lstm_cell_866/kernel/m
Ю
8Adam/lstm_866/lstm_cell_866/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_866/lstm_cell_866/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_866/lstm_cell_866/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_866/lstm_cell_866/recurrent_kernel/m
▒
BAdam/lstm_866/lstm_cell_866/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_866/lstm_cell_866/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_866/lstm_cell_866/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_866/lstm_cell_866/bias/m
Ћ
6Adam/lstm_866/lstm_cell_866/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_866/lstm_cell_866/bias/m*
_output_shapes
:(*
dtype0
і
Adam/dense_288/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_288/kernel/v
Ѓ
+Adam/dense_288/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_288/kernel/v*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_288/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_288/bias/v
{
)Adam/dense_288/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_288/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_864/lstm_cell_864/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_864/lstm_cell_864/kernel/v
ъ
8Adam/lstm_864/lstm_cell_864/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_864/lstm_cell_864/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_864/lstm_cell_864/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_864/lstm_cell_864/recurrent_kernel/v
▓
BAdam/lstm_864/lstm_cell_864/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_864/lstm_cell_864/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_864/lstm_cell_864/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_864/lstm_cell_864/bias/v
ќ
6Adam/lstm_864/lstm_cell_864/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_864/lstm_cell_864/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_865/lstm_cell_865/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_865/lstm_cell_865/kernel/v
ъ
8Adam/lstm_865/lstm_cell_865/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_865/lstm_cell_865/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_865/lstm_cell_865/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_865/lstm_cell_865/recurrent_kernel/v
▓
BAdam/lstm_865/lstm_cell_865/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_865/lstm_cell_865/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_865/lstm_cell_865/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_865/lstm_cell_865/bias/v
ќ
6Adam/lstm_865/lstm_cell_865/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_865/lstm_cell_865/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_866/lstm_cell_866/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_866/lstm_cell_866/kernel/v
Ю
8Adam/lstm_866/lstm_cell_866/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_866/lstm_cell_866/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_866/lstm_cell_866/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_866/lstm_cell_866/recurrent_kernel/v
▒
BAdam/lstm_866/lstm_cell_866/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_866/lstm_cell_866/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_866/lstm_cell_866/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_866/lstm_cell_866/bias/v
Ћ
6Adam/lstm_866/lstm_cell_866/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_866/lstm_cell_866/bias/v*
_output_shapes
:(*
dtype0

NoOpNoOp
А?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*▄>
valueм>B¤> B╚>
Ї
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
ї
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
N
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10
 
Г
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
 
ј
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

(0
)1
*2

(0
)1
*2
 
╣

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
ј
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
 

+0
,1
-2

+0
,1
-2
 
╣

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
ј
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
 

.0
/1
02

.0
/1
02
 
╣

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEdense_288/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_288/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
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
VARIABLE_VALUElstm_864/lstm_cell_864/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_864/lstm_cell_864/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_864/lstm_cell_864/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_865/lstm_cell_865/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_865/lstm_cell_865/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_865/lstm_cell_865/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_866/lstm_cell_866/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_866/lstm_cell_866/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_866/lstm_cell_866/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

\0
 
 
 

(0
)1
*2

(0
)1
*2
 
Г
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
 
 
 
 

+0
,1
-2

+0
,1
-2
 
Г
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
 
 

0
 
 
 
 

.0
/1
02

.0
/1
02
 
Г
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
 
 

0
 
 
 
 
 
 
 
 
4
	ltotal
	mcount
n	variables
o	keras_api
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
l0
m1

n	variables
}
VARIABLE_VALUEAdam/dense_288/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_288/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_864/lstm_cell_864/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_864/lstm_cell_864/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_864/lstm_cell_864/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_865/lstm_cell_865/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_865/lstm_cell_865/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_865/lstm_cell_865/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_866/lstm_cell_866/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_866/lstm_cell_866/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_866/lstm_cell_866/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_288/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_288/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_864/lstm_cell_864/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_864/lstm_cell_864/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_864/lstm_cell_864/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_865/lstm_cell_865/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_865/lstm_cell_865/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_865/lstm_cell_865/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_866/lstm_cell_866/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_866/lstm_cell_866/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_866/lstm_cell_866/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_864_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_864_inputlstm_864/lstm_cell_864/kernel'lstm_864/lstm_cell_864/recurrent_kernellstm_864/lstm_cell_864/biaslstm_865/lstm_cell_865/kernel'lstm_865/lstm_cell_865/recurrent_kernellstm_865/lstm_cell_865/biaslstm_866/lstm_cell_866/kernel'lstm_866/lstm_cell_866/recurrent_kernellstm_866/lstm_cell_866/biasdense_288/kerneldense_288/bias*
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
%__inference_signature_wrapper_5177041
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_288/kernel/Read/ReadVariableOp"dense_288/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_864/lstm_cell_864/kernel/Read/ReadVariableOp;lstm_864/lstm_cell_864/recurrent_kernel/Read/ReadVariableOp/lstm_864/lstm_cell_864/bias/Read/ReadVariableOp1lstm_865/lstm_cell_865/kernel/Read/ReadVariableOp;lstm_865/lstm_cell_865/recurrent_kernel/Read/ReadVariableOp/lstm_865/lstm_cell_865/bias/Read/ReadVariableOp1lstm_866/lstm_cell_866/kernel/Read/ReadVariableOp;lstm_866/lstm_cell_866/recurrent_kernel/Read/ReadVariableOp/lstm_866/lstm_cell_866/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_288/kernel/m/Read/ReadVariableOp)Adam/dense_288/bias/m/Read/ReadVariableOp8Adam/lstm_864/lstm_cell_864/kernel/m/Read/ReadVariableOpBAdam/lstm_864/lstm_cell_864/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_864/lstm_cell_864/bias/m/Read/ReadVariableOp8Adam/lstm_865/lstm_cell_865/kernel/m/Read/ReadVariableOpBAdam/lstm_865/lstm_cell_865/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_865/lstm_cell_865/bias/m/Read/ReadVariableOp8Adam/lstm_866/lstm_cell_866/kernel/m/Read/ReadVariableOpBAdam/lstm_866/lstm_cell_866/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_866/lstm_cell_866/bias/m/Read/ReadVariableOp+Adam/dense_288/kernel/v/Read/ReadVariableOp)Adam/dense_288/bias/v/Read/ReadVariableOp8Adam/lstm_864/lstm_cell_864/kernel/v/Read/ReadVariableOpBAdam/lstm_864/lstm_cell_864/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_864/lstm_cell_864/bias/v/Read/ReadVariableOp8Adam/lstm_865/lstm_cell_865/kernel/v/Read/ReadVariableOpBAdam/lstm_865/lstm_cell_865/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_865/lstm_cell_865/bias/v/Read/ReadVariableOp8Adam/lstm_866/lstm_cell_866/kernel/v/Read/ReadVariableOpBAdam/lstm_866/lstm_cell_866/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_866/lstm_cell_866/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_5180253
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_288/kerneldense_288/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_864/lstm_cell_864/kernel'lstm_864/lstm_cell_864/recurrent_kernellstm_864/lstm_cell_864/biaslstm_865/lstm_cell_865/kernel'lstm_865/lstm_cell_865/recurrent_kernellstm_865/lstm_cell_865/biaslstm_866/lstm_cell_866/kernel'lstm_866/lstm_cell_866/recurrent_kernellstm_866/lstm_cell_866/biastotalcountAdam/dense_288/kernel/mAdam/dense_288/bias/m$Adam/lstm_864/lstm_cell_864/kernel/m.Adam/lstm_864/lstm_cell_864/recurrent_kernel/m"Adam/lstm_864/lstm_cell_864/bias/m$Adam/lstm_865/lstm_cell_865/kernel/m.Adam/lstm_865/lstm_cell_865/recurrent_kernel/m"Adam/lstm_865/lstm_cell_865/bias/m$Adam/lstm_866/lstm_cell_866/kernel/m.Adam/lstm_866/lstm_cell_866/recurrent_kernel/m"Adam/lstm_866/lstm_cell_866/bias/mAdam/dense_288/kernel/vAdam/dense_288/bias/v$Adam/lstm_864/lstm_cell_864/kernel/v.Adam/lstm_864/lstm_cell_864/recurrent_kernel/v"Adam/lstm_864/lstm_cell_864/bias/v$Adam/lstm_865/lstm_cell_865/kernel/v.Adam/lstm_865/lstm_cell_865/recurrent_kernel/v"Adam/lstm_865/lstm_cell_865/bias/v$Adam/lstm_866/lstm_cell_866/kernel/v.Adam/lstm_866/lstm_cell_866/recurrent_kernel/v"Adam/lstm_866/lstm_cell_866/bias/v*4
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
#__inference__traced_restore_5180383░■+
Ѓ
и
*__inference_lstm_865_layer_call_fn_5178609

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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176661s
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
аK
Ц
E__inference_lstm_865_layer_call_and_return_conditional_losses_5178752
inputs_0?
,lstm_cell_865_matmul_readvariableop_resource:	d╚A
.lstm_cell_865_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_865_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_865/BiasAdd/ReadVariableOpб#lstm_cell_865/MatMul/ReadVariableOpб%lstm_cell_865/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_865/MatMul/ReadVariableOpReadVariableOp,lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_865/MatMulMatMulstrided_slice_2:output:0+lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_865/MatMul_1MatMulzeros:output:0-lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_865/addAddV2lstm_cell_865/MatMul:product:0 lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_865/BiasAddBiasAddlstm_cell_865/add:z:0,lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_865/splitSplit&lstm_cell_865/split/split_dim:output:0lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_865/SigmoidSigmoidlstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_1Sigmoidlstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_865/mulMullstm_cell_865/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_865/ReluRelulstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_865/mul_1Mullstm_cell_865/Sigmoid:y:0 lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_865/add_1AddV2lstm_cell_865/mul:z:0lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_2Sigmoidlstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_865/Relu_1Relulstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_865/mul_2Mullstm_cell_865/Sigmoid_2:y:0"lstm_cell_865/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_865_matmul_readvariableop_resource.lstm_cell_865_matmul_1_readvariableop_resource-lstm_cell_865_biasadd_readvariableop_resource*
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
while_body_5178668*
condR
while_cond_5178667*K
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
NoOpNoOp%^lstm_cell_865/BiasAdd/ReadVariableOp$^lstm_cell_865/MatMul/ReadVariableOp&^lstm_cell_865/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_865/BiasAdd/ReadVariableOp$lstm_cell_865/BiasAdd/ReadVariableOp2J
#lstm_cell_865/MatMul/ReadVariableOp#lstm_cell_865/MatMul/ReadVariableOp2N
%lstm_cell_865/MatMul_1/ReadVariableOp%lstm_cell_865/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
№
Э
/__inference_lstm_cell_864_layer_call_fn_5179850

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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174994o
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
while_cond_5176741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5176741___redundant_placeholder05
1while_while_cond_5176741___redundant_placeholder15
1while_while_cond_5176741___redundant_placeholder25
1while_while_cond_5176741___redundant_placeholder3
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
while_cond_5175895
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5175895___redundant_placeholder05
1while_while_cond_5175895___redundant_placeholder15
1while_while_cond_5175895___redundant_placeholder25
1while_while_cond_5175895___redundant_placeholder3
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
Ѓ
и
*__inference_lstm_864_layer_call_fn_5177982

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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5175980s
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
ПJ
а
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179654

inputs>
,lstm_cell_866_matmul_readvariableop_resource:2(@
.lstm_cell_866_matmul_1_readvariableop_resource:
(;
-lstm_cell_866_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_866/BiasAdd/ReadVariableOpб#lstm_cell_866/MatMul/ReadVariableOpб%lstm_cell_866/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_866/MatMul/ReadVariableOpReadVariableOp,lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_866/MatMulMatMulstrided_slice_2:output:0+lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_866/MatMul_1MatMulzeros:output:0-lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_866/addAddV2lstm_cell_866/MatMul:product:0 lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_866/BiasAddBiasAddlstm_cell_866/add:z:0,lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_866/splitSplit&lstm_cell_866/split/split_dim:output:0lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_866/SigmoidSigmoidlstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_1Sigmoidlstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_866/mulMullstm_cell_866/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_866/ReluRelulstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_866/mul_1Mullstm_cell_866/Sigmoid:y:0 lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_866/add_1AddV2lstm_cell_866/mul:z:0lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_2Sigmoidlstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_866/Relu_1Relulstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_866/mul_2Mullstm_cell_866/Sigmoid_2:y:0"lstm_cell_866/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_866_matmul_readvariableop_resource.lstm_cell_866_matmul_1_readvariableop_resource-lstm_cell_866_biasadd_readvariableop_resource*
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
while_body_5179570*
condR
while_cond_5179569*K
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
NoOpNoOp%^lstm_cell_866/BiasAdd/ReadVariableOp$^lstm_cell_866/MatMul/ReadVariableOp&^lstm_cell_866/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_866/BiasAdd/ReadVariableOp$lstm_cell_866/BiasAdd/ReadVariableOp2J
#lstm_cell_866/MatMul/ReadVariableOp#lstm_cell_866/MatMul/ReadVariableOp2N
%lstm_cell_866/MatMul_1/ReadVariableOp%lstm_cell_866/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_5179426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5179426___redundant_placeholder05
1while_while_cond_5179426___redundant_placeholder15
1while_while_cond_5179426___redundant_placeholder25
1while_while_cond_5179426___redundant_placeholder3
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
─8
н
while_body_5179713
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_866_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_866_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_866_matmul_readvariableop_resource:2(F
4while_lstm_cell_866_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_866/BiasAdd/ReadVariableOpб)while/lstm_cell_866/MatMul/ReadVariableOpб+while/lstm_cell_866/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_866/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_866/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_866/addAddV2$while/lstm_cell_866/MatMul:product:0&while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_866/BiasAddBiasAddwhile/lstm_cell_866/add:z:02while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_866/splitSplit,while/lstm_cell_866/split/split_dim:output:0$while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_866/SigmoidSigmoid"while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_1Sigmoid"while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_866/mulMul!while/lstm_cell_866/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_866/ReluRelu"while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_866/mul_1Mulwhile/lstm_cell_866/Sigmoid:y:0&while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_866/add_1AddV2while/lstm_cell_866/mul:z:0while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_2Sigmoid"while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_866/Relu_1Reluwhile/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_866/mul_2Mul!while/lstm_cell_866/Sigmoid_2:y:0(while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_866/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_866/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_866/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_866/BiasAdd/ReadVariableOp*^while/lstm_cell_866/MatMul/ReadVariableOp,^while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_866_biasadd_readvariableop_resource5while_lstm_cell_866_biasadd_readvariableop_resource_0"n
4while_lstm_cell_866_matmul_1_readvariableop_resource6while_lstm_cell_866_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_866_matmul_readvariableop_resource4while_lstm_cell_866_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_866/BiasAdd/ReadVariableOp*while/lstm_cell_866/BiasAdd/ReadVariableOp2V
)while/lstm_cell_866/MatMul/ReadVariableOp)while/lstm_cell_866/MatMul/ReadVariableOp2Z
+while/lstm_cell_866/MatMul_1/ReadVariableOp+while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176130

inputs?
,lstm_cell_865_matmul_readvariableop_resource:	d╚A
.lstm_cell_865_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_865_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_865/BiasAdd/ReadVariableOpб#lstm_cell_865/MatMul/ReadVariableOpб%lstm_cell_865/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_865/MatMul/ReadVariableOpReadVariableOp,lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_865/MatMulMatMulstrided_slice_2:output:0+lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_865/MatMul_1MatMulzeros:output:0-lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_865/addAddV2lstm_cell_865/MatMul:product:0 lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_865/BiasAddBiasAddlstm_cell_865/add:z:0,lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_865/splitSplit&lstm_cell_865/split/split_dim:output:0lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_865/SigmoidSigmoidlstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_1Sigmoidlstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_865/mulMullstm_cell_865/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_865/ReluRelulstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_865/mul_1Mullstm_cell_865/Sigmoid:y:0 lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_865/add_1AddV2lstm_cell_865/mul:z:0lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_2Sigmoidlstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_865/Relu_1Relulstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_865/mul_2Mullstm_cell_865/Sigmoid_2:y:0"lstm_cell_865/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_865_matmul_readvariableop_resource.lstm_cell_865_matmul_1_readvariableop_resource-lstm_cell_865_biasadd_readvariableop_resource*
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
while_body_5176046*
condR
while_cond_5176045*K
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
NoOpNoOp%^lstm_cell_865/BiasAdd/ReadVariableOp$^lstm_cell_865/MatMul/ReadVariableOp&^lstm_cell_865/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_865/BiasAdd/ReadVariableOp$lstm_cell_865/BiasAdd/ReadVariableOp2J
#lstm_cell_865/MatMul/ReadVariableOp#lstm_cell_865/MatMul/ReadVariableOp2N
%lstm_cell_865/MatMul_1/ReadVariableOp%lstm_cell_865/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
е8
І
E__inference_lstm_866_layer_call_and_return_conditional_losses_5175631

inputs'
lstm_cell_866_5175549:2('
lstm_cell_866_5175551:
(#
lstm_cell_866_5175553:(
identityѕб%lstm_cell_866/StatefulPartitionedCallбwhile;
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
%lstm_cell_866/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_866_5175549lstm_cell_866_5175551lstm_cell_866_5175553*
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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175548n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_866_5175549lstm_cell_866_5175551lstm_cell_866_5175553*
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
while_body_5175562*
condR
while_cond_5175561*K
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
NoOpNoOp&^lstm_cell_866/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_866/StatefulPartitionedCall%lstm_cell_866/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
║
╚
while_cond_5178337
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5178337___redundant_placeholder05
1while_while_cond_5178337___redundant_placeholder15
1while_while_cond_5178337___redundant_placeholder25
1while_while_cond_5178337___redundant_placeholder3
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
while_cond_5178480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5178480___redundant_placeholder05
1while_while_cond_5178480___redundant_placeholder15
1while_while_cond_5178480___redundant_placeholder25
1while_while_cond_5178480___redundant_placeholder3
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
и

Ч
lstm_865_while_cond_5177719.
*lstm_865_while_lstm_865_while_loop_counter4
0lstm_865_while_lstm_865_while_maximum_iterations
lstm_865_while_placeholder 
lstm_865_while_placeholder_1 
lstm_865_while_placeholder_2 
lstm_865_while_placeholder_30
,lstm_865_while_less_lstm_865_strided_slice_1G
Clstm_865_while_lstm_865_while_cond_5177719___redundant_placeholder0G
Clstm_865_while_lstm_865_while_cond_5177719___redundant_placeholder1G
Clstm_865_while_lstm_865_while_cond_5177719___redundant_placeholder2G
Clstm_865_while_lstm_865_while_cond_5177719___redundant_placeholder3
lstm_865_while_identity
є
lstm_865/while/LessLesslstm_865_while_placeholder,lstm_865_while_less_lstm_865_strided_slice_1*
T0*
_output_shapes
: ]
lstm_865/while/IdentityIdentitylstm_865/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_865_while_identity lstm_865/while/Identity:output:0*(
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
while_cond_5174861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5174861___redundant_placeholder05
1while_while_cond_5174861___redundant_placeholder15
1while_while_cond_5174861___redundant_placeholder25
1while_while_cond_5174861___redundant_placeholder3
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
№
Э
/__inference_lstm_cell_865_layer_call_fn_5179931

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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175198o
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
и

Ч
lstm_866_while_cond_5177858.
*lstm_866_while_lstm_866_while_loop_counter4
0lstm_866_while_lstm_866_while_maximum_iterations
lstm_866_while_placeholder 
lstm_866_while_placeholder_1 
lstm_866_while_placeholder_2 
lstm_866_while_placeholder_30
,lstm_866_while_less_lstm_866_strided_slice_1G
Clstm_866_while_lstm_866_while_cond_5177858___redundant_placeholder0G
Clstm_866_while_lstm_866_while_cond_5177858___redundant_placeholder1G
Clstm_866_while_lstm_866_while_cond_5177858___redundant_placeholder2G
Clstm_866_while_lstm_866_while_cond_5177858___redundant_placeholder3
lstm_866_while_identity
є
lstm_866/while/LessLesslstm_866_while_placeholder,lstm_866_while_less_lstm_866_strided_slice_1*
T0*
_output_shapes
: ]
lstm_866/while/IdentityIdentitylstm_866/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_866_while_identity lstm_866/while/Identity:output:0*(
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
РJ
Б
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176661

inputs?
,lstm_cell_865_matmul_readvariableop_resource:	d╚A
.lstm_cell_865_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_865_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_865/BiasAdd/ReadVariableOpб#lstm_cell_865/MatMul/ReadVariableOpб%lstm_cell_865/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_865/MatMul/ReadVariableOpReadVariableOp,lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_865/MatMulMatMulstrided_slice_2:output:0+lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_865/MatMul_1MatMulzeros:output:0-lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_865/addAddV2lstm_cell_865/MatMul:product:0 lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_865/BiasAddBiasAddlstm_cell_865/add:z:0,lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_865/splitSplit&lstm_cell_865/split/split_dim:output:0lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_865/SigmoidSigmoidlstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_1Sigmoidlstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_865/mulMullstm_cell_865/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_865/ReluRelulstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_865/mul_1Mullstm_cell_865/Sigmoid:y:0 lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_865/add_1AddV2lstm_cell_865/mul:z:0lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_2Sigmoidlstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_865/Relu_1Relulstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_865/mul_2Mullstm_cell_865/Sigmoid_2:y:0"lstm_cell_865/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_865_matmul_readvariableop_resource.lstm_cell_865_matmul_1_readvariableop_resource-lstm_cell_865_biasadd_readvariableop_resource*
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
while_body_5176577*
condR
while_cond_5176576*K
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
NoOpNoOp%^lstm_cell_865/BiasAdd/ReadVariableOp$^lstm_cell_865/MatMul/ReadVariableOp&^lstm_cell_865/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_865/BiasAdd/ReadVariableOp$lstm_cell_865/BiasAdd/ReadVariableOp2J
#lstm_cell_865/MatMul/ReadVariableOp#lstm_cell_865/MatMul/ReadVariableOp2N
%lstm_cell_865/MatMul_1/ReadVariableOp%lstm_cell_865/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
─8
н
while_body_5176412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_866_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_866_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_866_matmul_readvariableop_resource:2(F
4while_lstm_cell_866_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_866/BiasAdd/ReadVariableOpб)while/lstm_cell_866/MatMul/ReadVariableOpб+while/lstm_cell_866/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_866/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_866/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_866/addAddV2$while/lstm_cell_866/MatMul:product:0&while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_866/BiasAddBiasAddwhile/lstm_cell_866/add:z:02while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_866/splitSplit,while/lstm_cell_866/split/split_dim:output:0$while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_866/SigmoidSigmoid"while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_1Sigmoid"while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_866/mulMul!while/lstm_cell_866/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_866/ReluRelu"while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_866/mul_1Mulwhile/lstm_cell_866/Sigmoid:y:0&while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_866/add_1AddV2while/lstm_cell_866/mul:z:0while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_2Sigmoid"while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_866/Relu_1Reluwhile/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_866/mul_2Mul!while/lstm_cell_866/Sigmoid_2:y:0(while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_866/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_866/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_866/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_866/BiasAdd/ReadVariableOp*^while/lstm_cell_866/MatMul/ReadVariableOp,^while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_866_biasadd_readvariableop_resource5while_lstm_cell_866_biasadd_readvariableop_resource_0"n
4while_lstm_cell_866_matmul_1_readvariableop_resource6while_lstm_cell_866_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_866_matmul_readvariableop_resource4while_lstm_cell_866_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_866/BiasAdd/ReadVariableOp*while/lstm_cell_866/BiasAdd/ReadVariableOp2V
)while/lstm_cell_866/MatMul/ReadVariableOp)while/lstm_cell_866/MatMul/ReadVariableOp2Z
+while/lstm_cell_866/MatMul_1/ReadVariableOp+while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ш

ц
0__inference_sequential_288_layer_call_fn_5176946
lstm_864_input
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
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_864_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176894o
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
_user_specified_namelstm_864_input
Л8
┌
while_body_5176046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_865_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_865/BiasAdd/ReadVariableOpб)while/lstm_cell_865/MatMul/ReadVariableOpб+while/lstm_cell_865/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_865/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_865/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_865/addAddV2$while/lstm_cell_865/MatMul:product:0&while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_865/BiasAddBiasAddwhile/lstm_cell_865/add:z:02while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_865/splitSplit,while/lstm_cell_865/split/split_dim:output:0$while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_865/SigmoidSigmoid"while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_1Sigmoid"while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_865/mulMul!while/lstm_cell_865/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_865/ReluRelu"while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_865/mul_1Mulwhile/lstm_cell_865/Sigmoid:y:0&while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_865/add_1AddV2while/lstm_cell_865/mul:z:0while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_2Sigmoid"while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_865/Relu_1Reluwhile/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_865/mul_2Mul!while/lstm_cell_865/Sigmoid_2:y:0(while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_865/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_865/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_865/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_865/BiasAdd/ReadVariableOp*^while/lstm_cell_865/MatMul/ReadVariableOp,^while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_865_biasadd_readvariableop_resource5while_lstm_cell_865_biasadd_readvariableop_resource_0"n
4while_lstm_cell_865_matmul_1_readvariableop_resource6while_lstm_cell_865_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_865_matmul_readvariableop_resource4while_lstm_cell_865_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_865/BiasAdd/ReadVariableOp*while/lstm_cell_865/BiasAdd/ReadVariableOp2V
)while/lstm_cell_865/MatMul/ReadVariableOp)while/lstm_cell_865/MatMul/ReadVariableOp2Z
+while/lstm_cell_865/MatMul_1/ReadVariableOp+while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_865_while_body_5177293.
*lstm_865_while_lstm_865_while_loop_counter4
0lstm_865_while_lstm_865_while_maximum_iterations
lstm_865_while_placeholder 
lstm_865_while_placeholder_1 
lstm_865_while_placeholder_2 
lstm_865_while_placeholder_3-
)lstm_865_while_lstm_865_strided_slice_1_0i
elstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚R
?lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚M
>lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
lstm_865_while_identity
lstm_865_while_identity_1
lstm_865_while_identity_2
lstm_865_while_identity_3
lstm_865_while_identity_4
lstm_865_while_identity_5+
'lstm_865_while_lstm_865_strided_slice_1g
clstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensorN
;lstm_865_while_lstm_cell_865_matmul_readvariableop_resource:	d╚P
=lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚K
<lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpб2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpб4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOpЉ
@lstm_865/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_865/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensor_0lstm_865_while_placeholderIlstm_865/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp=lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_865/while/lstm_cell_865/MatMulMatMul9lstm_865/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp?lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_865/while/lstm_cell_865/MatMul_1MatMullstm_865_while_placeholder_2<lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_865/while/lstm_cell_865/addAddV2-lstm_865/while/lstm_cell_865/MatMul:product:0/lstm_865/while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp>lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_865/while/lstm_cell_865/BiasAddBiasAdd$lstm_865/while/lstm_cell_865/add:z:0;lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_865/while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_865/while/lstm_cell_865/splitSplit5lstm_865/while/lstm_cell_865/split/split_dim:output:0-lstm_865/while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_865/while/lstm_cell_865/SigmoidSigmoid+lstm_865/while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_865/while/lstm_cell_865/Sigmoid_1Sigmoid+lstm_865/while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_865/while/lstm_cell_865/mulMul*lstm_865/while/lstm_cell_865/Sigmoid_1:y:0lstm_865_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_865/while/lstm_cell_865/ReluRelu+lstm_865/while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_865/while/lstm_cell_865/mul_1Mul(lstm_865/while/lstm_cell_865/Sigmoid:y:0/lstm_865/while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_865/while/lstm_cell_865/add_1AddV2$lstm_865/while/lstm_cell_865/mul:z:0&lstm_865/while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_865/while/lstm_cell_865/Sigmoid_2Sigmoid+lstm_865/while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_865/while/lstm_cell_865/Relu_1Relu&lstm_865/while/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_865/while/lstm_cell_865/mul_2Mul*lstm_865/while/lstm_cell_865/Sigmoid_2:y:01lstm_865/while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_865/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_865_while_placeholder_1lstm_865_while_placeholder&lstm_865/while/lstm_cell_865/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_865/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_865/while/addAddV2lstm_865_while_placeholderlstm_865/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_865/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_865/while/add_1AddV2*lstm_865_while_lstm_865_while_loop_counterlstm_865/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_865/while/IdentityIdentitylstm_865/while/add_1:z:0^lstm_865/while/NoOp*
T0*
_output_shapes
: ј
lstm_865/while/Identity_1Identity0lstm_865_while_lstm_865_while_maximum_iterations^lstm_865/while/NoOp*
T0*
_output_shapes
: t
lstm_865/while/Identity_2Identitylstm_865/while/add:z:0^lstm_865/while/NoOp*
T0*
_output_shapes
: А
lstm_865/while/Identity_3IdentityClstm_865/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_865/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_865/while/Identity_4Identity&lstm_865/while/lstm_cell_865/mul_2:z:0^lstm_865/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_865/while/Identity_5Identity&lstm_865/while/lstm_cell_865/add_1:z:0^lstm_865/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_865/while/NoOpNoOp4^lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp3^lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp5^lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_865_while_identity lstm_865/while/Identity:output:0"?
lstm_865_while_identity_1"lstm_865/while/Identity_1:output:0"?
lstm_865_while_identity_2"lstm_865/while/Identity_2:output:0"?
lstm_865_while_identity_3"lstm_865/while/Identity_3:output:0"?
lstm_865_while_identity_4"lstm_865/while/Identity_4:output:0"?
lstm_865_while_identity_5"lstm_865/while/Identity_5:output:0"T
'lstm_865_while_lstm_865_strided_slice_1)lstm_865_while_lstm_865_strided_slice_1_0"~
<lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource>lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0"ђ
=lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource?lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0"|
;lstm_865_while_lstm_cell_865_matmul_readvariableop_resource=lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0"╠
clstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensorelstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp2h
2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp2l
4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_866_layer_call_fn_5180046

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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175694o
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
─8
н
while_body_5179427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_866_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_866_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_866_matmul_readvariableop_resource:2(F
4while_lstm_cell_866_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_866/BiasAdd/ReadVariableOpб)while/lstm_cell_866/MatMul/ReadVariableOpб+while/lstm_cell_866/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_866/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_866/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_866/addAddV2$while/lstm_cell_866/MatMul:product:0&while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_866/BiasAddBiasAddwhile/lstm_cell_866/add:z:02while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_866/splitSplit,while/lstm_cell_866/split/split_dim:output:0$while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_866/SigmoidSigmoid"while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_1Sigmoid"while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_866/mulMul!while/lstm_cell_866/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_866/ReluRelu"while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_866/mul_1Mulwhile/lstm_cell_866/Sigmoid:y:0&while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_866/add_1AddV2while/lstm_cell_866/mul:z:0while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_2Sigmoid"while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_866/Relu_1Reluwhile/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_866/mul_2Mul!while/lstm_cell_866/Sigmoid_2:y:0(while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_866/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_866/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_866/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_866/BiasAdd/ReadVariableOp*^while/lstm_cell_866/MatMul/ReadVariableOp,^while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_866_biasadd_readvariableop_resource5while_lstm_cell_866_biasadd_readvariableop_resource_0"n
4while_lstm_cell_866_matmul_1_readvariableop_resource6while_lstm_cell_866_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_866_matmul_readvariableop_resource4while_lstm_cell_866_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_866/BiasAdd/ReadVariableOp*while/lstm_cell_866/BiasAdd/ReadVariableOp2V
)while/lstm_cell_866/MatMul/ReadVariableOp)while/lstm_cell_866/MatMul/ReadVariableOp2Z
+while/lstm_cell_866/MatMul_1/ReadVariableOp+while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5175052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5175052___redundant_placeholder05
1while_while_cond_5175052___redundant_placeholder15
1while_while_cond_5175052___redundant_placeholder25
1while_while_cond_5175052___redundant_placeholder3
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5176826

inputs?
,lstm_cell_864_matmul_readvariableop_resource:	љA
.lstm_cell_864_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_864_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_864/BiasAdd/ReadVariableOpб#lstm_cell_864/MatMul/ReadVariableOpб%lstm_cell_864/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_864/MatMul/ReadVariableOpReadVariableOp,lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_864/MatMulMatMulstrided_slice_2:output:0+lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_864/MatMul_1MatMulzeros:output:0-lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_864/addAddV2lstm_cell_864/MatMul:product:0 lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_864/BiasAddBiasAddlstm_cell_864/add:z:0,lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_864/splitSplit&lstm_cell_864/split/split_dim:output:0lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_864/SigmoidSigmoidlstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_1Sigmoidlstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_864/mulMullstm_cell_864/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_864/ReluRelulstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_864/mul_1Mullstm_cell_864/Sigmoid:y:0 lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_864/add_1AddV2lstm_cell_864/mul:z:0lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_2Sigmoidlstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_864/Relu_1Relulstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_864/mul_2Mullstm_cell_864/Sigmoid_2:y:0"lstm_cell_864/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_864_matmul_readvariableop_resource.lstm_cell_864_matmul_1_readvariableop_resource-lstm_cell_864_biasadd_readvariableop_resource*
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
while_body_5176742*
condR
while_cond_5176741*K
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
NoOpNoOp%^lstm_cell_864/BiasAdd/ReadVariableOp$^lstm_cell_864/MatMul/ReadVariableOp&^lstm_cell_864/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_864/BiasAdd/ReadVariableOp$lstm_cell_864/BiasAdd/ReadVariableOp2J
#lstm_cell_864/MatMul/ReadVariableOp#lstm_cell_864/MatMul/ReadVariableOp2N
%lstm_cell_864/MatMul_1/ReadVariableOp%lstm_cell_864/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
О
є
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175198

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
љ
Х
*__inference_lstm_866_layer_call_fn_5179203
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5175822o
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
─8
н
while_body_5176196
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_866_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_866_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_866_matmul_readvariableop_resource:2(F
4while_lstm_cell_866_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_866/BiasAdd/ReadVariableOpб)while/lstm_cell_866/MatMul/ReadVariableOpб+while/lstm_cell_866/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_866/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_866/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_866/addAddV2$while/lstm_cell_866/MatMul:product:0&while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_866/BiasAddBiasAddwhile/lstm_cell_866/add:z:02while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_866/splitSplit,while/lstm_cell_866/split/split_dim:output:0$while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_866/SigmoidSigmoid"while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_1Sigmoid"while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_866/mulMul!while/lstm_cell_866/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_866/ReluRelu"while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_866/mul_1Mulwhile/lstm_cell_866/Sigmoid:y:0&while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_866/add_1AddV2while/lstm_cell_866/mul:z:0while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_2Sigmoid"while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_866/Relu_1Reluwhile/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_866/mul_2Mul!while/lstm_cell_866/Sigmoid_2:y:0(while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_866/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_866/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_866/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_866/BiasAdd/ReadVariableOp*^while/lstm_cell_866/MatMul/ReadVariableOp,^while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_866_biasadd_readvariableop_resource5while_lstm_cell_866_biasadd_readvariableop_resource_0"n
4while_lstm_cell_866_matmul_1_readvariableop_resource6while_lstm_cell_866_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_866_matmul_readvariableop_resource4while_lstm_cell_866_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_866/BiasAdd/ReadVariableOp*while/lstm_cell_866/BiasAdd/ReadVariableOp2V
)while/lstm_cell_866/MatMul/ReadVariableOp)while/lstm_cell_866/MatMul/ReadVariableOp2Z
+while/lstm_cell_866/MatMul_1/ReadVariableOp+while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
м
ч
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176894

inputs#
lstm_864_5176867:	љ#
lstm_864_5176869:	dљ
lstm_864_5176871:	љ#
lstm_865_5176874:	d╚#
lstm_865_5176876:	2╚
lstm_865_5176878:	╚"
lstm_866_5176881:2("
lstm_866_5176883:
(
lstm_866_5176885:(#
dense_288_5176888:

dense_288_5176890:
identityѕб!dense_288/StatefulPartitionedCallб lstm_864/StatefulPartitionedCallб lstm_865/StatefulPartitionedCallб lstm_866/StatefulPartitionedCallІ
 lstm_864/StatefulPartitionedCallStatefulPartitionedCallinputslstm_864_5176867lstm_864_5176869lstm_864_5176871*
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5176826«
 lstm_865/StatefulPartitionedCallStatefulPartitionedCall)lstm_864/StatefulPartitionedCall:output:0lstm_865_5176874lstm_865_5176876lstm_865_5176878*
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176661ф
 lstm_866/StatefulPartitionedCallStatefulPartitionedCall)lstm_865/StatefulPartitionedCall:output:0lstm_866_5176881lstm_866_5176883lstm_866_5176885*
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176496џ
!dense_288/StatefulPartitionedCallStatefulPartitionedCall)lstm_866/StatefulPartitionedCall:output:0dense_288_5176888dense_288_5176890*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_288_layer_call_and_return_conditional_losses_5176298y
IdentityIdentity*dense_288/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_288/StatefulPartitionedCall!^lstm_864/StatefulPartitionedCall!^lstm_865/StatefulPartitionedCall!^lstm_866/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_288/StatefulPartitionedCall!dense_288/StatefulPartitionedCall2D
 lstm_864/StatefulPartitionedCall lstm_864/StatefulPartitionedCall2D
 lstm_865/StatefulPartitionedCall lstm_865/StatefulPartitionedCall2D
 lstm_866/StatefulPartitionedCall lstm_866/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_5178481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_864_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_864_matmul_readvariableop_resource:	љG
4while_lstm_cell_864_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_864/BiasAdd/ReadVariableOpб)while/lstm_cell_864/MatMul/ReadVariableOpб+while/lstm_cell_864/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_864/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_864/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_864/addAddV2$while/lstm_cell_864/MatMul:product:0&while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_864/BiasAddBiasAddwhile/lstm_cell_864/add:z:02while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_864/splitSplit,while/lstm_cell_864/split/split_dim:output:0$while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_864/SigmoidSigmoid"while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_1Sigmoid"while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_864/mulMul!while/lstm_cell_864/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_864/ReluRelu"while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_864/mul_1Mulwhile/lstm_cell_864/Sigmoid:y:0&while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_864/add_1AddV2while/lstm_cell_864/mul:z:0while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_2Sigmoid"while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_864/Relu_1Reluwhile/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_864/mul_2Mul!while/lstm_cell_864/Sigmoid_2:y:0(while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_864/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_864/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_864/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_864/BiasAdd/ReadVariableOp*^while/lstm_cell_864/MatMul/ReadVariableOp,^while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_864_biasadd_readvariableop_resource5while_lstm_cell_864_biasadd_readvariableop_resource_0"n
4while_lstm_cell_864_matmul_1_readvariableop_resource6while_lstm_cell_864_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_864_matmul_readvariableop_resource4while_lstm_cell_864_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_864/BiasAdd/ReadVariableOp*while/lstm_cell_864/BiasAdd/ReadVariableOp2V
)while/lstm_cell_864/MatMul/ReadVariableOp)while/lstm_cell_864/MatMul/ReadVariableOp2Z
+while/lstm_cell_864/MatMul_1/ReadVariableOp+while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
■Ђ
Џ
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177522

inputsH
5lstm_864_lstm_cell_864_matmul_readvariableop_resource:	љJ
7lstm_864_lstm_cell_864_matmul_1_readvariableop_resource:	dљE
6lstm_864_lstm_cell_864_biasadd_readvariableop_resource:	љH
5lstm_865_lstm_cell_865_matmul_readvariableop_resource:	d╚J
7lstm_865_lstm_cell_865_matmul_1_readvariableop_resource:	2╚E
6lstm_865_lstm_cell_865_biasadd_readvariableop_resource:	╚G
5lstm_866_lstm_cell_866_matmul_readvariableop_resource:2(I
7lstm_866_lstm_cell_866_matmul_1_readvariableop_resource:
(D
6lstm_866_lstm_cell_866_biasadd_readvariableop_resource:(:
(dense_288_matmul_readvariableop_resource:
7
)dense_288_biasadd_readvariableop_resource:
identityѕб dense_288/BiasAdd/ReadVariableOpбdense_288/MatMul/ReadVariableOpб-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOpб,lstm_864/lstm_cell_864/MatMul/ReadVariableOpб.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOpбlstm_864/whileб-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOpб,lstm_865/lstm_cell_865/MatMul/ReadVariableOpб.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOpбlstm_865/whileб-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOpб,lstm_866/lstm_cell_866/MatMul/ReadVariableOpб.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOpбlstm_866/whileD
lstm_864/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_864/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_864/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_864/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_864/strided_sliceStridedSlicelstm_864/Shape:output:0%lstm_864/strided_slice/stack:output:0'lstm_864/strided_slice/stack_1:output:0'lstm_864/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_864/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_864/zeros/packedPacklstm_864/strided_slice:output:0 lstm_864/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_864/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_864/zerosFilllstm_864/zeros/packed:output:0lstm_864/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_864/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_864/zeros_1/packedPacklstm_864/strided_slice:output:0"lstm_864/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_864/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_864/zeros_1Fill lstm_864/zeros_1/packed:output:0lstm_864/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_864/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_864/transpose	Transposeinputs lstm_864/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_864/Shape_1Shapelstm_864/transpose:y:0*
T0*
_output_shapes
:h
lstm_864/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_864/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_864/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_864/strided_slice_1StridedSlicelstm_864/Shape_1:output:0'lstm_864/strided_slice_1/stack:output:0)lstm_864/strided_slice_1/stack_1:output:0)lstm_864/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_864/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_864/TensorArrayV2TensorListReserve-lstm_864/TensorArrayV2/element_shape:output:0!lstm_864/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_864/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_864/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_864/transpose:y:0Glstm_864/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_864/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_864/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_864/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_864/strided_slice_2StridedSlicelstm_864/transpose:y:0'lstm_864/strided_slice_2/stack:output:0)lstm_864/strided_slice_2/stack_1:output:0)lstm_864/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_864/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp5lstm_864_lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_864/lstm_cell_864/MatMulMatMul!lstm_864/strided_slice_2:output:04lstm_864/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp7lstm_864_lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_864/lstm_cell_864/MatMul_1MatMullstm_864/zeros:output:06lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_864/lstm_cell_864/addAddV2'lstm_864/lstm_cell_864/MatMul:product:0)lstm_864/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp6lstm_864_lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_864/lstm_cell_864/BiasAddBiasAddlstm_864/lstm_cell_864/add:z:05lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_864/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_864/lstm_cell_864/splitSplit/lstm_864/lstm_cell_864/split/split_dim:output:0'lstm_864/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_864/lstm_cell_864/SigmoidSigmoid%lstm_864/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_864/lstm_cell_864/Sigmoid_1Sigmoid%lstm_864/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_864/lstm_cell_864/mulMul$lstm_864/lstm_cell_864/Sigmoid_1:y:0lstm_864/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_864/lstm_cell_864/ReluRelu%lstm_864/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dц
lstm_864/lstm_cell_864/mul_1Mul"lstm_864/lstm_cell_864/Sigmoid:y:0)lstm_864/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_864/lstm_cell_864/add_1AddV2lstm_864/lstm_cell_864/mul:z:0 lstm_864/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_864/lstm_cell_864/Sigmoid_2Sigmoid%lstm_864/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dy
lstm_864/lstm_cell_864/Relu_1Relu lstm_864/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_864/lstm_cell_864/mul_2Mul$lstm_864/lstm_cell_864/Sigmoid_2:y:0+lstm_864/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_864/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_864/TensorArrayV2_1TensorListReserve/lstm_864/TensorArrayV2_1/element_shape:output:0!lstm_864/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_864/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_864/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_864/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_864/whileWhile$lstm_864/while/loop_counter:output:0*lstm_864/while/maximum_iterations:output:0lstm_864/time:output:0!lstm_864/TensorArrayV2_1:handle:0lstm_864/zeros:output:0lstm_864/zeros_1:output:0!lstm_864/strided_slice_1:output:0@lstm_864/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_864_lstm_cell_864_matmul_readvariableop_resource7lstm_864_lstm_cell_864_matmul_1_readvariableop_resource6lstm_864_lstm_cell_864_biasadd_readvariableop_resource*
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
lstm_864_while_body_5177154*'
condR
lstm_864_while_cond_5177153*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_864/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_864/TensorArrayV2Stack/TensorListStackTensorListStacklstm_864/while:output:3Blstm_864/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_864/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_864/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_864/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_864/strided_slice_3StridedSlice4lstm_864/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_864/strided_slice_3/stack:output:0)lstm_864/strided_slice_3/stack_1:output:0)lstm_864/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_864/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_864/transpose_1	Transpose4lstm_864/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_864/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_864/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_865/ShapeShapelstm_864/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_865/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_865/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_865/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_865/strided_sliceStridedSlicelstm_865/Shape:output:0%lstm_865/strided_slice/stack:output:0'lstm_865/strided_slice/stack_1:output:0'lstm_865/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_865/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_865/zeros/packedPacklstm_865/strided_slice:output:0 lstm_865/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_865/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_865/zerosFilllstm_865/zeros/packed:output:0lstm_865/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_865/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_865/zeros_1/packedPacklstm_865/strided_slice:output:0"lstm_865/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_865/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_865/zeros_1Fill lstm_865/zeros_1/packed:output:0lstm_865/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_865/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_865/transpose	Transposelstm_864/transpose_1:y:0 lstm_865/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_865/Shape_1Shapelstm_865/transpose:y:0*
T0*
_output_shapes
:h
lstm_865/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_865/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_865/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_865/strided_slice_1StridedSlicelstm_865/Shape_1:output:0'lstm_865/strided_slice_1/stack:output:0)lstm_865/strided_slice_1/stack_1:output:0)lstm_865/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_865/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_865/TensorArrayV2TensorListReserve-lstm_865/TensorArrayV2/element_shape:output:0!lstm_865/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_865/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_865/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_865/transpose:y:0Glstm_865/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_865/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_865/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_865/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_865/strided_slice_2StridedSlicelstm_865/transpose:y:0'lstm_865/strided_slice_2/stack:output:0)lstm_865/strided_slice_2/stack_1:output:0)lstm_865/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_865/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp5lstm_865_lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_865/lstm_cell_865/MatMulMatMul!lstm_865/strided_slice_2:output:04lstm_865/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp7lstm_865_lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_865/lstm_cell_865/MatMul_1MatMullstm_865/zeros:output:06lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_865/lstm_cell_865/addAddV2'lstm_865/lstm_cell_865/MatMul:product:0)lstm_865/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp6lstm_865_lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_865/lstm_cell_865/BiasAddBiasAddlstm_865/lstm_cell_865/add:z:05lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_865/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_865/lstm_cell_865/splitSplit/lstm_865/lstm_cell_865/split/split_dim:output:0'lstm_865/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_865/lstm_cell_865/SigmoidSigmoid%lstm_865/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_865/lstm_cell_865/Sigmoid_1Sigmoid%lstm_865/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_865/lstm_cell_865/mulMul$lstm_865/lstm_cell_865/Sigmoid_1:y:0lstm_865/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_865/lstm_cell_865/ReluRelu%lstm_865/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_865/lstm_cell_865/mul_1Mul"lstm_865/lstm_cell_865/Sigmoid:y:0)lstm_865/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_865/lstm_cell_865/add_1AddV2lstm_865/lstm_cell_865/mul:z:0 lstm_865/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_865/lstm_cell_865/Sigmoid_2Sigmoid%lstm_865/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2y
lstm_865/lstm_cell_865/Relu_1Relu lstm_865/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_865/lstm_cell_865/mul_2Mul$lstm_865/lstm_cell_865/Sigmoid_2:y:0+lstm_865/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_865/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_865/TensorArrayV2_1TensorListReserve/lstm_865/TensorArrayV2_1/element_shape:output:0!lstm_865/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_865/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_865/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_865/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_865/whileWhile$lstm_865/while/loop_counter:output:0*lstm_865/while/maximum_iterations:output:0lstm_865/time:output:0!lstm_865/TensorArrayV2_1:handle:0lstm_865/zeros:output:0lstm_865/zeros_1:output:0!lstm_865/strided_slice_1:output:0@lstm_865/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_865_lstm_cell_865_matmul_readvariableop_resource7lstm_865_lstm_cell_865_matmul_1_readvariableop_resource6lstm_865_lstm_cell_865_biasadd_readvariableop_resource*
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
lstm_865_while_body_5177293*'
condR
lstm_865_while_cond_5177292*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_865/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_865/TensorArrayV2Stack/TensorListStackTensorListStacklstm_865/while:output:3Blstm_865/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_865/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_865/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_865/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_865/strided_slice_3StridedSlice4lstm_865/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_865/strided_slice_3/stack:output:0)lstm_865/strided_slice_3/stack_1:output:0)lstm_865/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_865/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_865/transpose_1	Transpose4lstm_865/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_865/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_865/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_866/ShapeShapelstm_865/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_866/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_866/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_866/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_866/strided_sliceStridedSlicelstm_866/Shape:output:0%lstm_866/strided_slice/stack:output:0'lstm_866/strided_slice/stack_1:output:0'lstm_866/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_866/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_866/zeros/packedPacklstm_866/strided_slice:output:0 lstm_866/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_866/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_866/zerosFilllstm_866/zeros/packed:output:0lstm_866/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_866/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_866/zeros_1/packedPacklstm_866/strided_slice:output:0"lstm_866/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_866/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_866/zeros_1Fill lstm_866/zeros_1/packed:output:0lstm_866/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_866/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_866/transpose	Transposelstm_865/transpose_1:y:0 lstm_866/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_866/Shape_1Shapelstm_866/transpose:y:0*
T0*
_output_shapes
:h
lstm_866/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_866/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_866/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_866/strided_slice_1StridedSlicelstm_866/Shape_1:output:0'lstm_866/strided_slice_1/stack:output:0)lstm_866/strided_slice_1/stack_1:output:0)lstm_866/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_866/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_866/TensorArrayV2TensorListReserve-lstm_866/TensorArrayV2/element_shape:output:0!lstm_866/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_866/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_866/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_866/transpose:y:0Glstm_866/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_866/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_866/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_866/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_866/strided_slice_2StridedSlicelstm_866/transpose:y:0'lstm_866/strided_slice_2/stack:output:0)lstm_866/strided_slice_2/stack_1:output:0)lstm_866/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_866/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp5lstm_866_lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_866/lstm_cell_866/MatMulMatMul!lstm_866/strided_slice_2:output:04lstm_866/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp7lstm_866_lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_866/lstm_cell_866/MatMul_1MatMullstm_866/zeros:output:06lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_866/lstm_cell_866/addAddV2'lstm_866/lstm_cell_866/MatMul:product:0)lstm_866/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp6lstm_866_lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_866/lstm_cell_866/BiasAddBiasAddlstm_866/lstm_cell_866/add:z:05lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_866/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_866/lstm_cell_866/splitSplit/lstm_866/lstm_cell_866/split/split_dim:output:0'lstm_866/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_866/lstm_cell_866/SigmoidSigmoid%lstm_866/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_866/lstm_cell_866/Sigmoid_1Sigmoid%lstm_866/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_866/lstm_cell_866/mulMul$lstm_866/lstm_cell_866/Sigmoid_1:y:0lstm_866/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_866/lstm_cell_866/ReluRelu%lstm_866/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_866/lstm_cell_866/mul_1Mul"lstm_866/lstm_cell_866/Sigmoid:y:0)lstm_866/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_866/lstm_cell_866/add_1AddV2lstm_866/lstm_cell_866/mul:z:0 lstm_866/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_866/lstm_cell_866/Sigmoid_2Sigmoid%lstm_866/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
y
lstm_866/lstm_cell_866/Relu_1Relu lstm_866/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_866/lstm_cell_866/mul_2Mul$lstm_866/lstm_cell_866/Sigmoid_2:y:0+lstm_866/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_866/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_866/TensorArrayV2_1TensorListReserve/lstm_866/TensorArrayV2_1/element_shape:output:0!lstm_866/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_866/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_866/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_866/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_866/whileWhile$lstm_866/while/loop_counter:output:0*lstm_866/while/maximum_iterations:output:0lstm_866/time:output:0!lstm_866/TensorArrayV2_1:handle:0lstm_866/zeros:output:0lstm_866/zeros_1:output:0!lstm_866/strided_slice_1:output:0@lstm_866/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_866_lstm_cell_866_matmul_readvariableop_resource7lstm_866_lstm_cell_866_matmul_1_readvariableop_resource6lstm_866_lstm_cell_866_biasadd_readvariableop_resource*
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
lstm_866_while_body_5177432*'
condR
lstm_866_while_cond_5177431*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_866/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_866/TensorArrayV2Stack/TensorListStackTensorListStacklstm_866/while:output:3Blstm_866/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_866/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_866/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_866/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_866/strided_slice_3StridedSlice4lstm_866/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_866/strided_slice_3/stack:output:0)lstm_866/strided_slice_3/stack_1:output:0)lstm_866/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_866/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_866/transpose_1	Transpose4lstm_866/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_866/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_866/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_288/MatMul/ReadVariableOpReadVariableOp(dense_288_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_288/MatMulMatMul!lstm_866/strided_slice_3:output:0'dense_288/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_288/BiasAdd/ReadVariableOpReadVariableOp)dense_288_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_288/BiasAddBiasAdddense_288/MatMul:product:0(dense_288/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_288/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_288/BiasAdd/ReadVariableOp ^dense_288/MatMul/ReadVariableOp.^lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp-^lstm_864/lstm_cell_864/MatMul/ReadVariableOp/^lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp^lstm_864/while.^lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp-^lstm_865/lstm_cell_865/MatMul/ReadVariableOp/^lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp^lstm_865/while.^lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp-^lstm_866/lstm_cell_866/MatMul/ReadVariableOp/^lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp^lstm_866/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_288/BiasAdd/ReadVariableOp dense_288/BiasAdd/ReadVariableOp2B
dense_288/MatMul/ReadVariableOpdense_288/MatMul/ReadVariableOp2^
-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp2\
,lstm_864/lstm_cell_864/MatMul/ReadVariableOp,lstm_864/lstm_cell_864/MatMul/ReadVariableOp2`
.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp2 
lstm_864/whilelstm_864/while2^
-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp2\
,lstm_865/lstm_cell_865/MatMul/ReadVariableOp,lstm_865/lstm_cell_865/MatMul/ReadVariableOp2`
.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp2 
lstm_865/whilelstm_865/while2^
-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp2\
,lstm_866/lstm_cell_866/MatMul/ReadVariableOp,lstm_866/lstm_cell_866/MatMul/ReadVariableOp2`
.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp2 
lstm_866/whilelstm_866/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Э
┤
*__inference_lstm_866_layer_call_fn_5179225

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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176496o
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
и

Ч
lstm_865_while_cond_5177292.
*lstm_865_while_lstm_865_while_loop_counter4
0lstm_865_while_lstm_865_while_maximum_iterations
lstm_865_while_placeholder 
lstm_865_while_placeholder_1 
lstm_865_while_placeholder_2 
lstm_865_while_placeholder_30
,lstm_865_while_less_lstm_865_strided_slice_1G
Clstm_865_while_lstm_865_while_cond_5177292___redundant_placeholder0G
Clstm_865_while_lstm_865_while_cond_5177292___redundant_placeholder1G
Clstm_865_while_lstm_865_while_cond_5177292___redundant_placeholder2G
Clstm_865_while_lstm_865_while_cond_5177292___redundant_placeholder3
lstm_865_while_identity
є
lstm_865/while/LessLesslstm_865_while_placeholder,lstm_865_while_less_lstm_865_strided_slice_1*
T0*
_output_shapes
: ]
lstm_865/while/IdentityIdentitylstm_865/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_865_while_identity lstm_865/while/Identity:output:0*(
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
while_body_5178668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_865_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_865/BiasAdd/ReadVariableOpб)while/lstm_cell_865/MatMul/ReadVariableOpб+while/lstm_cell_865/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_865/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_865/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_865/addAddV2$while/lstm_cell_865/MatMul:product:0&while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_865/BiasAddBiasAddwhile/lstm_cell_865/add:z:02while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_865/splitSplit,while/lstm_cell_865/split/split_dim:output:0$while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_865/SigmoidSigmoid"while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_1Sigmoid"while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_865/mulMul!while/lstm_cell_865/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_865/ReluRelu"while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_865/mul_1Mulwhile/lstm_cell_865/Sigmoid:y:0&while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_865/add_1AddV2while/lstm_cell_865/mul:z:0while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_2Sigmoid"while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_865/Relu_1Reluwhile/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_865/mul_2Mul!while/lstm_cell_865/Sigmoid_2:y:0(while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_865/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_865/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_865/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_865/BiasAdd/ReadVariableOp*^while/lstm_cell_865/MatMul/ReadVariableOp,^while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_865_biasadd_readvariableop_resource5while_lstm_cell_865_biasadd_readvariableop_resource_0"n
4while_lstm_cell_865_matmul_1_readvariableop_resource6while_lstm_cell_865_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_865_matmul_readvariableop_resource4while_lstm_cell_865_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_865/BiasAdd/ReadVariableOp*while/lstm_cell_865/BiasAdd/ReadVariableOp2V
)while/lstm_cell_865/MatMul/ReadVariableOp)while/lstm_cell_865/MatMul/ReadVariableOp2Z
+while/lstm_cell_865/MatMul_1/ReadVariableOp+while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
─8
н
while_body_5179570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_866_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_866_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_866_matmul_readvariableop_resource:2(F
4while_lstm_cell_866_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_866/BiasAdd/ReadVariableOpб)while/lstm_cell_866/MatMul/ReadVariableOpб+while/lstm_cell_866/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_866/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_866/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_866/addAddV2$while/lstm_cell_866/MatMul:product:0&while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_866/BiasAddBiasAddwhile/lstm_cell_866/add:z:02while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_866/splitSplit,while/lstm_cell_866/split/split_dim:output:0$while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_866/SigmoidSigmoid"while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_1Sigmoid"while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_866/mulMul!while/lstm_cell_866/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_866/ReluRelu"while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_866/mul_1Mulwhile/lstm_cell_866/Sigmoid:y:0&while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_866/add_1AddV2while/lstm_cell_866/mul:z:0while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_2Sigmoid"while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_866/Relu_1Reluwhile/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_866/mul_2Mul!while/lstm_cell_866/Sigmoid_2:y:0(while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_866/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_866/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_866/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_866/BiasAdd/ReadVariableOp*^while/lstm_cell_866/MatMul/ReadVariableOp,^while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_866_biasadd_readvariableop_resource5while_lstm_cell_866_biasadd_readvariableop_resource_0"n
4while_lstm_cell_866_matmul_1_readvariableop_resource6while_lstm_cell_866_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_866_matmul_readvariableop_resource4while_lstm_cell_866_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_866/BiasAdd/ReadVariableOp*while/lstm_cell_866/BiasAdd/ReadVariableOp2V
)while/lstm_cell_866/MatMul/ReadVariableOp)while/lstm_cell_866/MatMul/ReadVariableOp2Z
+while/lstm_cell_866/MatMul_1/ReadVariableOp+while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_865_layer_call_fn_5178576
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5175281|
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
■Ђ
Џ
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177949

inputsH
5lstm_864_lstm_cell_864_matmul_readvariableop_resource:	љJ
7lstm_864_lstm_cell_864_matmul_1_readvariableop_resource:	dљE
6lstm_864_lstm_cell_864_biasadd_readvariableop_resource:	љH
5lstm_865_lstm_cell_865_matmul_readvariableop_resource:	d╚J
7lstm_865_lstm_cell_865_matmul_1_readvariableop_resource:	2╚E
6lstm_865_lstm_cell_865_biasadd_readvariableop_resource:	╚G
5lstm_866_lstm_cell_866_matmul_readvariableop_resource:2(I
7lstm_866_lstm_cell_866_matmul_1_readvariableop_resource:
(D
6lstm_866_lstm_cell_866_biasadd_readvariableop_resource:(:
(dense_288_matmul_readvariableop_resource:
7
)dense_288_biasadd_readvariableop_resource:
identityѕб dense_288/BiasAdd/ReadVariableOpбdense_288/MatMul/ReadVariableOpб-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOpб,lstm_864/lstm_cell_864/MatMul/ReadVariableOpб.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOpбlstm_864/whileб-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOpб,lstm_865/lstm_cell_865/MatMul/ReadVariableOpб.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOpбlstm_865/whileб-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOpб,lstm_866/lstm_cell_866/MatMul/ReadVariableOpб.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOpбlstm_866/whileD
lstm_864/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_864/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_864/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_864/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_864/strided_sliceStridedSlicelstm_864/Shape:output:0%lstm_864/strided_slice/stack:output:0'lstm_864/strided_slice/stack_1:output:0'lstm_864/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_864/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_864/zeros/packedPacklstm_864/strided_slice:output:0 lstm_864/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_864/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_864/zerosFilllstm_864/zeros/packed:output:0lstm_864/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_864/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_864/zeros_1/packedPacklstm_864/strided_slice:output:0"lstm_864/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_864/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_864/zeros_1Fill lstm_864/zeros_1/packed:output:0lstm_864/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_864/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_864/transpose	Transposeinputs lstm_864/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_864/Shape_1Shapelstm_864/transpose:y:0*
T0*
_output_shapes
:h
lstm_864/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_864/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_864/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_864/strided_slice_1StridedSlicelstm_864/Shape_1:output:0'lstm_864/strided_slice_1/stack:output:0)lstm_864/strided_slice_1/stack_1:output:0)lstm_864/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_864/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_864/TensorArrayV2TensorListReserve-lstm_864/TensorArrayV2/element_shape:output:0!lstm_864/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_864/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_864/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_864/transpose:y:0Glstm_864/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_864/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_864/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_864/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_864/strided_slice_2StridedSlicelstm_864/transpose:y:0'lstm_864/strided_slice_2/stack:output:0)lstm_864/strided_slice_2/stack_1:output:0)lstm_864/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_864/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp5lstm_864_lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_864/lstm_cell_864/MatMulMatMul!lstm_864/strided_slice_2:output:04lstm_864/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp7lstm_864_lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_864/lstm_cell_864/MatMul_1MatMullstm_864/zeros:output:06lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_864/lstm_cell_864/addAddV2'lstm_864/lstm_cell_864/MatMul:product:0)lstm_864/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp6lstm_864_lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_864/lstm_cell_864/BiasAddBiasAddlstm_864/lstm_cell_864/add:z:05lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_864/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_864/lstm_cell_864/splitSplit/lstm_864/lstm_cell_864/split/split_dim:output:0'lstm_864/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_864/lstm_cell_864/SigmoidSigmoid%lstm_864/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_864/lstm_cell_864/Sigmoid_1Sigmoid%lstm_864/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_864/lstm_cell_864/mulMul$lstm_864/lstm_cell_864/Sigmoid_1:y:0lstm_864/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_864/lstm_cell_864/ReluRelu%lstm_864/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dц
lstm_864/lstm_cell_864/mul_1Mul"lstm_864/lstm_cell_864/Sigmoid:y:0)lstm_864/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_864/lstm_cell_864/add_1AddV2lstm_864/lstm_cell_864/mul:z:0 lstm_864/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_864/lstm_cell_864/Sigmoid_2Sigmoid%lstm_864/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dy
lstm_864/lstm_cell_864/Relu_1Relu lstm_864/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_864/lstm_cell_864/mul_2Mul$lstm_864/lstm_cell_864/Sigmoid_2:y:0+lstm_864/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_864/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_864/TensorArrayV2_1TensorListReserve/lstm_864/TensorArrayV2_1/element_shape:output:0!lstm_864/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_864/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_864/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_864/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_864/whileWhile$lstm_864/while/loop_counter:output:0*lstm_864/while/maximum_iterations:output:0lstm_864/time:output:0!lstm_864/TensorArrayV2_1:handle:0lstm_864/zeros:output:0lstm_864/zeros_1:output:0!lstm_864/strided_slice_1:output:0@lstm_864/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_864_lstm_cell_864_matmul_readvariableop_resource7lstm_864_lstm_cell_864_matmul_1_readvariableop_resource6lstm_864_lstm_cell_864_biasadd_readvariableop_resource*
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
lstm_864_while_body_5177581*'
condR
lstm_864_while_cond_5177580*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_864/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_864/TensorArrayV2Stack/TensorListStackTensorListStacklstm_864/while:output:3Blstm_864/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_864/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_864/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_864/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_864/strided_slice_3StridedSlice4lstm_864/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_864/strided_slice_3/stack:output:0)lstm_864/strided_slice_3/stack_1:output:0)lstm_864/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_864/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_864/transpose_1	Transpose4lstm_864/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_864/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_864/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_865/ShapeShapelstm_864/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_865/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_865/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_865/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_865/strided_sliceStridedSlicelstm_865/Shape:output:0%lstm_865/strided_slice/stack:output:0'lstm_865/strided_slice/stack_1:output:0'lstm_865/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_865/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_865/zeros/packedPacklstm_865/strided_slice:output:0 lstm_865/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_865/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_865/zerosFilllstm_865/zeros/packed:output:0lstm_865/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_865/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_865/zeros_1/packedPacklstm_865/strided_slice:output:0"lstm_865/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_865/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_865/zeros_1Fill lstm_865/zeros_1/packed:output:0lstm_865/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_865/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_865/transpose	Transposelstm_864/transpose_1:y:0 lstm_865/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_865/Shape_1Shapelstm_865/transpose:y:0*
T0*
_output_shapes
:h
lstm_865/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_865/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_865/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_865/strided_slice_1StridedSlicelstm_865/Shape_1:output:0'lstm_865/strided_slice_1/stack:output:0)lstm_865/strided_slice_1/stack_1:output:0)lstm_865/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_865/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_865/TensorArrayV2TensorListReserve-lstm_865/TensorArrayV2/element_shape:output:0!lstm_865/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_865/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_865/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_865/transpose:y:0Glstm_865/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_865/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_865/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_865/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_865/strided_slice_2StridedSlicelstm_865/transpose:y:0'lstm_865/strided_slice_2/stack:output:0)lstm_865/strided_slice_2/stack_1:output:0)lstm_865/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_865/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp5lstm_865_lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_865/lstm_cell_865/MatMulMatMul!lstm_865/strided_slice_2:output:04lstm_865/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp7lstm_865_lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_865/lstm_cell_865/MatMul_1MatMullstm_865/zeros:output:06lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_865/lstm_cell_865/addAddV2'lstm_865/lstm_cell_865/MatMul:product:0)lstm_865/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp6lstm_865_lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_865/lstm_cell_865/BiasAddBiasAddlstm_865/lstm_cell_865/add:z:05lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_865/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_865/lstm_cell_865/splitSplit/lstm_865/lstm_cell_865/split/split_dim:output:0'lstm_865/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_865/lstm_cell_865/SigmoidSigmoid%lstm_865/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_865/lstm_cell_865/Sigmoid_1Sigmoid%lstm_865/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_865/lstm_cell_865/mulMul$lstm_865/lstm_cell_865/Sigmoid_1:y:0lstm_865/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_865/lstm_cell_865/ReluRelu%lstm_865/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_865/lstm_cell_865/mul_1Mul"lstm_865/lstm_cell_865/Sigmoid:y:0)lstm_865/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_865/lstm_cell_865/add_1AddV2lstm_865/lstm_cell_865/mul:z:0 lstm_865/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_865/lstm_cell_865/Sigmoid_2Sigmoid%lstm_865/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2y
lstm_865/lstm_cell_865/Relu_1Relu lstm_865/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_865/lstm_cell_865/mul_2Mul$lstm_865/lstm_cell_865/Sigmoid_2:y:0+lstm_865/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_865/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_865/TensorArrayV2_1TensorListReserve/lstm_865/TensorArrayV2_1/element_shape:output:0!lstm_865/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_865/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_865/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_865/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_865/whileWhile$lstm_865/while/loop_counter:output:0*lstm_865/while/maximum_iterations:output:0lstm_865/time:output:0!lstm_865/TensorArrayV2_1:handle:0lstm_865/zeros:output:0lstm_865/zeros_1:output:0!lstm_865/strided_slice_1:output:0@lstm_865/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_865_lstm_cell_865_matmul_readvariableop_resource7lstm_865_lstm_cell_865_matmul_1_readvariableop_resource6lstm_865_lstm_cell_865_biasadd_readvariableop_resource*
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
lstm_865_while_body_5177720*'
condR
lstm_865_while_cond_5177719*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_865/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_865/TensorArrayV2Stack/TensorListStackTensorListStacklstm_865/while:output:3Blstm_865/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_865/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_865/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_865/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_865/strided_slice_3StridedSlice4lstm_865/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_865/strided_slice_3/stack:output:0)lstm_865/strided_slice_3/stack_1:output:0)lstm_865/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_865/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_865/transpose_1	Transpose4lstm_865/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_865/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_865/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_866/ShapeShapelstm_865/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_866/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_866/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_866/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_866/strided_sliceStridedSlicelstm_866/Shape:output:0%lstm_866/strided_slice/stack:output:0'lstm_866/strided_slice/stack_1:output:0'lstm_866/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_866/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_866/zeros/packedPacklstm_866/strided_slice:output:0 lstm_866/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_866/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_866/zerosFilllstm_866/zeros/packed:output:0lstm_866/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_866/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_866/zeros_1/packedPacklstm_866/strided_slice:output:0"lstm_866/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_866/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_866/zeros_1Fill lstm_866/zeros_1/packed:output:0lstm_866/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_866/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_866/transpose	Transposelstm_865/transpose_1:y:0 lstm_866/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_866/Shape_1Shapelstm_866/transpose:y:0*
T0*
_output_shapes
:h
lstm_866/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_866/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_866/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_866/strided_slice_1StridedSlicelstm_866/Shape_1:output:0'lstm_866/strided_slice_1/stack:output:0)lstm_866/strided_slice_1/stack_1:output:0)lstm_866/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_866/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_866/TensorArrayV2TensorListReserve-lstm_866/TensorArrayV2/element_shape:output:0!lstm_866/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_866/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_866/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_866/transpose:y:0Glstm_866/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_866/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_866/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_866/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_866/strided_slice_2StridedSlicelstm_866/transpose:y:0'lstm_866/strided_slice_2/stack:output:0)lstm_866/strided_slice_2/stack_1:output:0)lstm_866/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_866/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp5lstm_866_lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_866/lstm_cell_866/MatMulMatMul!lstm_866/strided_slice_2:output:04lstm_866/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp7lstm_866_lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_866/lstm_cell_866/MatMul_1MatMullstm_866/zeros:output:06lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_866/lstm_cell_866/addAddV2'lstm_866/lstm_cell_866/MatMul:product:0)lstm_866/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp6lstm_866_lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_866/lstm_cell_866/BiasAddBiasAddlstm_866/lstm_cell_866/add:z:05lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_866/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_866/lstm_cell_866/splitSplit/lstm_866/lstm_cell_866/split/split_dim:output:0'lstm_866/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_866/lstm_cell_866/SigmoidSigmoid%lstm_866/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_866/lstm_cell_866/Sigmoid_1Sigmoid%lstm_866/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_866/lstm_cell_866/mulMul$lstm_866/lstm_cell_866/Sigmoid_1:y:0lstm_866/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_866/lstm_cell_866/ReluRelu%lstm_866/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_866/lstm_cell_866/mul_1Mul"lstm_866/lstm_cell_866/Sigmoid:y:0)lstm_866/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_866/lstm_cell_866/add_1AddV2lstm_866/lstm_cell_866/mul:z:0 lstm_866/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_866/lstm_cell_866/Sigmoid_2Sigmoid%lstm_866/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
y
lstm_866/lstm_cell_866/Relu_1Relu lstm_866/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_866/lstm_cell_866/mul_2Mul$lstm_866/lstm_cell_866/Sigmoid_2:y:0+lstm_866/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_866/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_866/TensorArrayV2_1TensorListReserve/lstm_866/TensorArrayV2_1/element_shape:output:0!lstm_866/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_866/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_866/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_866/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_866/whileWhile$lstm_866/while/loop_counter:output:0*lstm_866/while/maximum_iterations:output:0lstm_866/time:output:0!lstm_866/TensorArrayV2_1:handle:0lstm_866/zeros:output:0lstm_866/zeros_1:output:0!lstm_866/strided_slice_1:output:0@lstm_866/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_866_lstm_cell_866_matmul_readvariableop_resource7lstm_866_lstm_cell_866_matmul_1_readvariableop_resource6lstm_866_lstm_cell_866_biasadd_readvariableop_resource*
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
lstm_866_while_body_5177859*'
condR
lstm_866_while_cond_5177858*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_866/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_866/TensorArrayV2Stack/TensorListStackTensorListStacklstm_866/while:output:3Blstm_866/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_866/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_866/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_866/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_866/strided_slice_3StridedSlice4lstm_866/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_866/strided_slice_3/stack:output:0)lstm_866/strided_slice_3/stack_1:output:0)lstm_866/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_866/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_866/transpose_1	Transpose4lstm_866/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_866/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_866/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_288/MatMul/ReadVariableOpReadVariableOp(dense_288_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_288/MatMulMatMul!lstm_866/strided_slice_3:output:0'dense_288/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_288/BiasAdd/ReadVariableOpReadVariableOp)dense_288_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_288/BiasAddBiasAdddense_288/MatMul:product:0(dense_288/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_288/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_288/BiasAdd/ReadVariableOp ^dense_288/MatMul/ReadVariableOp.^lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp-^lstm_864/lstm_cell_864/MatMul/ReadVariableOp/^lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp^lstm_864/while.^lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp-^lstm_865/lstm_cell_865/MatMul/ReadVariableOp/^lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp^lstm_865/while.^lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp-^lstm_866/lstm_cell_866/MatMul/ReadVariableOp/^lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp^lstm_866/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_288/BiasAdd/ReadVariableOp dense_288/BiasAdd/ReadVariableOp2B
dense_288/MatMul/ReadVariableOpdense_288/MatMul/ReadVariableOp2^
-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp-lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp2\
,lstm_864/lstm_cell_864/MatMul/ReadVariableOp,lstm_864/lstm_cell_864/MatMul/ReadVariableOp2`
.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp.lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp2 
lstm_864/whilelstm_864/while2^
-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp-lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp2\
,lstm_865/lstm_cell_865/MatMul/ReadVariableOp,lstm_865/lstm_cell_865/MatMul/ReadVariableOp2`
.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp.lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp2 
lstm_865/whilelstm_865/while2^
-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp-lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp2\
,lstm_866/lstm_cell_866/MatMul/ReadVariableOp,lstm_866/lstm_cell_866/MatMul/ReadVariableOp2`
.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp.lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp2 
lstm_866/whilelstm_866/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_5176045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5176045___redundant_placeholder05
1while_while_cond_5176045___redundant_placeholder15
1while_while_cond_5176045___redundant_placeholder25
1while_while_cond_5176045___redundant_placeholder3
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
═
Ѓ
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175548

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
Ј#
ы
while_body_5174862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_864_5174886_0:	љ0
while_lstm_cell_864_5174888_0:	dљ,
while_lstm_cell_864_5174890_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_864_5174886:	љ.
while_lstm_cell_864_5174888:	dљ*
while_lstm_cell_864_5174890:	љѕб+while/lstm_cell_864/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_864/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_864_5174886_0while_lstm_cell_864_5174888_0while_lstm_cell_864_5174890_0*
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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174848П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_864/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_864/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_864/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_864/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_864_5174886while_lstm_cell_864_5174886_0"<
while_lstm_cell_864_5174888while_lstm_cell_864_5174888_0"<
while_lstm_cell_864_5174890while_lstm_cell_864_5174890_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_864/StatefulPartitionedCall+while/lstm_cell_864/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_5178052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_864_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_864_matmul_readvariableop_resource:	љG
4while_lstm_cell_864_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_864/BiasAdd/ReadVariableOpб)while/lstm_cell_864/MatMul/ReadVariableOpб+while/lstm_cell_864/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_864/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_864/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_864/addAddV2$while/lstm_cell_864/MatMul:product:0&while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_864/BiasAddBiasAddwhile/lstm_cell_864/add:z:02while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_864/splitSplit,while/lstm_cell_864/split/split_dim:output:0$while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_864/SigmoidSigmoid"while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_1Sigmoid"while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_864/mulMul!while/lstm_cell_864/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_864/ReluRelu"while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_864/mul_1Mulwhile/lstm_cell_864/Sigmoid:y:0&while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_864/add_1AddV2while/lstm_cell_864/mul:z:0while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_2Sigmoid"while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_864/Relu_1Reluwhile/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_864/mul_2Mul!while/lstm_cell_864/Sigmoid_2:y:0(while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_864/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_864/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_864/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_864/BiasAdd/ReadVariableOp*^while/lstm_cell_864/MatMul/ReadVariableOp,^while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_864_biasadd_readvariableop_resource5while_lstm_cell_864_biasadd_readvariableop_resource_0"n
4while_lstm_cell_864_matmul_1_readvariableop_resource6while_lstm_cell_864_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_864_matmul_readvariableop_resource4while_lstm_cell_864_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_864/BiasAdd/ReadVariableOp*while/lstm_cell_864/BiasAdd/ReadVariableOp2V
)while/lstm_cell_864/MatMul/ReadVariableOp)while/lstm_cell_864/MatMul/ReadVariableOp2Z
+while/lstm_cell_864/MatMul_1/ReadVariableOp+while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ш

ц
0__inference_sequential_288_layer_call_fn_5176330
lstm_864_input
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
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCalllstm_864_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176305o
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
_user_specified_namelstm_864_input
Л8
┌
while_body_5178954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_865_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_865/BiasAdd/ReadVariableOpб)while/lstm_cell_865/MatMul/ReadVariableOpб+while/lstm_cell_865/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_865/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_865/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_865/addAddV2$while/lstm_cell_865/MatMul:product:0&while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_865/BiasAddBiasAddwhile/lstm_cell_865/add:z:02while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_865/splitSplit,while/lstm_cell_865/split/split_dim:output:0$while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_865/SigmoidSigmoid"while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_1Sigmoid"while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_865/mulMul!while/lstm_cell_865/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_865/ReluRelu"while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_865/mul_1Mulwhile/lstm_cell_865/Sigmoid:y:0&while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_865/add_1AddV2while/lstm_cell_865/mul:z:0while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_2Sigmoid"while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_865/Relu_1Reluwhile/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_865/mul_2Mul!while/lstm_cell_865/Sigmoid_2:y:0(while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_865/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_865/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_865/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_865/BiasAdd/ReadVariableOp*^while/lstm_cell_865/MatMul/ReadVariableOp,^while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_865_biasadd_readvariableop_resource5while_lstm_cell_865_biasadd_readvariableop_resource_0"n
4while_lstm_cell_865_matmul_1_readvariableop_resource6while_lstm_cell_865_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_865_matmul_readvariableop_resource4while_lstm_cell_865_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_865/BiasAdd/ReadVariableOp*while/lstm_cell_865/BiasAdd/ReadVariableOp2V
)while/lstm_cell_865/MatMul/ReadVariableOp)while/lstm_cell_865/MatMul/ReadVariableOp2Z
+while/lstm_cell_865/MatMul_1/ReadVariableOp+while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
═
Ѓ
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175694

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
┬

Ў
%__inference_signature_wrapper_5177041
lstm_864_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_864_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_5174781o
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
_user_specified_namelstm_864_input
Г
╣
*__inference_lstm_864_layer_call_fn_5177960
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5174931|
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
while_cond_5176195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5176195___redundant_placeholder05
1while_while_cond_5176195___redundant_placeholder15
1while_while_cond_5176195___redundant_placeholder25
1while_while_cond_5176195___redundant_placeholder3
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179368
inputs_0>
,lstm_cell_866_matmul_readvariableop_resource:2(@
.lstm_cell_866_matmul_1_readvariableop_resource:
(;
-lstm_cell_866_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_866/BiasAdd/ReadVariableOpб#lstm_cell_866/MatMul/ReadVariableOpб%lstm_cell_866/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_866/MatMul/ReadVariableOpReadVariableOp,lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_866/MatMulMatMulstrided_slice_2:output:0+lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_866/MatMul_1MatMulzeros:output:0-lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_866/addAddV2lstm_cell_866/MatMul:product:0 lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_866/BiasAddBiasAddlstm_cell_866/add:z:0,lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_866/splitSplit&lstm_cell_866/split/split_dim:output:0lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_866/SigmoidSigmoidlstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_1Sigmoidlstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_866/mulMullstm_cell_866/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_866/ReluRelulstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_866/mul_1Mullstm_cell_866/Sigmoid:y:0 lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_866/add_1AddV2lstm_cell_866/mul:z:0lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_2Sigmoidlstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_866/Relu_1Relulstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_866/mul_2Mullstm_cell_866/Sigmoid_2:y:0"lstm_cell_866/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_866_matmul_readvariableop_resource.lstm_cell_866_matmul_1_readvariableop_resource-lstm_cell_866_biasadd_readvariableop_resource*
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
while_body_5179284*
condR
while_cond_5179283*K
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
NoOpNoOp%^lstm_cell_866/BiasAdd/ReadVariableOp$^lstm_cell_866/MatMul/ReadVariableOp&^lstm_cell_866/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_866/BiasAdd/ReadVariableOp$lstm_cell_866/BiasAdd/ReadVariableOp2J
#lstm_cell_866/MatMul/ReadVariableOp#lstm_cell_866/MatMul/ReadVariableOp2N
%lstm_cell_866/MatMul_1/ReadVariableOp%lstm_cell_866/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
▀
ѕ
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5180012

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
while_cond_5175211
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5175211___redundant_placeholder05
1while_while_cond_5175211___redundant_placeholder15
1while_while_cond_5175211___redundant_placeholder25
1while_while_cond_5175211___redundant_placeholder3
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
while_cond_5176576
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5176576___redundant_placeholder05
1while_while_cond_5176576___redundant_placeholder15
1while_while_cond_5176576___redundant_placeholder25
1while_while_cond_5176576___redundant_placeholder3
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5179181

inputs?
,lstm_cell_865_matmul_readvariableop_resource:	d╚A
.lstm_cell_865_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_865_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_865/BiasAdd/ReadVariableOpб#lstm_cell_865/MatMul/ReadVariableOpб%lstm_cell_865/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_865/MatMul/ReadVariableOpReadVariableOp,lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_865/MatMulMatMulstrided_slice_2:output:0+lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_865/MatMul_1MatMulzeros:output:0-lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_865/addAddV2lstm_cell_865/MatMul:product:0 lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_865/BiasAddBiasAddlstm_cell_865/add:z:0,lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_865/splitSplit&lstm_cell_865/split/split_dim:output:0lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_865/SigmoidSigmoidlstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_1Sigmoidlstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_865/mulMullstm_cell_865/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_865/ReluRelulstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_865/mul_1Mullstm_cell_865/Sigmoid:y:0 lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_865/add_1AddV2lstm_cell_865/mul:z:0lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_2Sigmoidlstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_865/Relu_1Relulstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_865/mul_2Mullstm_cell_865/Sigmoid_2:y:0"lstm_cell_865/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_865_matmul_readvariableop_resource.lstm_cell_865_matmul_1_readvariableop_resource-lstm_cell_865_biasadd_readvariableop_resource*
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
while_body_5179097*
condR
while_cond_5179096*K
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
NoOpNoOp%^lstm_cell_865/BiasAdd/ReadVariableOp$^lstm_cell_865/MatMul/ReadVariableOp&^lstm_cell_865/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_865/BiasAdd/ReadVariableOp$lstm_cell_865/BiasAdd/ReadVariableOp2J
#lstm_cell_865/MatMul/ReadVariableOp#lstm_cell_865/MatMul/ReadVariableOp2N
%lstm_cell_865/MatMul_1/ReadVariableOp%lstm_cell_865/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
№
Э
/__inference_lstm_cell_864_layer_call_fn_5179833

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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174848o
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
аK
Ц
E__inference_lstm_865_layer_call_and_return_conditional_losses_5178895
inputs_0?
,lstm_cell_865_matmul_readvariableop_resource:	d╚A
.lstm_cell_865_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_865_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_865/BiasAdd/ReadVariableOpб#lstm_cell_865/MatMul/ReadVariableOpб%lstm_cell_865/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_865/MatMul/ReadVariableOpReadVariableOp,lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_865/MatMulMatMulstrided_slice_2:output:0+lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_865/MatMul_1MatMulzeros:output:0-lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_865/addAddV2lstm_cell_865/MatMul:product:0 lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_865/BiasAddBiasAddlstm_cell_865/add:z:0,lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_865/splitSplit&lstm_cell_865/split/split_dim:output:0lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_865/SigmoidSigmoidlstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_1Sigmoidlstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_865/mulMullstm_cell_865/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_865/ReluRelulstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_865/mul_1Mullstm_cell_865/Sigmoid:y:0 lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_865/add_1AddV2lstm_cell_865/mul:z:0lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_2Sigmoidlstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_865/Relu_1Relulstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_865/mul_2Mullstm_cell_865/Sigmoid_2:y:0"lstm_cell_865/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_865_matmul_readvariableop_resource.lstm_cell_865_matmul_1_readvariableop_resource-lstm_cell_865_biasadd_readvariableop_resource*
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
while_body_5178811*
condR
while_cond_5178810*K
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
NoOpNoOp%^lstm_cell_865/BiasAdd/ReadVariableOp$^lstm_cell_865/MatMul/ReadVariableOp&^lstm_cell_865/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_865/BiasAdd/ReadVariableOp$lstm_cell_865/BiasAdd/ReadVariableOp2J
#lstm_cell_865/MatMul/ReadVariableOp#lstm_cell_865/MatMul/ReadVariableOp2N
%lstm_cell_865/MatMul_1/ReadVariableOp%lstm_cell_865/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
чT
я
*sequential_288_lstm_864_while_body_5174413L
Hsequential_288_lstm_864_while_sequential_288_lstm_864_while_loop_counterR
Nsequential_288_lstm_864_while_sequential_288_lstm_864_while_maximum_iterations-
)sequential_288_lstm_864_while_placeholder/
+sequential_288_lstm_864_while_placeholder_1/
+sequential_288_lstm_864_while_placeholder_2/
+sequential_288_lstm_864_while_placeholder_3K
Gsequential_288_lstm_864_while_sequential_288_lstm_864_strided_slice_1_0ѕ
Ѓsequential_288_lstm_864_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_864_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_288_lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0:	љa
Nsequential_288_lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљ\
Msequential_288_lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ*
&sequential_288_lstm_864_while_identity,
(sequential_288_lstm_864_while_identity_1,
(sequential_288_lstm_864_while_identity_2,
(sequential_288_lstm_864_while_identity_3,
(sequential_288_lstm_864_while_identity_4,
(sequential_288_lstm_864_while_identity_5I
Esequential_288_lstm_864_while_sequential_288_lstm_864_strided_slice_1є
Ђsequential_288_lstm_864_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_864_tensorarrayunstack_tensorlistfromtensor]
Jsequential_288_lstm_864_while_lstm_cell_864_matmul_readvariableop_resource:	љ_
Lsequential_288_lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource:	dљZ
Ksequential_288_lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource:	љѕбBsequential_288/lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpбAsequential_288/lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpбCsequential_288/lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOpа
Osequential_288/lstm_864/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
Asequential_288/lstm_864/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_288_lstm_864_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_864_tensorarrayunstack_tensorlistfromtensor_0)sequential_288_lstm_864_while_placeholderXsequential_288/lstm_864/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0¤
Asequential_288/lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOpLsequential_288_lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0ё
2sequential_288/lstm_864/while/lstm_cell_864/MatMulMatMulHsequential_288/lstm_864/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_288/lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љМ
Csequential_288/lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOpNsequential_288_lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0в
4sequential_288/lstm_864/while/lstm_cell_864/MatMul_1MatMul+sequential_288_lstm_864_while_placeholder_2Ksequential_288/lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љж
/sequential_288/lstm_864/while/lstm_cell_864/addAddV2<sequential_288/lstm_864/while/lstm_cell_864/MatMul:product:0>sequential_288/lstm_864/while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љ═
Bsequential_288/lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOpMsequential_288_lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Ы
3sequential_288/lstm_864/while/lstm_cell_864/BiasAddBiasAdd3sequential_288/lstm_864/while/lstm_cell_864/add:z:0Jsequential_288/lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ}
;sequential_288/lstm_864/while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_288/lstm_864/while/lstm_cell_864/splitSplitDsequential_288/lstm_864/while/lstm_cell_864/split/split_dim:output:0<sequential_288/lstm_864/while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitг
3sequential_288/lstm_864/while/lstm_cell_864/SigmoidSigmoid:sequential_288/lstm_864/while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         d«
5sequential_288/lstm_864/while/lstm_cell_864/Sigmoid_1Sigmoid:sequential_288/lstm_864/while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dл
/sequential_288/lstm_864/while/lstm_cell_864/mulMul9sequential_288/lstm_864/while/lstm_cell_864/Sigmoid_1:y:0+sequential_288_lstm_864_while_placeholder_3*
T0*'
_output_shapes
:         dд
0sequential_288/lstm_864/while/lstm_cell_864/ReluRelu:sequential_288/lstm_864/while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dс
1sequential_288/lstm_864/while/lstm_cell_864/mul_1Mul7sequential_288/lstm_864/while/lstm_cell_864/Sigmoid:y:0>sequential_288/lstm_864/while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dп
1sequential_288/lstm_864/while/lstm_cell_864/add_1AddV23sequential_288/lstm_864/while/lstm_cell_864/mul:z:05sequential_288/lstm_864/while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         d«
5sequential_288/lstm_864/while/lstm_cell_864/Sigmoid_2Sigmoid:sequential_288/lstm_864/while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dБ
2sequential_288/lstm_864/while/lstm_cell_864/Relu_1Relu5sequential_288/lstm_864/while/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dу
1sequential_288/lstm_864/while/lstm_cell_864/mul_2Mul9sequential_288/lstm_864/while/lstm_cell_864/Sigmoid_2:y:0@sequential_288/lstm_864/while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dд
Bsequential_288/lstm_864/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_288_lstm_864_while_placeholder_1)sequential_288_lstm_864_while_placeholder5sequential_288/lstm_864/while/lstm_cell_864/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_288/lstm_864/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_288/lstm_864/while/addAddV2)sequential_288_lstm_864_while_placeholder,sequential_288/lstm_864/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_288/lstm_864/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_288/lstm_864/while/add_1AddV2Hsequential_288_lstm_864_while_sequential_288_lstm_864_while_loop_counter.sequential_288/lstm_864/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_288/lstm_864/while/IdentityIdentity'sequential_288/lstm_864/while/add_1:z:0#^sequential_288/lstm_864/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_288/lstm_864/while/Identity_1IdentityNsequential_288_lstm_864_while_sequential_288_lstm_864_while_maximum_iterations#^sequential_288/lstm_864/while/NoOp*
T0*
_output_shapes
: А
(sequential_288/lstm_864/while/Identity_2Identity%sequential_288/lstm_864/while/add:z:0#^sequential_288/lstm_864/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_288/lstm_864/while/Identity_3IdentityRsequential_288/lstm_864/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_288/lstm_864/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_288/lstm_864/while/Identity_4Identity5sequential_288/lstm_864/while/lstm_cell_864/mul_2:z:0#^sequential_288/lstm_864/while/NoOp*
T0*'
_output_shapes
:         d┬
(sequential_288/lstm_864/while/Identity_5Identity5sequential_288/lstm_864/while/lstm_cell_864/add_1:z:0#^sequential_288/lstm_864/while/NoOp*
T0*'
_output_shapes
:         d│
"sequential_288/lstm_864/while/NoOpNoOpC^sequential_288/lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpB^sequential_288/lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpD^sequential_288/lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_288_lstm_864_while_identity/sequential_288/lstm_864/while/Identity:output:0"]
(sequential_288_lstm_864_while_identity_11sequential_288/lstm_864/while/Identity_1:output:0"]
(sequential_288_lstm_864_while_identity_21sequential_288/lstm_864/while/Identity_2:output:0"]
(sequential_288_lstm_864_while_identity_31sequential_288/lstm_864/while/Identity_3:output:0"]
(sequential_288_lstm_864_while_identity_41sequential_288/lstm_864/while/Identity_4:output:0"]
(sequential_288_lstm_864_while_identity_51sequential_288/lstm_864/while/Identity_5:output:0"ю
Ksequential_288_lstm_864_while_lstm_cell_864_biasadd_readvariableop_resourceMsequential_288_lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0"ъ
Lsequential_288_lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resourceNsequential_288_lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0"џ
Jsequential_288_lstm_864_while_lstm_cell_864_matmul_readvariableop_resourceLsequential_288_lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0"љ
Esequential_288_lstm_864_while_sequential_288_lstm_864_strided_slice_1Gsequential_288_lstm_864_while_sequential_288_lstm_864_strided_slice_1_0"і
Ђsequential_288_lstm_864_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_864_tensorarrayunstack_tensorlistfromtensorЃsequential_288_lstm_864_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_864_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѕ
Bsequential_288/lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpBsequential_288/lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp2є
Asequential_288/lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpAsequential_288/lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp2і
Csequential_288/lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOpCsequential_288/lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Ж
Ѓ
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177006
lstm_864_input#
lstm_864_5176979:	љ#
lstm_864_5176981:	dљ
lstm_864_5176983:	љ#
lstm_865_5176986:	d╚#
lstm_865_5176988:	2╚
lstm_865_5176990:	╚"
lstm_866_5176993:2("
lstm_866_5176995:
(
lstm_866_5176997:(#
dense_288_5177000:

dense_288_5177002:
identityѕб!dense_288/StatefulPartitionedCallб lstm_864/StatefulPartitionedCallб lstm_865/StatefulPartitionedCallб lstm_866/StatefulPartitionedCallЊ
 lstm_864/StatefulPartitionedCallStatefulPartitionedCalllstm_864_inputlstm_864_5176979lstm_864_5176981lstm_864_5176983*
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5176826«
 lstm_865/StatefulPartitionedCallStatefulPartitionedCall)lstm_864/StatefulPartitionedCall:output:0lstm_865_5176986lstm_865_5176988lstm_865_5176990*
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176661ф
 lstm_866/StatefulPartitionedCallStatefulPartitionedCall)lstm_865/StatefulPartitionedCall:output:0lstm_866_5176993lstm_866_5176995lstm_866_5176997*
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176496џ
!dense_288/StatefulPartitionedCallStatefulPartitionedCall)lstm_866/StatefulPartitionedCall:output:0dense_288_5177000dense_288_5177002*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_288_layer_call_and_return_conditional_losses_5176298y
IdentityIdentity*dense_288/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_288/StatefulPartitionedCall!^lstm_864/StatefulPartitionedCall!^lstm_865/StatefulPartitionedCall!^lstm_866/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_288/StatefulPartitionedCall!dense_288/StatefulPartitionedCall2D
 lstm_864/StatefulPartitionedCall lstm_864/StatefulPartitionedCall2D
 lstm_865/StatefulPartitionedCall lstm_865/StatefulPartitionedCall2D
 lstm_866/StatefulPartitionedCall lstm_866/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_864_input
║
╚
while_cond_5176411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5176411___redundant_placeholder05
1while_while_cond_5176411___redundant_placeholder15
1while_while_cond_5176411___redundant_placeholder25
1while_while_cond_5176411___redundant_placeholder3
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
while_body_5178338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_864_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_864_matmul_readvariableop_resource:	љG
4while_lstm_cell_864_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_864/BiasAdd/ReadVariableOpб)while/lstm_cell_864/MatMul/ReadVariableOpб+while/lstm_cell_864/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_864/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_864/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_864/addAddV2$while/lstm_cell_864/MatMul:product:0&while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_864/BiasAddBiasAddwhile/lstm_cell_864/add:z:02while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_864/splitSplit,while/lstm_cell_864/split/split_dim:output:0$while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_864/SigmoidSigmoid"while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_1Sigmoid"while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_864/mulMul!while/lstm_cell_864/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_864/ReluRelu"while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_864/mul_1Mulwhile/lstm_cell_864/Sigmoid:y:0&while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_864/add_1AddV2while/lstm_cell_864/mul:z:0while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_2Sigmoid"while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_864/Relu_1Reluwhile/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_864/mul_2Mul!while/lstm_cell_864/Sigmoid_2:y:0(while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_864/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_864/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_864/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_864/BiasAdd/ReadVariableOp*^while/lstm_cell_864/MatMul/ReadVariableOp,^while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_864_biasadd_readvariableop_resource5while_lstm_cell_864_biasadd_readvariableop_resource_0"n
4while_lstm_cell_864_matmul_1_readvariableop_resource6while_lstm_cell_864_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_864_matmul_readvariableop_resource4while_lstm_cell_864_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_864/BiasAdd/ReadVariableOp*while/lstm_cell_864/BiasAdd/ReadVariableOp2V
)while/lstm_cell_864/MatMul/ReadVariableOp)while/lstm_cell_864/MatMul/ReadVariableOp2Z
+while/lstm_cell_864/MatMul_1/ReadVariableOp+while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
»8
ј
E__inference_lstm_865_layer_call_and_return_conditional_losses_5175281

inputs(
lstm_cell_865_5175199:	d╚(
lstm_cell_865_5175201:	2╚$
lstm_cell_865_5175203:	╚
identityѕб%lstm_cell_865/StatefulPartitionedCallбwhile;
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
%lstm_cell_865/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_865_5175199lstm_cell_865_5175201lstm_cell_865_5175203*
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175198n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_865_5175199lstm_cell_865_5175201lstm_cell_865_5175203*
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
while_body_5175212*
condR
while_cond_5175211*K
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
NoOpNoOp&^lstm_cell_865/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_865/StatefulPartitionedCall%lstm_cell_865/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
Л8
┌
while_body_5178811
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_865_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_865/BiasAdd/ReadVariableOpб)while/lstm_cell_865/MatMul/ReadVariableOpб+while/lstm_cell_865/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_865/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_865/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_865/addAddV2$while/lstm_cell_865/MatMul:product:0&while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_865/BiasAddBiasAddwhile/lstm_cell_865/add:z:02while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_865/splitSplit,while/lstm_cell_865/split/split_dim:output:0$while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_865/SigmoidSigmoid"while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_1Sigmoid"while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_865/mulMul!while/lstm_cell_865/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_865/ReluRelu"while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_865/mul_1Mulwhile/lstm_cell_865/Sigmoid:y:0&while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_865/add_1AddV2while/lstm_cell_865/mul:z:0while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_2Sigmoid"while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_865/Relu_1Reluwhile/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_865/mul_2Mul!while/lstm_cell_865/Sigmoid_2:y:0(while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_865/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_865/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_865/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_865/BiasAdd/ReadVariableOp*^while/lstm_cell_865/MatMul/ReadVariableOp,^while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_865_biasadd_readvariableop_resource5while_lstm_cell_865_biasadd_readvariableop_resource_0"n
4while_lstm_cell_865_matmul_1_readvariableop_resource6while_lstm_cell_865_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_865_matmul_readvariableop_resource4while_lstm_cell_865_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_865/BiasAdd/ReadVariableOp*while/lstm_cell_865/BiasAdd/ReadVariableOp2V
)while/lstm_cell_865/MatMul/ReadVariableOp)while/lstm_cell_865/MatMul/ReadVariableOp2Z
+while/lstm_cell_865/MatMul_1/ReadVariableOp+while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Э
┤
*__inference_lstm_866_layer_call_fn_5179214

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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176280o
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
ПJ
а
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179797

inputs>
,lstm_cell_866_matmul_readvariableop_resource:2(@
.lstm_cell_866_matmul_1_readvariableop_resource:
(;
-lstm_cell_866_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_866/BiasAdd/ReadVariableOpб#lstm_cell_866/MatMul/ReadVariableOpб%lstm_cell_866/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_866/MatMul/ReadVariableOpReadVariableOp,lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_866/MatMulMatMulstrided_slice_2:output:0+lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_866/MatMul_1MatMulzeros:output:0-lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_866/addAddV2lstm_cell_866/MatMul:product:0 lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_866/BiasAddBiasAddlstm_cell_866/add:z:0,lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_866/splitSplit&lstm_cell_866/split/split_dim:output:0lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_866/SigmoidSigmoidlstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_1Sigmoidlstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_866/mulMullstm_cell_866/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_866/ReluRelulstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_866/mul_1Mullstm_cell_866/Sigmoid:y:0 lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_866/add_1AddV2lstm_cell_866/mul:z:0lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_2Sigmoidlstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_866/Relu_1Relulstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_866/mul_2Mullstm_cell_866/Sigmoid_2:y:0"lstm_cell_866/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_866_matmul_readvariableop_resource.lstm_cell_866_matmul_1_readvariableop_resource-lstm_cell_866_biasadd_readvariableop_resource*
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
while_body_5179713*
condR
while_cond_5179712*K
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
NoOpNoOp%^lstm_cell_866/BiasAdd/ReadVariableOp$^lstm_cell_866/MatMul/ReadVariableOp&^lstm_cell_866/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_866/BiasAdd/ReadVariableOp$lstm_cell_866/BiasAdd/ReadVariableOp2J
#lstm_cell_866/MatMul/ReadVariableOp#lstm_cell_866/MatMul/ReadVariableOp2N
%lstm_cell_866/MatMul_1/ReadVariableOp%lstm_cell_866/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Л8
┌
while_body_5176577
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_865_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_865/BiasAdd/ReadVariableOpб)while/lstm_cell_865/MatMul/ReadVariableOpб+while/lstm_cell_865/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_865/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_865/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_865/addAddV2$while/lstm_cell_865/MatMul:product:0&while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_865/BiasAddBiasAddwhile/lstm_cell_865/add:z:02while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_865/splitSplit,while/lstm_cell_865/split/split_dim:output:0$while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_865/SigmoidSigmoid"while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_1Sigmoid"while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_865/mulMul!while/lstm_cell_865/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_865/ReluRelu"while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_865/mul_1Mulwhile/lstm_cell_865/Sigmoid:y:0&while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_865/add_1AddV2while/lstm_cell_865/mul:z:0while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_2Sigmoid"while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_865/Relu_1Reluwhile/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_865/mul_2Mul!while/lstm_cell_865/Sigmoid_2:y:0(while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_865/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_865/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_865/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_865/BiasAdd/ReadVariableOp*^while/lstm_cell_865/MatMul/ReadVariableOp,^while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_865_biasadd_readvariableop_resource5while_lstm_cell_865_biasadd_readvariableop_resource_0"n
4while_lstm_cell_865_matmul_1_readvariableop_resource6while_lstm_cell_865_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_865_matmul_readvariableop_resource4while_lstm_cell_865_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_865/BiasAdd/ReadVariableOp*while/lstm_cell_865/BiasAdd/ReadVariableOp2V
)while/lstm_cell_865/MatMul/ReadVariableOp)while/lstm_cell_865/MatMul/ReadVariableOp2Z
+while/lstm_cell_865/MatMul_1/ReadVariableOp+while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5179980

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
Л8
┌
while_body_5179097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_865_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_865/BiasAdd/ReadVariableOpб)while/lstm_cell_865/MatMul/ReadVariableOpб+while/lstm_cell_865/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_865/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_865/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_865/addAddV2$while/lstm_cell_865/MatMul:product:0&while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_865/BiasAddBiasAddwhile/lstm_cell_865/add:z:02while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_865/splitSplit,while/lstm_cell_865/split/split_dim:output:0$while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_865/SigmoidSigmoid"while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_1Sigmoid"while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_865/mulMul!while/lstm_cell_865/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_865/ReluRelu"while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_865/mul_1Mulwhile/lstm_cell_865/Sigmoid:y:0&while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_865/add_1AddV2while/lstm_cell_865/mul:z:0while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_865/Sigmoid_2Sigmoid"while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_865/Relu_1Reluwhile/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_865/mul_2Mul!while/lstm_cell_865/Sigmoid_2:y:0(while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_865/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_865/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_865/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_865/BiasAdd/ReadVariableOp*^while/lstm_cell_865/MatMul/ReadVariableOp,^while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_865_biasadd_readvariableop_resource5while_lstm_cell_865_biasadd_readvariableop_resource_0"n
4while_lstm_cell_865_matmul_1_readvariableop_resource6while_lstm_cell_865_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_865_matmul_readvariableop_resource4while_lstm_cell_865_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_865/BiasAdd/ReadVariableOp*while/lstm_cell_865/BiasAdd/ReadVariableOp2V
)while/lstm_cell_865/MatMul/ReadVariableOp)while/lstm_cell_865/MatMul/ReadVariableOp2Z
+while/lstm_cell_865/MatMul_1/ReadVariableOp+while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ПJ
а
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176496

inputs>
,lstm_cell_866_matmul_readvariableop_resource:2(@
.lstm_cell_866_matmul_1_readvariableop_resource:
(;
-lstm_cell_866_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_866/BiasAdd/ReadVariableOpб#lstm_cell_866/MatMul/ReadVariableOpб%lstm_cell_866/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_866/MatMul/ReadVariableOpReadVariableOp,lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_866/MatMulMatMulstrided_slice_2:output:0+lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_866/MatMul_1MatMulzeros:output:0-lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_866/addAddV2lstm_cell_866/MatMul:product:0 lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_866/BiasAddBiasAddlstm_cell_866/add:z:0,lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_866/splitSplit&lstm_cell_866/split/split_dim:output:0lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_866/SigmoidSigmoidlstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_1Sigmoidlstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_866/mulMullstm_cell_866/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_866/ReluRelulstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_866/mul_1Mullstm_cell_866/Sigmoid:y:0 lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_866/add_1AddV2lstm_cell_866/mul:z:0lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_2Sigmoidlstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_866/Relu_1Relulstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_866/mul_2Mullstm_cell_866/Sigmoid_2:y:0"lstm_cell_866/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_866_matmul_readvariableop_resource.lstm_cell_866_matmul_1_readvariableop_resource-lstm_cell_866_biasadd_readvariableop_resource*
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
while_body_5176412*
condR
while_cond_5176411*K
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
NoOpNoOp%^lstm_cell_866/BiasAdd/ReadVariableOp$^lstm_cell_866/MatMul/ReadVariableOp&^lstm_cell_866/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_866/BiasAdd/ReadVariableOp$lstm_cell_866/BiasAdd/ReadVariableOp2J
#lstm_cell_866/MatMul/ReadVariableOp#lstm_cell_866/MatMul/ReadVariableOp2N
%lstm_cell_866/MatMul_1/ReadVariableOp%lstm_cell_866/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
Ѕ#
в
while_body_5175562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_866_5175586_0:2(/
while_lstm_cell_866_5175588_0:
(+
while_lstm_cell_866_5175590_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_866_5175586:2(-
while_lstm_cell_866_5175588:
()
while_lstm_cell_866_5175590:(ѕб+while/lstm_cell_866/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_866/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_866_5175586_0while_lstm_cell_866_5175588_0while_lstm_cell_866_5175590_0*
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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175548П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_866/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_866/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_866/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_866/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_866_5175586while_lstm_cell_866_5175586_0"<
while_lstm_cell_866_5175588while_lstm_cell_866_5175588_0"<
while_lstm_cell_866_5175590while_lstm_cell_866_5175590_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_866/StatefulPartitionedCall+while/lstm_cell_866/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178279
inputs_0?
,lstm_cell_864_matmul_readvariableop_resource:	љA
.lstm_cell_864_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_864_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_864/BiasAdd/ReadVariableOpб#lstm_cell_864/MatMul/ReadVariableOpб%lstm_cell_864/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_864/MatMul/ReadVariableOpReadVariableOp,lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_864/MatMulMatMulstrided_slice_2:output:0+lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_864/MatMul_1MatMulzeros:output:0-lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_864/addAddV2lstm_cell_864/MatMul:product:0 lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_864/BiasAddBiasAddlstm_cell_864/add:z:0,lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_864/splitSplit&lstm_cell_864/split/split_dim:output:0lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_864/SigmoidSigmoidlstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_1Sigmoidlstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_864/mulMullstm_cell_864/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_864/ReluRelulstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_864/mul_1Mullstm_cell_864/Sigmoid:y:0 lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_864/add_1AddV2lstm_cell_864/mul:z:0lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_2Sigmoidlstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_864/Relu_1Relulstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_864/mul_2Mullstm_cell_864/Sigmoid_2:y:0"lstm_cell_864/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_864_matmul_readvariableop_resource.lstm_cell_864_matmul_1_readvariableop_resource-lstm_cell_864_biasadd_readvariableop_resource*
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
while_body_5178195*
condR
while_cond_5178194*K
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
NoOpNoOp%^lstm_cell_864/BiasAdd/ReadVariableOp$^lstm_cell_864/MatMul/ReadVariableOp&^lstm_cell_864/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_864/BiasAdd/ReadVariableOp$lstm_cell_864/BiasAdd/ReadVariableOp2J
#lstm_cell_864/MatMul/ReadVariableOp#lstm_cell_864/MatMul/ReadVariableOp2N
%lstm_cell_864/MatMul_1/ReadVariableOp%lstm_cell_864/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
█
е
*sequential_288_lstm_866_while_cond_5174690L
Hsequential_288_lstm_866_while_sequential_288_lstm_866_while_loop_counterR
Nsequential_288_lstm_866_while_sequential_288_lstm_866_while_maximum_iterations-
)sequential_288_lstm_866_while_placeholder/
+sequential_288_lstm_866_while_placeholder_1/
+sequential_288_lstm_866_while_placeholder_2/
+sequential_288_lstm_866_while_placeholder_3N
Jsequential_288_lstm_866_while_less_sequential_288_lstm_866_strided_slice_1e
asequential_288_lstm_866_while_sequential_288_lstm_866_while_cond_5174690___redundant_placeholder0e
asequential_288_lstm_866_while_sequential_288_lstm_866_while_cond_5174690___redundant_placeholder1e
asequential_288_lstm_866_while_sequential_288_lstm_866_while_cond_5174690___redundant_placeholder2e
asequential_288_lstm_866_while_sequential_288_lstm_866_while_cond_5174690___redundant_placeholder3*
&sequential_288_lstm_866_while_identity
┬
"sequential_288/lstm_866/while/LessLess)sequential_288_lstm_866_while_placeholderJsequential_288_lstm_866_while_less_sequential_288_lstm_866_strided_slice_1*
T0*
_output_shapes
: {
&sequential_288/lstm_866/while/IdentityIdentity&sequential_288/lstm_866/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_288_lstm_866_while_identity/sequential_288/lstm_866/while/Identity:output:0*(
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
while_cond_5175402
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5175402___redundant_placeholder05
1while_while_cond_5175402___redundant_placeholder15
1while_while_cond_5175402___redundant_placeholder25
1while_while_cond_5175402___redundant_placeholder3
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
Г
╣
*__inference_lstm_865_layer_call_fn_5178587
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5175472|
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
║
╚
while_cond_5179096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5179096___redundant_placeholder05
1while_while_cond_5179096___redundant_placeholder15
1while_while_cond_5179096___redundant_placeholder25
1while_while_cond_5179096___redundant_placeholder3
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5175980

inputs?
,lstm_cell_864_matmul_readvariableop_resource:	љA
.lstm_cell_864_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_864_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_864/BiasAdd/ReadVariableOpб#lstm_cell_864/MatMul/ReadVariableOpб%lstm_cell_864/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_864/MatMul/ReadVariableOpReadVariableOp,lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_864/MatMulMatMulstrided_slice_2:output:0+lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_864/MatMul_1MatMulzeros:output:0-lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_864/addAddV2lstm_cell_864/MatMul:product:0 lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_864/BiasAddBiasAddlstm_cell_864/add:z:0,lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_864/splitSplit&lstm_cell_864/split/split_dim:output:0lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_864/SigmoidSigmoidlstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_1Sigmoidlstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_864/mulMullstm_cell_864/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_864/ReluRelulstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_864/mul_1Mullstm_cell_864/Sigmoid:y:0 lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_864/add_1AddV2lstm_cell_864/mul:z:0lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_2Sigmoidlstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_864/Relu_1Relulstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_864/mul_2Mullstm_cell_864/Sigmoid_2:y:0"lstm_cell_864/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_864_matmul_readvariableop_resource.lstm_cell_864_matmul_1_readvariableop_resource-lstm_cell_864_biasadd_readvariableop_resource*
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
while_body_5175896*
condR
while_cond_5175895*K
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
NoOpNoOp%^lstm_cell_864/BiasAdd/ReadVariableOp$^lstm_cell_864/MatMul/ReadVariableOp&^lstm_cell_864/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_864/BiasAdd/ReadVariableOp$lstm_cell_864/BiasAdd/ReadVariableOp2J
#lstm_cell_864/MatMul/ReadVariableOp#lstm_cell_864/MatMul/ReadVariableOp2N
%lstm_cell_864/MatMul_1/ReadVariableOp%lstm_cell_864/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

Ч
lstm_864_while_cond_5177580.
*lstm_864_while_lstm_864_while_loop_counter4
0lstm_864_while_lstm_864_while_maximum_iterations
lstm_864_while_placeholder 
lstm_864_while_placeholder_1 
lstm_864_while_placeholder_2 
lstm_864_while_placeholder_30
,lstm_864_while_less_lstm_864_strided_slice_1G
Clstm_864_while_lstm_864_while_cond_5177580___redundant_placeholder0G
Clstm_864_while_lstm_864_while_cond_5177580___redundant_placeholder1G
Clstm_864_while_lstm_864_while_cond_5177580___redundant_placeholder2G
Clstm_864_while_lstm_864_while_cond_5177580___redundant_placeholder3
lstm_864_while_identity
є
lstm_864/while/LessLesslstm_864_while_placeholder,lstm_864_while_less_lstm_864_strided_slice_1*
T0*
_output_shapes
: ]
lstm_864/while/IdentityIdentitylstm_864/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_864_while_identity lstm_864/while/Identity:output:0*(
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
█
е
*sequential_288_lstm_865_while_cond_5174551L
Hsequential_288_lstm_865_while_sequential_288_lstm_865_while_loop_counterR
Nsequential_288_lstm_865_while_sequential_288_lstm_865_while_maximum_iterations-
)sequential_288_lstm_865_while_placeholder/
+sequential_288_lstm_865_while_placeholder_1/
+sequential_288_lstm_865_while_placeholder_2/
+sequential_288_lstm_865_while_placeholder_3N
Jsequential_288_lstm_865_while_less_sequential_288_lstm_865_strided_slice_1e
asequential_288_lstm_865_while_sequential_288_lstm_865_while_cond_5174551___redundant_placeholder0e
asequential_288_lstm_865_while_sequential_288_lstm_865_while_cond_5174551___redundant_placeholder1e
asequential_288_lstm_865_while_sequential_288_lstm_865_while_cond_5174551___redundant_placeholder2e
asequential_288_lstm_865_while_sequential_288_lstm_865_while_cond_5174551___redundant_placeholder3*
&sequential_288_lstm_865_while_identity
┬
"sequential_288/lstm_865/while/LessLess)sequential_288_lstm_865_while_placeholderJsequential_288_lstm_865_while_less_sequential_288_lstm_865_strided_slice_1*
T0*
_output_shapes
: {
&sequential_288/lstm_865/while/IdentityIdentity&sequential_288/lstm_865/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_288_lstm_865_while_identity/sequential_288/lstm_865/while/Identity:output:0*(
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
█
е
*sequential_288_lstm_864_while_cond_5174412L
Hsequential_288_lstm_864_while_sequential_288_lstm_864_while_loop_counterR
Nsequential_288_lstm_864_while_sequential_288_lstm_864_while_maximum_iterations-
)sequential_288_lstm_864_while_placeholder/
+sequential_288_lstm_864_while_placeholder_1/
+sequential_288_lstm_864_while_placeholder_2/
+sequential_288_lstm_864_while_placeholder_3N
Jsequential_288_lstm_864_while_less_sequential_288_lstm_864_strided_slice_1e
asequential_288_lstm_864_while_sequential_288_lstm_864_while_cond_5174412___redundant_placeholder0e
asequential_288_lstm_864_while_sequential_288_lstm_864_while_cond_5174412___redundant_placeholder1e
asequential_288_lstm_864_while_sequential_288_lstm_864_while_cond_5174412___redundant_placeholder2e
asequential_288_lstm_864_while_sequential_288_lstm_864_while_cond_5174412___redundant_placeholder3*
&sequential_288_lstm_864_while_identity
┬
"sequential_288/lstm_864/while/LessLess)sequential_288_lstm_864_while_placeholderJsequential_288_lstm_864_while_less_sequential_288_lstm_864_strided_slice_1*
T0*
_output_shapes
: {
&sequential_288/lstm_864/while/IdentityIdentity&sequential_288/lstm_864/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_288_lstm_864_while_identity/sequential_288/lstm_864/while/Identity:output:0*(
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
АC
Щ

lstm_865_while_body_5177720.
*lstm_865_while_lstm_865_while_loop_counter4
0lstm_865_while_lstm_865_while_maximum_iterations
lstm_865_while_placeholder 
lstm_865_while_placeholder_1 
lstm_865_while_placeholder_2 
lstm_865_while_placeholder_3-
)lstm_865_while_lstm_865_strided_slice_1_0i
elstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚R
?lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚M
>lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚
lstm_865_while_identity
lstm_865_while_identity_1
lstm_865_while_identity_2
lstm_865_while_identity_3
lstm_865_while_identity_4
lstm_865_while_identity_5+
'lstm_865_while_lstm_865_strided_slice_1g
clstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensorN
;lstm_865_while_lstm_cell_865_matmul_readvariableop_resource:	d╚P
=lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚K
<lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕб3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpб2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpб4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOpЉ
@lstm_865/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_865/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensor_0lstm_865_while_placeholderIlstm_865/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOp=lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_865/while/lstm_cell_865/MatMulMatMul9lstm_865/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp?lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_865/while/lstm_cell_865/MatMul_1MatMullstm_865_while_placeholder_2<lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_865/while/lstm_cell_865/addAddV2-lstm_865/while/lstm_cell_865/MatMul:product:0/lstm_865/while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp>lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_865/while/lstm_cell_865/BiasAddBiasAdd$lstm_865/while/lstm_cell_865/add:z:0;lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_865/while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_865/while/lstm_cell_865/splitSplit5lstm_865/while/lstm_cell_865/split/split_dim:output:0-lstm_865/while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_865/while/lstm_cell_865/SigmoidSigmoid+lstm_865/while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_865/while/lstm_cell_865/Sigmoid_1Sigmoid+lstm_865/while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_865/while/lstm_cell_865/mulMul*lstm_865/while/lstm_cell_865/Sigmoid_1:y:0lstm_865_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_865/while/lstm_cell_865/ReluRelu+lstm_865/while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_865/while/lstm_cell_865/mul_1Mul(lstm_865/while/lstm_cell_865/Sigmoid:y:0/lstm_865/while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_865/while/lstm_cell_865/add_1AddV2$lstm_865/while/lstm_cell_865/mul:z:0&lstm_865/while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_865/while/lstm_cell_865/Sigmoid_2Sigmoid+lstm_865/while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_865/while/lstm_cell_865/Relu_1Relu&lstm_865/while/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_865/while/lstm_cell_865/mul_2Mul*lstm_865/while/lstm_cell_865/Sigmoid_2:y:01lstm_865/while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_865/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_865_while_placeholder_1lstm_865_while_placeholder&lstm_865/while/lstm_cell_865/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_865/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_865/while/addAddV2lstm_865_while_placeholderlstm_865/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_865/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_865/while/add_1AddV2*lstm_865_while_lstm_865_while_loop_counterlstm_865/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_865/while/IdentityIdentitylstm_865/while/add_1:z:0^lstm_865/while/NoOp*
T0*
_output_shapes
: ј
lstm_865/while/Identity_1Identity0lstm_865_while_lstm_865_while_maximum_iterations^lstm_865/while/NoOp*
T0*
_output_shapes
: t
lstm_865/while/Identity_2Identitylstm_865/while/add:z:0^lstm_865/while/NoOp*
T0*
_output_shapes
: А
lstm_865/while/Identity_3IdentityClstm_865/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_865/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_865/while/Identity_4Identity&lstm_865/while/lstm_cell_865/mul_2:z:0^lstm_865/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_865/while/Identity_5Identity&lstm_865/while/lstm_cell_865/add_1:z:0^lstm_865/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_865/while/NoOpNoOp4^lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp3^lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp5^lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_865_while_identity lstm_865/while/Identity:output:0"?
lstm_865_while_identity_1"lstm_865/while/Identity_1:output:0"?
lstm_865_while_identity_2"lstm_865/while/Identity_2:output:0"?
lstm_865_while_identity_3"lstm_865/while/Identity_3:output:0"?
lstm_865_while_identity_4"lstm_865/while/Identity_4:output:0"?
lstm_865_while_identity_5"lstm_865/while/Identity_5:output:0"T
'lstm_865_while_lstm_865_strided_slice_1)lstm_865_while_lstm_865_strided_slice_1_0"~
<lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource>lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0"ђ
=lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource?lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0"|
;lstm_865_while_lstm_cell_865_matmul_readvariableop_resource=lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0"╠
clstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensorelstm_865_while_tensorarrayv2read_tensorlistgetitem_lstm_865_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp3lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp2h
2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp2lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp2l
4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp4lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
*__inference_lstm_866_layer_call_fn_5179192
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5175631o
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
РJ
Б
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178422

inputs?
,lstm_cell_864_matmul_readvariableop_resource:	љA
.lstm_cell_864_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_864_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_864/BiasAdd/ReadVariableOpб#lstm_cell_864/MatMul/ReadVariableOpб%lstm_cell_864/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_864/MatMul/ReadVariableOpReadVariableOp,lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_864/MatMulMatMulstrided_slice_2:output:0+lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_864/MatMul_1MatMulzeros:output:0-lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_864/addAddV2lstm_cell_864/MatMul:product:0 lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_864/BiasAddBiasAddlstm_cell_864/add:z:0,lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_864/splitSplit&lstm_cell_864/split/split_dim:output:0lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_864/SigmoidSigmoidlstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_1Sigmoidlstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_864/mulMullstm_cell_864/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_864/ReluRelulstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_864/mul_1Mullstm_cell_864/Sigmoid:y:0 lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_864/add_1AddV2lstm_cell_864/mul:z:0lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_2Sigmoidlstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_864/Relu_1Relulstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_864/mul_2Mullstm_cell_864/Sigmoid_2:y:0"lstm_cell_864/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_864_matmul_readvariableop_resource.lstm_cell_864_matmul_1_readvariableop_resource-lstm_cell_864_biasadd_readvariableop_resource*
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
while_body_5178338*
condR
while_cond_5178337*K
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
NoOpNoOp%^lstm_cell_864/BiasAdd/ReadVariableOp$^lstm_cell_864/MatMul/ReadVariableOp&^lstm_cell_864/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_864/BiasAdd/ReadVariableOp$lstm_cell_864/BiasAdd/ReadVariableOp2J
#lstm_cell_864/MatMul/ReadVariableOp#lstm_cell_864/MatMul/ReadVariableOp2N
%lstm_cell_864/MatMul_1/ReadVariableOp%lstm_cell_864/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
║
╚
while_cond_5175752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5175752___redundant_placeholder05
1while_while_cond_5175752___redundant_placeholder15
1while_while_cond_5175752___redundant_placeholder25
1while_while_cond_5175752___redundant_placeholder3
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
while_cond_5178667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5178667___redundant_placeholder05
1while_while_cond_5178667___redundant_placeholder15
1while_while_cond_5178667___redundant_placeholder25
1while_while_cond_5178667___redundant_placeholder3
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
Н
Ё
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5180078

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
Н
Ё
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5180110

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
Ѓ
и
*__inference_lstm_864_layer_call_fn_5177993

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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5176826s
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
─8
н
while_body_5179284
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_866_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_866_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_866_matmul_readvariableop_resource:2(F
4while_lstm_cell_866_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_866/BiasAdd/ReadVariableOpб)while/lstm_cell_866/MatMul/ReadVariableOpб+while/lstm_cell_866/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_866/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_866/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_866/addAddV2$while/lstm_cell_866/MatMul:product:0&while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_866/BiasAddBiasAddwhile/lstm_cell_866/add:z:02while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_866/splitSplit,while/lstm_cell_866/split/split_dim:output:0$while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_866/SigmoidSigmoid"while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_1Sigmoid"while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_866/mulMul!while/lstm_cell_866/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_866/ReluRelu"while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_866/mul_1Mulwhile/lstm_cell_866/Sigmoid:y:0&while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_866/add_1AddV2while/lstm_cell_866/mul:z:0while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_866/Sigmoid_2Sigmoid"while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_866/Relu_1Reluwhile/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_866/mul_2Mul!while/lstm_cell_866/Sigmoid_2:y:0(while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_866/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_866/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_866/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_866/BiasAdd/ReadVariableOp*^while/lstm_cell_866/MatMul/ReadVariableOp,^while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_866_biasadd_readvariableop_resource5while_lstm_cell_866_biasadd_readvariableop_resource_0"n
4while_lstm_cell_866_matmul_1_readvariableop_resource6while_lstm_cell_866_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_866_matmul_readvariableop_resource4while_lstm_cell_866_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_866/BiasAdd/ReadVariableOp*while/lstm_cell_866/BiasAdd/ReadVariableOp2V
)while/lstm_cell_866/MatMul/ReadVariableOp)while/lstm_cell_866/MatMul/ReadVariableOp2Z
+while/lstm_cell_866/MatMul_1/ReadVariableOp+while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
▀
ѕ
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5179914

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
ПJ
а
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176280

inputs>
,lstm_cell_866_matmul_readvariableop_resource:2(@
.lstm_cell_866_matmul_1_readvariableop_resource:
(;
-lstm_cell_866_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_866/BiasAdd/ReadVariableOpб#lstm_cell_866/MatMul/ReadVariableOpб%lstm_cell_866/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_866/MatMul/ReadVariableOpReadVariableOp,lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_866/MatMulMatMulstrided_slice_2:output:0+lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_866/MatMul_1MatMulzeros:output:0-lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_866/addAddV2lstm_cell_866/MatMul:product:0 lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_866/BiasAddBiasAddlstm_cell_866/add:z:0,lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_866/splitSplit&lstm_cell_866/split/split_dim:output:0lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_866/SigmoidSigmoidlstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_1Sigmoidlstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_866/mulMullstm_cell_866/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_866/ReluRelulstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_866/mul_1Mullstm_cell_866/Sigmoid:y:0 lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_866/add_1AddV2lstm_cell_866/mul:z:0lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_2Sigmoidlstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_866/Relu_1Relulstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_866/mul_2Mullstm_cell_866/Sigmoid_2:y:0"lstm_cell_866/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_866_matmul_readvariableop_resource.lstm_cell_866_matmul_1_readvariableop_resource-lstm_cell_866_biasadd_readvariableop_resource*
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
while_body_5176196*
condR
while_cond_5176195*K
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
NoOpNoOp%^lstm_cell_866/BiasAdd/ReadVariableOp$^lstm_cell_866/MatMul/ReadVariableOp&^lstm_cell_866/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_866/BiasAdd/ReadVariableOp$lstm_cell_866/BiasAdd/ReadVariableOp2J
#lstm_cell_866/MatMul/ReadVariableOp#lstm_cell_866/MatMul/ReadVariableOp2N
%lstm_cell_866/MatMul_1/ReadVariableOp%lstm_cell_866/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
е8
І
E__inference_lstm_866_layer_call_and_return_conditional_losses_5175822

inputs'
lstm_cell_866_5175740:2('
lstm_cell_866_5175742:
(#
lstm_cell_866_5175744:(
identityѕб%lstm_cell_866/StatefulPartitionedCallбwhile;
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
%lstm_cell_866/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_866_5175740lstm_cell_866_5175742lstm_cell_866_5175744*
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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175694n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_866_5175740lstm_cell_866_5175742lstm_cell_866_5175744*
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
while_body_5175753*
condR
while_cond_5175752*K
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
NoOpNoOp&^lstm_cell_866/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_866/StatefulPartitionedCall%lstm_cell_866/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
И╗
ы
"__inference__wrapped_model_5174781
lstm_864_inputW
Dsequential_288_lstm_864_lstm_cell_864_matmul_readvariableop_resource:	љY
Fsequential_288_lstm_864_lstm_cell_864_matmul_1_readvariableop_resource:	dљT
Esequential_288_lstm_864_lstm_cell_864_biasadd_readvariableop_resource:	љW
Dsequential_288_lstm_865_lstm_cell_865_matmul_readvariableop_resource:	d╚Y
Fsequential_288_lstm_865_lstm_cell_865_matmul_1_readvariableop_resource:	2╚T
Esequential_288_lstm_865_lstm_cell_865_biasadd_readvariableop_resource:	╚V
Dsequential_288_lstm_866_lstm_cell_866_matmul_readvariableop_resource:2(X
Fsequential_288_lstm_866_lstm_cell_866_matmul_1_readvariableop_resource:
(S
Esequential_288_lstm_866_lstm_cell_866_biasadd_readvariableop_resource:(I
7sequential_288_dense_288_matmul_readvariableop_resource:
F
8sequential_288_dense_288_biasadd_readvariableop_resource:
identityѕб/sequential_288/dense_288/BiasAdd/ReadVariableOpб.sequential_288/dense_288/MatMul/ReadVariableOpб<sequential_288/lstm_864/lstm_cell_864/BiasAdd/ReadVariableOpб;sequential_288/lstm_864/lstm_cell_864/MatMul/ReadVariableOpб=sequential_288/lstm_864/lstm_cell_864/MatMul_1/ReadVariableOpбsequential_288/lstm_864/whileб<sequential_288/lstm_865/lstm_cell_865/BiasAdd/ReadVariableOpб;sequential_288/lstm_865/lstm_cell_865/MatMul/ReadVariableOpб=sequential_288/lstm_865/lstm_cell_865/MatMul_1/ReadVariableOpбsequential_288/lstm_865/whileб<sequential_288/lstm_866/lstm_cell_866/BiasAdd/ReadVariableOpб;sequential_288/lstm_866/lstm_cell_866/MatMul/ReadVariableOpб=sequential_288/lstm_866/lstm_cell_866/MatMul_1/ReadVariableOpбsequential_288/lstm_866/while[
sequential_288/lstm_864/ShapeShapelstm_864_input*
T0*
_output_shapes
:u
+sequential_288/lstm_864/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_288/lstm_864/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_288/lstm_864/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_288/lstm_864/strided_sliceStridedSlice&sequential_288/lstm_864/Shape:output:04sequential_288/lstm_864/strided_slice/stack:output:06sequential_288/lstm_864/strided_slice/stack_1:output:06sequential_288/lstm_864/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_288/lstm_864/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╗
$sequential_288/lstm_864/zeros/packedPack.sequential_288/lstm_864/strided_slice:output:0/sequential_288/lstm_864/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_288/lstm_864/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_288/lstm_864/zerosFill-sequential_288/lstm_864/zeros/packed:output:0,sequential_288/lstm_864/zeros/Const:output:0*
T0*'
_output_shapes
:         dj
(sequential_288/lstm_864/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d┐
&sequential_288/lstm_864/zeros_1/packedPack.sequential_288/lstm_864/strided_slice:output:01sequential_288/lstm_864/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_288/lstm_864/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_288/lstm_864/zeros_1Fill/sequential_288/lstm_864/zeros_1/packed:output:0.sequential_288/lstm_864/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d{
&sequential_288/lstm_864/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
!sequential_288/lstm_864/transpose	Transposelstm_864_input/sequential_288/lstm_864/transpose/perm:output:0*
T0*+
_output_shapes
:         t
sequential_288/lstm_864/Shape_1Shape%sequential_288/lstm_864/transpose:y:0*
T0*
_output_shapes
:w
-sequential_288/lstm_864/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_864/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_288/lstm_864/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_288/lstm_864/strided_slice_1StridedSlice(sequential_288/lstm_864/Shape_1:output:06sequential_288/lstm_864/strided_slice_1/stack:output:08sequential_288/lstm_864/strided_slice_1/stack_1:output:08sequential_288/lstm_864/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_288/lstm_864/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_288/lstm_864/TensorArrayV2TensorListReserve<sequential_288/lstm_864/TensorArrayV2/element_shape:output:00sequential_288/lstm_864/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_288/lstm_864/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       е
?sequential_288/lstm_864/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_288/lstm_864/transpose:y:0Vsequential_288/lstm_864/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_288/lstm_864/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_864/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_288/lstm_864/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_288/lstm_864/strided_slice_2StridedSlice%sequential_288/lstm_864/transpose:y:06sequential_288/lstm_864/strided_slice_2/stack:output:08sequential_288/lstm_864/strided_slice_2/stack_1:output:08sequential_288/lstm_864/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┴
;sequential_288/lstm_864/lstm_cell_864/MatMul/ReadVariableOpReadVariableOpDsequential_288_lstm_864_lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0Я
,sequential_288/lstm_864/lstm_cell_864/MatMulMatMul0sequential_288/lstm_864/strided_slice_2:output:0Csequential_288/lstm_864/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┼
=sequential_288/lstm_864/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOpFsequential_288_lstm_864_lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0┌
.sequential_288/lstm_864/lstm_cell_864/MatMul_1MatMul&sequential_288/lstm_864/zeros:output:0Esequential_288/lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љО
)sequential_288/lstm_864/lstm_cell_864/addAddV26sequential_288/lstm_864/lstm_cell_864/MatMul:product:08sequential_288/lstm_864/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љ┐
<sequential_288/lstm_864/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOpEsequential_288_lstm_864_lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Я
-sequential_288/lstm_864/lstm_cell_864/BiasAddBiasAdd-sequential_288/lstm_864/lstm_cell_864/add:z:0Dsequential_288/lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љw
5sequential_288/lstm_864/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_288/lstm_864/lstm_cell_864/splitSplit>sequential_288/lstm_864/lstm_cell_864/split/split_dim:output:06sequential_288/lstm_864/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitа
-sequential_288/lstm_864/lstm_cell_864/SigmoidSigmoid4sequential_288/lstm_864/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dб
/sequential_288/lstm_864/lstm_cell_864/Sigmoid_1Sigmoid4sequential_288/lstm_864/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         d┴
)sequential_288/lstm_864/lstm_cell_864/mulMul3sequential_288/lstm_864/lstm_cell_864/Sigmoid_1:y:0(sequential_288/lstm_864/zeros_1:output:0*
T0*'
_output_shapes
:         dџ
*sequential_288/lstm_864/lstm_cell_864/ReluRelu4sequential_288/lstm_864/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЛ
+sequential_288/lstm_864/lstm_cell_864/mul_1Mul1sequential_288/lstm_864/lstm_cell_864/Sigmoid:y:08sequential_288/lstm_864/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dк
+sequential_288/lstm_864/lstm_cell_864/add_1AddV2-sequential_288/lstm_864/lstm_cell_864/mul:z:0/sequential_288/lstm_864/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dб
/sequential_288/lstm_864/lstm_cell_864/Sigmoid_2Sigmoid4sequential_288/lstm_864/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dЌ
,sequential_288/lstm_864/lstm_cell_864/Relu_1Relu/sequential_288/lstm_864/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dН
+sequential_288/lstm_864/lstm_cell_864/mul_2Mul3sequential_288/lstm_864/lstm_cell_864/Sigmoid_2:y:0:sequential_288/lstm_864/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dє
5sequential_288/lstm_864/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ђ
'sequential_288/lstm_864/TensorArrayV2_1TensorListReserve>sequential_288/lstm_864/TensorArrayV2_1/element_shape:output:00sequential_288/lstm_864/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_288/lstm_864/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_288/lstm_864/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_288/lstm_864/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_288/lstm_864/whileWhile3sequential_288/lstm_864/while/loop_counter:output:09sequential_288/lstm_864/while/maximum_iterations:output:0%sequential_288/lstm_864/time:output:00sequential_288/lstm_864/TensorArrayV2_1:handle:0&sequential_288/lstm_864/zeros:output:0(sequential_288/lstm_864/zeros_1:output:00sequential_288/lstm_864/strided_slice_1:output:0Osequential_288/lstm_864/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_288_lstm_864_lstm_cell_864_matmul_readvariableop_resourceFsequential_288_lstm_864_lstm_cell_864_matmul_1_readvariableop_resourceEsequential_288_lstm_864_lstm_cell_864_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_288_lstm_864_while_body_5174413*6
cond.R,
*sequential_288_lstm_864_while_cond_5174412*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ў
Hsequential_288/lstm_864/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   і
:sequential_288/lstm_864/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_288/lstm_864/while:output:3Qsequential_288/lstm_864/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0ђ
-sequential_288/lstm_864/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_288/lstm_864/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_864/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_288/lstm_864/strided_slice_3StridedSliceCsequential_288/lstm_864/TensorArrayV2Stack/TensorListStack:tensor:06sequential_288/lstm_864/strided_slice_3/stack:output:08sequential_288/lstm_864/strided_slice_3/stack_1:output:08sequential_288/lstm_864/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask}
(sequential_288/lstm_864/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_288/lstm_864/transpose_1	TransposeCsequential_288/lstm_864/TensorArrayV2Stack/TensorListStack:tensor:01sequential_288/lstm_864/transpose_1/perm:output:0*
T0*+
_output_shapes
:         ds
sequential_288/lstm_864/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_288/lstm_865/ShapeShape'sequential_288/lstm_864/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_288/lstm_865/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_288/lstm_865/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_288/lstm_865/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_288/lstm_865/strided_sliceStridedSlice&sequential_288/lstm_865/Shape:output:04sequential_288/lstm_865/strided_slice/stack:output:06sequential_288/lstm_865/strided_slice/stack_1:output:06sequential_288/lstm_865/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_288/lstm_865/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╗
$sequential_288/lstm_865/zeros/packedPack.sequential_288/lstm_865/strided_slice:output:0/sequential_288/lstm_865/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_288/lstm_865/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_288/lstm_865/zerosFill-sequential_288/lstm_865/zeros/packed:output:0,sequential_288/lstm_865/zeros/Const:output:0*
T0*'
_output_shapes
:         2j
(sequential_288/lstm_865/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2┐
&sequential_288/lstm_865/zeros_1/packedPack.sequential_288/lstm_865/strided_slice:output:01sequential_288/lstm_865/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_288/lstm_865/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_288/lstm_865/zeros_1Fill/sequential_288/lstm_865/zeros_1/packed:output:0.sequential_288/lstm_865/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2{
&sequential_288/lstm_865/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_288/lstm_865/transpose	Transpose'sequential_288/lstm_864/transpose_1:y:0/sequential_288/lstm_865/transpose/perm:output:0*
T0*+
_output_shapes
:         dt
sequential_288/lstm_865/Shape_1Shape%sequential_288/lstm_865/transpose:y:0*
T0*
_output_shapes
:w
-sequential_288/lstm_865/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_865/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_288/lstm_865/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_288/lstm_865/strided_slice_1StridedSlice(sequential_288/lstm_865/Shape_1:output:06sequential_288/lstm_865/strided_slice_1/stack:output:08sequential_288/lstm_865/strided_slice_1/stack_1:output:08sequential_288/lstm_865/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_288/lstm_865/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_288/lstm_865/TensorArrayV2TensorListReserve<sequential_288/lstm_865/TensorArrayV2/element_shape:output:00sequential_288/lstm_865/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_288/lstm_865/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   е
?sequential_288/lstm_865/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_288/lstm_865/transpose:y:0Vsequential_288/lstm_865/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_288/lstm_865/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_865/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_288/lstm_865/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_288/lstm_865/strided_slice_2StridedSlice%sequential_288/lstm_865/transpose:y:06sequential_288/lstm_865/strided_slice_2/stack:output:08sequential_288/lstm_865/strided_slice_2/stack_1:output:08sequential_288/lstm_865/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┴
;sequential_288/lstm_865/lstm_cell_865/MatMul/ReadVariableOpReadVariableOpDsequential_288_lstm_865_lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0Я
,sequential_288/lstm_865/lstm_cell_865/MatMulMatMul0sequential_288/lstm_865/strided_slice_2:output:0Csequential_288/lstm_865/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚┼
=sequential_288/lstm_865/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOpFsequential_288_lstm_865_lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0┌
.sequential_288/lstm_865/lstm_cell_865/MatMul_1MatMul&sequential_288/lstm_865/zeros:output:0Esequential_288/lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚О
)sequential_288/lstm_865/lstm_cell_865/addAddV26sequential_288/lstm_865/lstm_cell_865/MatMul:product:08sequential_288/lstm_865/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚┐
<sequential_288/lstm_865/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOpEsequential_288_lstm_865_lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Я
-sequential_288/lstm_865/lstm_cell_865/BiasAddBiasAdd-sequential_288/lstm_865/lstm_cell_865/add:z:0Dsequential_288/lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚w
5sequential_288/lstm_865/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_288/lstm_865/lstm_cell_865/splitSplit>sequential_288/lstm_865/lstm_cell_865/split/split_dim:output:06sequential_288/lstm_865/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitа
-sequential_288/lstm_865/lstm_cell_865/SigmoidSigmoid4sequential_288/lstm_865/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2б
/sequential_288/lstm_865/lstm_cell_865/Sigmoid_1Sigmoid4sequential_288/lstm_865/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2┴
)sequential_288/lstm_865/lstm_cell_865/mulMul3sequential_288/lstm_865/lstm_cell_865/Sigmoid_1:y:0(sequential_288/lstm_865/zeros_1:output:0*
T0*'
_output_shapes
:         2џ
*sequential_288/lstm_865/lstm_cell_865/ReluRelu4sequential_288/lstm_865/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Л
+sequential_288/lstm_865/lstm_cell_865/mul_1Mul1sequential_288/lstm_865/lstm_cell_865/Sigmoid:y:08sequential_288/lstm_865/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2к
+sequential_288/lstm_865/lstm_cell_865/add_1AddV2-sequential_288/lstm_865/lstm_cell_865/mul:z:0/sequential_288/lstm_865/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2б
/sequential_288/lstm_865/lstm_cell_865/Sigmoid_2Sigmoid4sequential_288/lstm_865/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2Ќ
,sequential_288/lstm_865/lstm_cell_865/Relu_1Relu/sequential_288/lstm_865/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Н
+sequential_288/lstm_865/lstm_cell_865/mul_2Mul3sequential_288/lstm_865/lstm_cell_865/Sigmoid_2:y:0:sequential_288/lstm_865/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2є
5sequential_288/lstm_865/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ђ
'sequential_288/lstm_865/TensorArrayV2_1TensorListReserve>sequential_288/lstm_865/TensorArrayV2_1/element_shape:output:00sequential_288/lstm_865/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_288/lstm_865/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_288/lstm_865/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_288/lstm_865/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_288/lstm_865/whileWhile3sequential_288/lstm_865/while/loop_counter:output:09sequential_288/lstm_865/while/maximum_iterations:output:0%sequential_288/lstm_865/time:output:00sequential_288/lstm_865/TensorArrayV2_1:handle:0&sequential_288/lstm_865/zeros:output:0(sequential_288/lstm_865/zeros_1:output:00sequential_288/lstm_865/strided_slice_1:output:0Osequential_288/lstm_865/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_288_lstm_865_lstm_cell_865_matmul_readvariableop_resourceFsequential_288_lstm_865_lstm_cell_865_matmul_1_readvariableop_resourceEsequential_288_lstm_865_lstm_cell_865_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         2:         2: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *6
body.R,
*sequential_288_lstm_865_while_body_5174552*6
cond.R,
*sequential_288_lstm_865_while_cond_5174551*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ў
Hsequential_288/lstm_865/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   і
:sequential_288/lstm_865/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_288/lstm_865/while:output:3Qsequential_288/lstm_865/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0ђ
-sequential_288/lstm_865/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_288/lstm_865/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_865/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_288/lstm_865/strided_slice_3StridedSliceCsequential_288/lstm_865/TensorArrayV2Stack/TensorListStack:tensor:06sequential_288/lstm_865/strided_slice_3/stack:output:08sequential_288/lstm_865/strided_slice_3/stack_1:output:08sequential_288/lstm_865/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask}
(sequential_288/lstm_865/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_288/lstm_865/transpose_1	TransposeCsequential_288/lstm_865/TensorArrayV2Stack/TensorListStack:tensor:01sequential_288/lstm_865/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2s
sequential_288/lstm_865/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_288/lstm_866/ShapeShape'sequential_288/lstm_865/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_288/lstm_866/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_288/lstm_866/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_288/lstm_866/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_288/lstm_866/strided_sliceStridedSlice&sequential_288/lstm_866/Shape:output:04sequential_288/lstm_866/strided_slice/stack:output:06sequential_288/lstm_866/strided_slice/stack_1:output:06sequential_288/lstm_866/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_288/lstm_866/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╗
$sequential_288/lstm_866/zeros/packedPack.sequential_288/lstm_866/strided_slice:output:0/sequential_288/lstm_866/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_288/lstm_866/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_288/lstm_866/zerosFill-sequential_288/lstm_866/zeros/packed:output:0,sequential_288/lstm_866/zeros/Const:output:0*
T0*'
_output_shapes
:         
j
(sequential_288/lstm_866/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
┐
&sequential_288/lstm_866/zeros_1/packedPack.sequential_288/lstm_866/strided_slice:output:01sequential_288/lstm_866/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_288/lstm_866/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_288/lstm_866/zeros_1Fill/sequential_288/lstm_866/zeros_1/packed:output:0.sequential_288/lstm_866/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
{
&sequential_288/lstm_866/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_288/lstm_866/transpose	Transpose'sequential_288/lstm_865/transpose_1:y:0/sequential_288/lstm_866/transpose/perm:output:0*
T0*+
_output_shapes
:         2t
sequential_288/lstm_866/Shape_1Shape%sequential_288/lstm_866/transpose:y:0*
T0*
_output_shapes
:w
-sequential_288/lstm_866/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_866/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_288/lstm_866/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_288/lstm_866/strided_slice_1StridedSlice(sequential_288/lstm_866/Shape_1:output:06sequential_288/lstm_866/strided_slice_1/stack:output:08sequential_288/lstm_866/strided_slice_1/stack_1:output:08sequential_288/lstm_866/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_288/lstm_866/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_288/lstm_866/TensorArrayV2TensorListReserve<sequential_288/lstm_866/TensorArrayV2/element_shape:output:00sequential_288/lstm_866/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_288/lstm_866/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   е
?sequential_288/lstm_866/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_288/lstm_866/transpose:y:0Vsequential_288/lstm_866/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_288/lstm_866/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_866/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_288/lstm_866/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_288/lstm_866/strided_slice_2StridedSlice%sequential_288/lstm_866/transpose:y:06sequential_288/lstm_866/strided_slice_2/stack:output:08sequential_288/lstm_866/strided_slice_2/stack_1:output:08sequential_288/lstm_866/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask└
;sequential_288/lstm_866/lstm_cell_866/MatMul/ReadVariableOpReadVariableOpDsequential_288_lstm_866_lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▀
,sequential_288/lstm_866/lstm_cell_866/MatMulMatMul0sequential_288/lstm_866/strided_slice_2:output:0Csequential_288/lstm_866/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (─
=sequential_288/lstm_866/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOpFsequential_288_lstm_866_lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0┘
.sequential_288/lstm_866/lstm_cell_866/MatMul_1MatMul&sequential_288/lstm_866/zeros:output:0Esequential_288/lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (о
)sequential_288/lstm_866/lstm_cell_866/addAddV26sequential_288/lstm_866/lstm_cell_866/MatMul:product:08sequential_288/lstm_866/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (Й
<sequential_288/lstm_866/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOpEsequential_288_lstm_866_lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▀
-sequential_288/lstm_866/lstm_cell_866/BiasAddBiasAdd-sequential_288/lstm_866/lstm_cell_866/add:z:0Dsequential_288/lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (w
5sequential_288/lstm_866/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_288/lstm_866/lstm_cell_866/splitSplit>sequential_288/lstm_866/lstm_cell_866/split/split_dim:output:06sequential_288/lstm_866/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitа
-sequential_288/lstm_866/lstm_cell_866/SigmoidSigmoid4sequential_288/lstm_866/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
б
/sequential_288/lstm_866/lstm_cell_866/Sigmoid_1Sigmoid4sequential_288/lstm_866/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
┴
)sequential_288/lstm_866/lstm_cell_866/mulMul3sequential_288/lstm_866/lstm_cell_866/Sigmoid_1:y:0(sequential_288/lstm_866/zeros_1:output:0*
T0*'
_output_shapes
:         
џ
*sequential_288/lstm_866/lstm_cell_866/ReluRelu4sequential_288/lstm_866/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Л
+sequential_288/lstm_866/lstm_cell_866/mul_1Mul1sequential_288/lstm_866/lstm_cell_866/Sigmoid:y:08sequential_288/lstm_866/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
к
+sequential_288/lstm_866/lstm_cell_866/add_1AddV2-sequential_288/lstm_866/lstm_cell_866/mul:z:0/sequential_288/lstm_866/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
б
/sequential_288/lstm_866/lstm_cell_866/Sigmoid_2Sigmoid4sequential_288/lstm_866/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
Ќ
,sequential_288/lstm_866/lstm_cell_866/Relu_1Relu/sequential_288/lstm_866/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Н
+sequential_288/lstm_866/lstm_cell_866/mul_2Mul3sequential_288/lstm_866/lstm_cell_866/Sigmoid_2:y:0:sequential_288/lstm_866/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
є
5sequential_288/lstm_866/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ђ
'sequential_288/lstm_866/TensorArrayV2_1TensorListReserve>sequential_288/lstm_866/TensorArrayV2_1/element_shape:output:00sequential_288/lstm_866/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_288/lstm_866/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_288/lstm_866/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_288/lstm_866/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_288/lstm_866/whileWhile3sequential_288/lstm_866/while/loop_counter:output:09sequential_288/lstm_866/while/maximum_iterations:output:0%sequential_288/lstm_866/time:output:00sequential_288/lstm_866/TensorArrayV2_1:handle:0&sequential_288/lstm_866/zeros:output:0(sequential_288/lstm_866/zeros_1:output:00sequential_288/lstm_866/strided_slice_1:output:0Osequential_288/lstm_866/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_288_lstm_866_lstm_cell_866_matmul_readvariableop_resourceFsequential_288_lstm_866_lstm_cell_866_matmul_1_readvariableop_resourceEsequential_288_lstm_866_lstm_cell_866_biasadd_readvariableop_resource*
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
_stateful_parallelism( *6
body.R,
*sequential_288_lstm_866_while_body_5174691*6
cond.R,
*sequential_288_lstm_866_while_cond_5174690*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ў
Hsequential_288/lstm_866/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   і
:sequential_288/lstm_866/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_288/lstm_866/while:output:3Qsequential_288/lstm_866/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0ђ
-sequential_288/lstm_866/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_288/lstm_866/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_288/lstm_866/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_288/lstm_866/strided_slice_3StridedSliceCsequential_288/lstm_866/TensorArrayV2Stack/TensorListStack:tensor:06sequential_288/lstm_866/strided_slice_3/stack:output:08sequential_288/lstm_866/strided_slice_3/stack_1:output:08sequential_288/lstm_866/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask}
(sequential_288/lstm_866/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_288/lstm_866/transpose_1	TransposeCsequential_288/lstm_866/TensorArrayV2Stack/TensorListStack:tensor:01sequential_288/lstm_866/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
s
sequential_288/lstm_866/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
.sequential_288/dense_288/MatMul/ReadVariableOpReadVariableOp7sequential_288_dense_288_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0┼
sequential_288/dense_288/MatMulMatMul0sequential_288/lstm_866/strided_slice_3:output:06sequential_288/dense_288/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ц
/sequential_288/dense_288/BiasAdd/ReadVariableOpReadVariableOp8sequential_288_dense_288_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_288/dense_288/BiasAddBiasAdd)sequential_288/dense_288/MatMul:product:07sequential_288/dense_288/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_288/dense_288/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp0^sequential_288/dense_288/BiasAdd/ReadVariableOp/^sequential_288/dense_288/MatMul/ReadVariableOp=^sequential_288/lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp<^sequential_288/lstm_864/lstm_cell_864/MatMul/ReadVariableOp>^sequential_288/lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp^sequential_288/lstm_864/while=^sequential_288/lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp<^sequential_288/lstm_865/lstm_cell_865/MatMul/ReadVariableOp>^sequential_288/lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp^sequential_288/lstm_865/while=^sequential_288/lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp<^sequential_288/lstm_866/lstm_cell_866/MatMul/ReadVariableOp>^sequential_288/lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp^sequential_288/lstm_866/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2b
/sequential_288/dense_288/BiasAdd/ReadVariableOp/sequential_288/dense_288/BiasAdd/ReadVariableOp2`
.sequential_288/dense_288/MatMul/ReadVariableOp.sequential_288/dense_288/MatMul/ReadVariableOp2|
<sequential_288/lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp<sequential_288/lstm_864/lstm_cell_864/BiasAdd/ReadVariableOp2z
;sequential_288/lstm_864/lstm_cell_864/MatMul/ReadVariableOp;sequential_288/lstm_864/lstm_cell_864/MatMul/ReadVariableOp2~
=sequential_288/lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp=sequential_288/lstm_864/lstm_cell_864/MatMul_1/ReadVariableOp2>
sequential_288/lstm_864/whilesequential_288/lstm_864/while2|
<sequential_288/lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp<sequential_288/lstm_865/lstm_cell_865/BiasAdd/ReadVariableOp2z
;sequential_288/lstm_865/lstm_cell_865/MatMul/ReadVariableOp;sequential_288/lstm_865/lstm_cell_865/MatMul/ReadVariableOp2~
=sequential_288/lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp=sequential_288/lstm_865/lstm_cell_865/MatMul_1/ReadVariableOp2>
sequential_288/lstm_865/whilesequential_288/lstm_865/while2|
<sequential_288/lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp<sequential_288/lstm_866/lstm_cell_866/BiasAdd/ReadVariableOp2z
;sequential_288/lstm_866/lstm_cell_866/MatMul/ReadVariableOp;sequential_288/lstm_866/lstm_cell_866/MatMul/ReadVariableOp2~
=sequential_288/lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp=sequential_288/lstm_866/lstm_cell_866/MatMul_1/ReadVariableOp2>
sequential_288/lstm_866/whilesequential_288/lstm_866/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_864_input
Л8
┌
while_body_5175896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_864_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_864_matmul_readvariableop_resource:	љG
4while_lstm_cell_864_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_864/BiasAdd/ReadVariableOpб)while/lstm_cell_864/MatMul/ReadVariableOpб+while/lstm_cell_864/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_864/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_864/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_864/addAddV2$while/lstm_cell_864/MatMul:product:0&while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_864/BiasAddBiasAddwhile/lstm_cell_864/add:z:02while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_864/splitSplit,while/lstm_cell_864/split/split_dim:output:0$while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_864/SigmoidSigmoid"while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_1Sigmoid"while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_864/mulMul!while/lstm_cell_864/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_864/ReluRelu"while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_864/mul_1Mulwhile/lstm_cell_864/Sigmoid:y:0&while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_864/add_1AddV2while/lstm_cell_864/mul:z:0while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_2Sigmoid"while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_864/Relu_1Reluwhile/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_864/mul_2Mul!while/lstm_cell_864/Sigmoid_2:y:0(while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_864/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_864/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_864/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_864/BiasAdd/ReadVariableOp*^while/lstm_cell_864/MatMul/ReadVariableOp,^while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_864_biasadd_readvariableop_resource5while_lstm_cell_864_biasadd_readvariableop_resource_0"n
4while_lstm_cell_864_matmul_1_readvariableop_resource6while_lstm_cell_864_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_864_matmul_readvariableop_resource4while_lstm_cell_864_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_864/BiasAdd/ReadVariableOp*while/lstm_cell_864/BiasAdd/ReadVariableOp2V
)while/lstm_cell_864/MatMul/ReadVariableOp)while/lstm_cell_864/MatMul/ReadVariableOp2Z
+while/lstm_cell_864/MatMul_1/ReadVariableOp+while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
ћC
З

lstm_866_while_body_5177859.
*lstm_866_while_lstm_866_while_loop_counter4
0lstm_866_while_lstm_866_while_maximum_iterations
lstm_866_while_placeholder 
lstm_866_while_placeholder_1 
lstm_866_while_placeholder_2 
lstm_866_while_placeholder_3-
)lstm_866_while_lstm_866_strided_slice_1_0i
elstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0:2(Q
?lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(L
>lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0:(
lstm_866_while_identity
lstm_866_while_identity_1
lstm_866_while_identity_2
lstm_866_while_identity_3
lstm_866_while_identity_4
lstm_866_while_identity_5+
'lstm_866_while_lstm_866_strided_slice_1g
clstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensorM
;lstm_866_while_lstm_cell_866_matmul_readvariableop_resource:2(O
=lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource:
(J
<lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpб2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpб4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOpЉ
@lstm_866/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_866/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensor_0lstm_866_while_placeholderIlstm_866/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp=lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_866/while/lstm_cell_866/MatMulMatMul9lstm_866/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp?lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_866/while/lstm_cell_866/MatMul_1MatMullstm_866_while_placeholder_2<lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_866/while/lstm_cell_866/addAddV2-lstm_866/while/lstm_cell_866/MatMul:product:0/lstm_866/while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp>lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_866/while/lstm_cell_866/BiasAddBiasAdd$lstm_866/while/lstm_cell_866/add:z:0;lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_866/while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_866/while/lstm_cell_866/splitSplit5lstm_866/while/lstm_cell_866/split/split_dim:output:0-lstm_866/while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_866/while/lstm_cell_866/SigmoidSigmoid+lstm_866/while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_866/while/lstm_cell_866/Sigmoid_1Sigmoid+lstm_866/while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_866/while/lstm_cell_866/mulMul*lstm_866/while/lstm_cell_866/Sigmoid_1:y:0lstm_866_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_866/while/lstm_cell_866/ReluRelu+lstm_866/while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_866/while/lstm_cell_866/mul_1Mul(lstm_866/while/lstm_cell_866/Sigmoid:y:0/lstm_866/while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_866/while/lstm_cell_866/add_1AddV2$lstm_866/while/lstm_cell_866/mul:z:0&lstm_866/while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_866/while/lstm_cell_866/Sigmoid_2Sigmoid+lstm_866/while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_866/while/lstm_cell_866/Relu_1Relu&lstm_866/while/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_866/while/lstm_cell_866/mul_2Mul*lstm_866/while/lstm_cell_866/Sigmoid_2:y:01lstm_866/while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_866/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_866_while_placeholder_1lstm_866_while_placeholder&lstm_866/while/lstm_cell_866/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_866/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_866/while/addAddV2lstm_866_while_placeholderlstm_866/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_866/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_866/while/add_1AddV2*lstm_866_while_lstm_866_while_loop_counterlstm_866/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_866/while/IdentityIdentitylstm_866/while/add_1:z:0^lstm_866/while/NoOp*
T0*
_output_shapes
: ј
lstm_866/while/Identity_1Identity0lstm_866_while_lstm_866_while_maximum_iterations^lstm_866/while/NoOp*
T0*
_output_shapes
: t
lstm_866/while/Identity_2Identitylstm_866/while/add:z:0^lstm_866/while/NoOp*
T0*
_output_shapes
: А
lstm_866/while/Identity_3IdentityClstm_866/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_866/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_866/while/Identity_4Identity&lstm_866/while/lstm_cell_866/mul_2:z:0^lstm_866/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_866/while/Identity_5Identity&lstm_866/while/lstm_cell_866/add_1:z:0^lstm_866/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_866/while/NoOpNoOp4^lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp3^lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp5^lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_866_while_identity lstm_866/while/Identity:output:0"?
lstm_866_while_identity_1"lstm_866/while/Identity_1:output:0"?
lstm_866_while_identity_2"lstm_866/while/Identity_2:output:0"?
lstm_866_while_identity_3"lstm_866/while/Identity_3:output:0"?
lstm_866_while_identity_4"lstm_866/while/Identity_4:output:0"?
lstm_866_while_identity_5"lstm_866/while/Identity_5:output:0"T
'lstm_866_while_lstm_866_strided_slice_1)lstm_866_while_lstm_866_strided_slice_1_0"~
<lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource>lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0"ђ
=lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource?lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0"|
;lstm_866_while_lstm_cell_866_matmul_readvariableop_resource=lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0"╠
clstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensorelstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp2h
2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp2l
4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
Зц
ю
#__inference__traced_restore_5180383
file_prefix3
!assignvariableop_dense_288_kernel:
/
!assignvariableop_1_dense_288_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_864_lstm_cell_864_kernel:	љM
:assignvariableop_8_lstm_864_lstm_cell_864_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_864_lstm_cell_864_bias:	љD
1assignvariableop_10_lstm_865_lstm_cell_865_kernel:	d╚N
;assignvariableop_11_lstm_865_lstm_cell_865_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_865_lstm_cell_865_bias:	╚C
1assignvariableop_13_lstm_866_lstm_cell_866_kernel:2(M
;assignvariableop_14_lstm_866_lstm_cell_866_recurrent_kernel:
(=
/assignvariableop_15_lstm_866_lstm_cell_866_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_288_kernel_m:
7
)assignvariableop_19_adam_dense_288_bias_m:K
8assignvariableop_20_adam_lstm_864_lstm_cell_864_kernel_m:	љU
Bassignvariableop_21_adam_lstm_864_lstm_cell_864_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_864_lstm_cell_864_bias_m:	љK
8assignvariableop_23_adam_lstm_865_lstm_cell_865_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_865_lstm_cell_865_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_865_lstm_cell_865_bias_m:	╚J
8assignvariableop_26_adam_lstm_866_lstm_cell_866_kernel_m:2(T
Bassignvariableop_27_adam_lstm_866_lstm_cell_866_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_866_lstm_cell_866_bias_m:(=
+assignvariableop_29_adam_dense_288_kernel_v:
7
)assignvariableop_30_adam_dense_288_bias_v:K
8assignvariableop_31_adam_lstm_864_lstm_cell_864_kernel_v:	љU
Bassignvariableop_32_adam_lstm_864_lstm_cell_864_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_864_lstm_cell_864_bias_v:	љK
8assignvariableop_34_adam_lstm_865_lstm_cell_865_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_865_lstm_cell_865_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_865_lstm_cell_865_bias_v:	╚J
8assignvariableop_37_adam_lstm_866_lstm_cell_866_kernel_v:2(T
Bassignvariableop_38_adam_lstm_866_lstm_cell_866_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_866_lstm_cell_866_bias_v:(
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
:ї
AssignVariableOpAssignVariableOp!assignvariableop_dense_288_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_288_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_864_lstm_cell_864_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_864_lstm_cell_864_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_864_lstm_cell_864_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_865_lstm_cell_865_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_865_lstm_cell_865_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_865_lstm_cell_865_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_866_lstm_cell_866_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_866_lstm_cell_866_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_866_lstm_cell_866_biasIdentity_15:output:0"/device:CPU:0*
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
:ю
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_288_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_288_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_864_lstm_cell_864_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_864_lstm_cell_864_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_864_lstm_cell_864_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_865_lstm_cell_865_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_865_lstm_cell_865_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_865_lstm_cell_865_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_866_lstm_cell_866_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_866_lstm_cell_866_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_866_lstm_cell_866_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_288_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_288_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_864_lstm_cell_864_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_864_lstm_cell_864_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_864_lstm_cell_864_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_865_lstm_cell_865_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_865_lstm_cell_865_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_865_lstm_cell_865_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_866_lstm_cell_866_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_866_lstm_cell_866_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_866_lstm_cell_866_bias_vIdentity_39:output:0"/device:CPU:0*
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
Ѕ#
в
while_body_5175753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_866_5175777_0:2(/
while_lstm_cell_866_5175779_0:
(+
while_lstm_cell_866_5175781_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_866_5175777:2(-
while_lstm_cell_866_5175779:
()
while_lstm_cell_866_5175781:(ѕб+while/lstm_cell_866/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_866/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_866_5175777_0while_lstm_cell_866_5175779_0while_lstm_cell_866_5175781_0*
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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175694П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_866/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_866/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_866/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_866/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_866_5175777while_lstm_cell_866_5175777_0"<
while_lstm_cell_866_5175779while_lstm_cell_866_5175779_0"<
while_lstm_cell_866_5175781while_lstm_cell_866_5175781_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_866/StatefulPartitionedCall+while/lstm_cell_866/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5175561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5175561___redundant_placeholder05
1while_while_cond_5175561___redundant_placeholder15
1while_while_cond_5175561___redundant_placeholder25
1while_while_cond_5175561___redundant_placeholder3
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
Ј#
ы
while_body_5175212
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_865_5175236_0:	d╚0
while_lstm_cell_865_5175238_0:	2╚,
while_lstm_cell_865_5175240_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_865_5175236:	d╚.
while_lstm_cell_865_5175238:	2╚*
while_lstm_cell_865_5175240:	╚ѕб+while/lstm_cell_865/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_865/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_865_5175236_0while_lstm_cell_865_5175238_0while_lstm_cell_865_5175240_0*
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175198П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_865/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_865/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_865/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_865/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_865_5175236while_lstm_cell_865_5175236_0"<
while_lstm_cell_865_5175238while_lstm_cell_865_5175238_0"<
while_lstm_cell_865_5175240while_lstm_cell_865_5175240_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_865/StatefulPartitionedCall+while/lstm_cell_865/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
╔	
э
F__inference_dense_288_layer_call_and_return_conditional_losses_5179816

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
ЬT
п
*sequential_288_lstm_866_while_body_5174691L
Hsequential_288_lstm_866_while_sequential_288_lstm_866_while_loop_counterR
Nsequential_288_lstm_866_while_sequential_288_lstm_866_while_maximum_iterations-
)sequential_288_lstm_866_while_placeholder/
+sequential_288_lstm_866_while_placeholder_1/
+sequential_288_lstm_866_while_placeholder_2/
+sequential_288_lstm_866_while_placeholder_3K
Gsequential_288_lstm_866_while_sequential_288_lstm_866_strided_slice_1_0ѕ
Ѓsequential_288_lstm_866_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_866_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_288_lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0:2(`
Nsequential_288_lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0:
([
Msequential_288_lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0:(*
&sequential_288_lstm_866_while_identity,
(sequential_288_lstm_866_while_identity_1,
(sequential_288_lstm_866_while_identity_2,
(sequential_288_lstm_866_while_identity_3,
(sequential_288_lstm_866_while_identity_4,
(sequential_288_lstm_866_while_identity_5I
Esequential_288_lstm_866_while_sequential_288_lstm_866_strided_slice_1є
Ђsequential_288_lstm_866_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_866_tensorarrayunstack_tensorlistfromtensor\
Jsequential_288_lstm_866_while_lstm_cell_866_matmul_readvariableop_resource:2(^
Lsequential_288_lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource:
(Y
Ksequential_288_lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource:(ѕбBsequential_288/lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpбAsequential_288/lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpбCsequential_288/lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOpа
Osequential_288/lstm_866/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ъ
Asequential_288/lstm_866/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_288_lstm_866_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_866_tensorarrayunstack_tensorlistfromtensor_0)sequential_288_lstm_866_while_placeholderXsequential_288/lstm_866/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╬
Asequential_288/lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOpLsequential_288_lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ѓ
2sequential_288/lstm_866/while/lstm_cell_866/MatMulMatMulHsequential_288/lstm_866/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_288/lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (м
Csequential_288/lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOpNsequential_288_lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ж
4sequential_288/lstm_866/while/lstm_cell_866/MatMul_1MatMul+sequential_288_lstm_866_while_placeholder_2Ksequential_288/lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (У
/sequential_288/lstm_866/while/lstm_cell_866/addAddV2<sequential_288/lstm_866/while/lstm_cell_866/MatMul:product:0>sequential_288/lstm_866/while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (╠
Bsequential_288/lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOpMsequential_288_lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ы
3sequential_288/lstm_866/while/lstm_cell_866/BiasAddBiasAdd3sequential_288/lstm_866/while/lstm_cell_866/add:z:0Jsequential_288/lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (}
;sequential_288/lstm_866/while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_288/lstm_866/while/lstm_cell_866/splitSplitDsequential_288/lstm_866/while/lstm_cell_866/split/split_dim:output:0<sequential_288/lstm_866/while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitг
3sequential_288/lstm_866/while/lstm_cell_866/SigmoidSigmoid:sequential_288/lstm_866/while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
«
5sequential_288/lstm_866/while/lstm_cell_866/Sigmoid_1Sigmoid:sequential_288/lstm_866/while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
л
/sequential_288/lstm_866/while/lstm_cell_866/mulMul9sequential_288/lstm_866/while/lstm_cell_866/Sigmoid_1:y:0+sequential_288_lstm_866_while_placeholder_3*
T0*'
_output_shapes
:         
д
0sequential_288/lstm_866/while/lstm_cell_866/ReluRelu:sequential_288/lstm_866/while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
с
1sequential_288/lstm_866/while/lstm_cell_866/mul_1Mul7sequential_288/lstm_866/while/lstm_cell_866/Sigmoid:y:0>sequential_288/lstm_866/while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
п
1sequential_288/lstm_866/while/lstm_cell_866/add_1AddV23sequential_288/lstm_866/while/lstm_cell_866/mul:z:05sequential_288/lstm_866/while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
«
5sequential_288/lstm_866/while/lstm_cell_866/Sigmoid_2Sigmoid:sequential_288/lstm_866/while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
Б
2sequential_288/lstm_866/while/lstm_cell_866/Relu_1Relu5sequential_288/lstm_866/while/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
у
1sequential_288/lstm_866/while/lstm_cell_866/mul_2Mul9sequential_288/lstm_866/while/lstm_cell_866/Sigmoid_2:y:0@sequential_288/lstm_866/while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
д
Bsequential_288/lstm_866/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_288_lstm_866_while_placeholder_1)sequential_288_lstm_866_while_placeholder5sequential_288/lstm_866/while/lstm_cell_866/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_288/lstm_866/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_288/lstm_866/while/addAddV2)sequential_288_lstm_866_while_placeholder,sequential_288/lstm_866/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_288/lstm_866/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_288/lstm_866/while/add_1AddV2Hsequential_288_lstm_866_while_sequential_288_lstm_866_while_loop_counter.sequential_288/lstm_866/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_288/lstm_866/while/IdentityIdentity'sequential_288/lstm_866/while/add_1:z:0#^sequential_288/lstm_866/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_288/lstm_866/while/Identity_1IdentityNsequential_288_lstm_866_while_sequential_288_lstm_866_while_maximum_iterations#^sequential_288/lstm_866/while/NoOp*
T0*
_output_shapes
: А
(sequential_288/lstm_866/while/Identity_2Identity%sequential_288/lstm_866/while/add:z:0#^sequential_288/lstm_866/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_288/lstm_866/while/Identity_3IdentityRsequential_288/lstm_866/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_288/lstm_866/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_288/lstm_866/while/Identity_4Identity5sequential_288/lstm_866/while/lstm_cell_866/mul_2:z:0#^sequential_288/lstm_866/while/NoOp*
T0*'
_output_shapes
:         
┬
(sequential_288/lstm_866/while/Identity_5Identity5sequential_288/lstm_866/while/lstm_cell_866/add_1:z:0#^sequential_288/lstm_866/while/NoOp*
T0*'
_output_shapes
:         
│
"sequential_288/lstm_866/while/NoOpNoOpC^sequential_288/lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpB^sequential_288/lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpD^sequential_288/lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_288_lstm_866_while_identity/sequential_288/lstm_866/while/Identity:output:0"]
(sequential_288_lstm_866_while_identity_11sequential_288/lstm_866/while/Identity_1:output:0"]
(sequential_288_lstm_866_while_identity_21sequential_288/lstm_866/while/Identity_2:output:0"]
(sequential_288_lstm_866_while_identity_31sequential_288/lstm_866/while/Identity_3:output:0"]
(sequential_288_lstm_866_while_identity_41sequential_288/lstm_866/while/Identity_4:output:0"]
(sequential_288_lstm_866_while_identity_51sequential_288/lstm_866/while/Identity_5:output:0"ю
Ksequential_288_lstm_866_while_lstm_cell_866_biasadd_readvariableop_resourceMsequential_288_lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0"ъ
Lsequential_288_lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resourceNsequential_288_lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0"џ
Jsequential_288_lstm_866_while_lstm_cell_866_matmul_readvariableop_resourceLsequential_288_lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0"љ
Esequential_288_lstm_866_while_sequential_288_lstm_866_strided_slice_1Gsequential_288_lstm_866_while_sequential_288_lstm_866_strided_slice_1_0"і
Ђsequential_288_lstm_866_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_866_tensorarrayunstack_tensorlistfromtensorЃsequential_288_lstm_866_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_866_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2ѕ
Bsequential_288/lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpBsequential_288/lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp2є
Asequential_288/lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpAsequential_288/lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp2і
Csequential_288/lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOpCsequential_288/lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
м
ч
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176305

inputs#
lstm_864_5175981:	љ#
lstm_864_5175983:	dљ
lstm_864_5175985:	љ#
lstm_865_5176131:	d╚#
lstm_865_5176133:	2╚
lstm_865_5176135:	╚"
lstm_866_5176281:2("
lstm_866_5176283:
(
lstm_866_5176285:(#
dense_288_5176299:

dense_288_5176301:
identityѕб!dense_288/StatefulPartitionedCallб lstm_864/StatefulPartitionedCallб lstm_865/StatefulPartitionedCallб lstm_866/StatefulPartitionedCallІ
 lstm_864/StatefulPartitionedCallStatefulPartitionedCallinputslstm_864_5175981lstm_864_5175983lstm_864_5175985*
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5175980«
 lstm_865/StatefulPartitionedCallStatefulPartitionedCall)lstm_864/StatefulPartitionedCall:output:0lstm_865_5176131lstm_865_5176133lstm_865_5176135*
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176130ф
 lstm_866/StatefulPartitionedCallStatefulPartitionedCall)lstm_865/StatefulPartitionedCall:output:0lstm_866_5176281lstm_866_5176283lstm_866_5176285*
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176280џ
!dense_288/StatefulPartitionedCallStatefulPartitionedCall)lstm_866/StatefulPartitionedCall:output:0dense_288_5176299dense_288_5176301*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_288_layer_call_and_return_conditional_losses_5176298y
IdentityIdentity*dense_288/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_288/StatefulPartitionedCall!^lstm_864/StatefulPartitionedCall!^lstm_865/StatefulPartitionedCall!^lstm_866/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_288/StatefulPartitionedCall!dense_288/StatefulPartitionedCall2D
 lstm_864/StatefulPartitionedCall lstm_864/StatefulPartitionedCall2D
 lstm_865/StatefulPartitionedCall lstm_865/StatefulPartitionedCall2D
 lstm_866/StatefulPartitionedCall lstm_866/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5179882

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
║
╚
while_cond_5179712
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5179712___redundant_placeholder05
1while_while_cond_5179712___redundant_placeholder15
1while_while_cond_5179712___redundant_placeholder25
1while_while_cond_5179712___redundant_placeholder3
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
/__inference_lstm_cell_865_layer_call_fn_5179948

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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175344o
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
ЬW
Ц
 __inference__traced_save_5180253
file_prefix/
+savev2_dense_288_kernel_read_readvariableop-
)savev2_dense_288_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_864_lstm_cell_864_kernel_read_readvariableopF
Bsavev2_lstm_864_lstm_cell_864_recurrent_kernel_read_readvariableop:
6savev2_lstm_864_lstm_cell_864_bias_read_readvariableop<
8savev2_lstm_865_lstm_cell_865_kernel_read_readvariableopF
Bsavev2_lstm_865_lstm_cell_865_recurrent_kernel_read_readvariableop:
6savev2_lstm_865_lstm_cell_865_bias_read_readvariableop<
8savev2_lstm_866_lstm_cell_866_kernel_read_readvariableopF
Bsavev2_lstm_866_lstm_cell_866_recurrent_kernel_read_readvariableop:
6savev2_lstm_866_lstm_cell_866_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_288_kernel_m_read_readvariableop4
0savev2_adam_dense_288_bias_m_read_readvariableopC
?savev2_adam_lstm_864_lstm_cell_864_kernel_m_read_readvariableopM
Isavev2_adam_lstm_864_lstm_cell_864_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_864_lstm_cell_864_bias_m_read_readvariableopC
?savev2_adam_lstm_865_lstm_cell_865_kernel_m_read_readvariableopM
Isavev2_adam_lstm_865_lstm_cell_865_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_865_lstm_cell_865_bias_m_read_readvariableopC
?savev2_adam_lstm_866_lstm_cell_866_kernel_m_read_readvariableopM
Isavev2_adam_lstm_866_lstm_cell_866_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_866_lstm_cell_866_bias_m_read_readvariableop6
2savev2_adam_dense_288_kernel_v_read_readvariableop4
0savev2_adam_dense_288_bias_v_read_readvariableopC
?savev2_adam_lstm_864_lstm_cell_864_kernel_v_read_readvariableopM
Isavev2_adam_lstm_864_lstm_cell_864_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_864_lstm_cell_864_bias_v_read_readvariableopC
?savev2_adam_lstm_865_lstm_cell_865_kernel_v_read_readvariableopM
Isavev2_adam_lstm_865_lstm_cell_865_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_865_lstm_cell_865_bias_v_read_readvariableopC
?savev2_adam_lstm_866_lstm_cell_866_kernel_v_read_readvariableopM
Isavev2_adam_lstm_866_lstm_cell_866_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_866_lstm_cell_866_bias_v_read_readvariableop
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
value\BZ)B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_288_kernel_read_readvariableop)savev2_dense_288_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_864_lstm_cell_864_kernel_read_readvariableopBsavev2_lstm_864_lstm_cell_864_recurrent_kernel_read_readvariableop6savev2_lstm_864_lstm_cell_864_bias_read_readvariableop8savev2_lstm_865_lstm_cell_865_kernel_read_readvariableopBsavev2_lstm_865_lstm_cell_865_recurrent_kernel_read_readvariableop6savev2_lstm_865_lstm_cell_865_bias_read_readvariableop8savev2_lstm_866_lstm_cell_866_kernel_read_readvariableopBsavev2_lstm_866_lstm_cell_866_recurrent_kernel_read_readvariableop6savev2_lstm_866_lstm_cell_866_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_288_kernel_m_read_readvariableop0savev2_adam_dense_288_bias_m_read_readvariableop?savev2_adam_lstm_864_lstm_cell_864_kernel_m_read_readvariableopIsavev2_adam_lstm_864_lstm_cell_864_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_864_lstm_cell_864_bias_m_read_readvariableop?savev2_adam_lstm_865_lstm_cell_865_kernel_m_read_readvariableopIsavev2_adam_lstm_865_lstm_cell_865_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_865_lstm_cell_865_bias_m_read_readvariableop?savev2_adam_lstm_866_lstm_cell_866_kernel_m_read_readvariableopIsavev2_adam_lstm_866_lstm_cell_866_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_866_lstm_cell_866_bias_m_read_readvariableop2savev2_adam_dense_288_kernel_v_read_readvariableop0savev2_adam_dense_288_bias_v_read_readvariableop?savev2_adam_lstm_864_lstm_cell_864_kernel_v_read_readvariableopIsavev2_adam_lstm_864_lstm_cell_864_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_864_lstm_cell_864_bias_v_read_readvariableop?savev2_adam_lstm_865_lstm_cell_865_kernel_v_read_readvariableopIsavev2_adam_lstm_865_lstm_cell_865_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_865_lstm_cell_865_bias_v_read_readvariableop?savev2_adam_lstm_866_lstm_cell_866_kernel_v_read_readvariableopIsavev2_adam_lstm_866_lstm_cell_866_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_866_lstm_cell_866_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
чT
я
*sequential_288_lstm_865_while_body_5174552L
Hsequential_288_lstm_865_while_sequential_288_lstm_865_while_loop_counterR
Nsequential_288_lstm_865_while_sequential_288_lstm_865_while_maximum_iterations-
)sequential_288_lstm_865_while_placeholder/
+sequential_288_lstm_865_while_placeholder_1/
+sequential_288_lstm_865_while_placeholder_2/
+sequential_288_lstm_865_while_placeholder_3K
Gsequential_288_lstm_865_while_sequential_288_lstm_865_strided_slice_1_0ѕ
Ѓsequential_288_lstm_865_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_865_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_288_lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0:	d╚a
Nsequential_288_lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0:	2╚\
Msequential_288_lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0:	╚*
&sequential_288_lstm_865_while_identity,
(sequential_288_lstm_865_while_identity_1,
(sequential_288_lstm_865_while_identity_2,
(sequential_288_lstm_865_while_identity_3,
(sequential_288_lstm_865_while_identity_4,
(sequential_288_lstm_865_while_identity_5I
Esequential_288_lstm_865_while_sequential_288_lstm_865_strided_slice_1є
Ђsequential_288_lstm_865_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_865_tensorarrayunstack_tensorlistfromtensor]
Jsequential_288_lstm_865_while_lstm_cell_865_matmul_readvariableop_resource:	d╚_
Lsequential_288_lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource:	2╚Z
Ksequential_288_lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource:	╚ѕбBsequential_288/lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpбAsequential_288/lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpбCsequential_288/lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOpа
Osequential_288/lstm_865/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ъ
Asequential_288/lstm_865/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_288_lstm_865_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_865_tensorarrayunstack_tensorlistfromtensor_0)sequential_288_lstm_865_while_placeholderXsequential_288/lstm_865/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0¤
Asequential_288/lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpReadVariableOpLsequential_288_lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0ё
2sequential_288/lstm_865/while/lstm_cell_865/MatMulMatMulHsequential_288/lstm_865/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_288/lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚М
Csequential_288/lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOpNsequential_288_lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0в
4sequential_288/lstm_865/while/lstm_cell_865/MatMul_1MatMul+sequential_288_lstm_865_while_placeholder_2Ksequential_288/lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ж
/sequential_288/lstm_865/while/lstm_cell_865/addAddV2<sequential_288/lstm_865/while/lstm_cell_865/MatMul:product:0>sequential_288/lstm_865/while/lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚═
Bsequential_288/lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOpMsequential_288_lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0Ы
3sequential_288/lstm_865/while/lstm_cell_865/BiasAddBiasAdd3sequential_288/lstm_865/while/lstm_cell_865/add:z:0Jsequential_288/lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚}
;sequential_288/lstm_865/while/lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_288/lstm_865/while/lstm_cell_865/splitSplitDsequential_288/lstm_865/while/lstm_cell_865/split/split_dim:output:0<sequential_288/lstm_865/while/lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitг
3sequential_288/lstm_865/while/lstm_cell_865/SigmoidSigmoid:sequential_288/lstm_865/while/lstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2«
5sequential_288/lstm_865/while/lstm_cell_865/Sigmoid_1Sigmoid:sequential_288/lstm_865/while/lstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2л
/sequential_288/lstm_865/while/lstm_cell_865/mulMul9sequential_288/lstm_865/while/lstm_cell_865/Sigmoid_1:y:0+sequential_288_lstm_865_while_placeholder_3*
T0*'
_output_shapes
:         2д
0sequential_288/lstm_865/while/lstm_cell_865/ReluRelu:sequential_288/lstm_865/while/lstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2с
1sequential_288/lstm_865/while/lstm_cell_865/mul_1Mul7sequential_288/lstm_865/while/lstm_cell_865/Sigmoid:y:0>sequential_288/lstm_865/while/lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2п
1sequential_288/lstm_865/while/lstm_cell_865/add_1AddV23sequential_288/lstm_865/while/lstm_cell_865/mul:z:05sequential_288/lstm_865/while/lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2«
5sequential_288/lstm_865/while/lstm_cell_865/Sigmoid_2Sigmoid:sequential_288/lstm_865/while/lstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2Б
2sequential_288/lstm_865/while/lstm_cell_865/Relu_1Relu5sequential_288/lstm_865/while/lstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2у
1sequential_288/lstm_865/while/lstm_cell_865/mul_2Mul9sequential_288/lstm_865/while/lstm_cell_865/Sigmoid_2:y:0@sequential_288/lstm_865/while/lstm_cell_865/Relu_1:activations:0*
T0*'
_output_shapes
:         2д
Bsequential_288/lstm_865/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_288_lstm_865_while_placeholder_1)sequential_288_lstm_865_while_placeholder5sequential_288/lstm_865/while/lstm_cell_865/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_288/lstm_865/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_288/lstm_865/while/addAddV2)sequential_288_lstm_865_while_placeholder,sequential_288/lstm_865/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_288/lstm_865/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_288/lstm_865/while/add_1AddV2Hsequential_288_lstm_865_while_sequential_288_lstm_865_while_loop_counter.sequential_288/lstm_865/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_288/lstm_865/while/IdentityIdentity'sequential_288/lstm_865/while/add_1:z:0#^sequential_288/lstm_865/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_288/lstm_865/while/Identity_1IdentityNsequential_288_lstm_865_while_sequential_288_lstm_865_while_maximum_iterations#^sequential_288/lstm_865/while/NoOp*
T0*
_output_shapes
: А
(sequential_288/lstm_865/while/Identity_2Identity%sequential_288/lstm_865/while/add:z:0#^sequential_288/lstm_865/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_288/lstm_865/while/Identity_3IdentityRsequential_288/lstm_865/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_288/lstm_865/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_288/lstm_865/while/Identity_4Identity5sequential_288/lstm_865/while/lstm_cell_865/mul_2:z:0#^sequential_288/lstm_865/while/NoOp*
T0*'
_output_shapes
:         2┬
(sequential_288/lstm_865/while/Identity_5Identity5sequential_288/lstm_865/while/lstm_cell_865/add_1:z:0#^sequential_288/lstm_865/while/NoOp*
T0*'
_output_shapes
:         2│
"sequential_288/lstm_865/while/NoOpNoOpC^sequential_288/lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpB^sequential_288/lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpD^sequential_288/lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_288_lstm_865_while_identity/sequential_288/lstm_865/while/Identity:output:0"]
(sequential_288_lstm_865_while_identity_11sequential_288/lstm_865/while/Identity_1:output:0"]
(sequential_288_lstm_865_while_identity_21sequential_288/lstm_865/while/Identity_2:output:0"]
(sequential_288_lstm_865_while_identity_31sequential_288/lstm_865/while/Identity_3:output:0"]
(sequential_288_lstm_865_while_identity_41sequential_288/lstm_865/while/Identity_4:output:0"]
(sequential_288_lstm_865_while_identity_51sequential_288/lstm_865/while/Identity_5:output:0"ю
Ksequential_288_lstm_865_while_lstm_cell_865_biasadd_readvariableop_resourceMsequential_288_lstm_865_while_lstm_cell_865_biasadd_readvariableop_resource_0"ъ
Lsequential_288_lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resourceNsequential_288_lstm_865_while_lstm_cell_865_matmul_1_readvariableop_resource_0"џ
Jsequential_288_lstm_865_while_lstm_cell_865_matmul_readvariableop_resourceLsequential_288_lstm_865_while_lstm_cell_865_matmul_readvariableop_resource_0"љ
Esequential_288_lstm_865_while_sequential_288_lstm_865_strided_slice_1Gsequential_288_lstm_865_while_sequential_288_lstm_865_strided_slice_1_0"і
Ђsequential_288_lstm_865_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_865_tensorarrayunstack_tensorlistfromtensorЃsequential_288_lstm_865_while_tensorarrayv2read_tensorlistgetitem_sequential_288_lstm_865_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2ѕ
Bsequential_288/lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOpBsequential_288/lstm_865/while/lstm_cell_865/BiasAdd/ReadVariableOp2є
Asequential_288/lstm_865/while/lstm_cell_865/MatMul/ReadVariableOpAsequential_288/lstm_865/while/lstm_cell_865/MatMul/ReadVariableOp2і
Csequential_288/lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOpCsequential_288/lstm_865/while/lstm_cell_865/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178565

inputs?
,lstm_cell_864_matmul_readvariableop_resource:	љA
.lstm_cell_864_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_864_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_864/BiasAdd/ReadVariableOpб#lstm_cell_864/MatMul/ReadVariableOpб%lstm_cell_864/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_864/MatMul/ReadVariableOpReadVariableOp,lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_864/MatMulMatMulstrided_slice_2:output:0+lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_864/MatMul_1MatMulzeros:output:0-lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_864/addAddV2lstm_cell_864/MatMul:product:0 lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_864/BiasAddBiasAddlstm_cell_864/add:z:0,lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_864/splitSplit&lstm_cell_864/split/split_dim:output:0lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_864/SigmoidSigmoidlstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_1Sigmoidlstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_864/mulMullstm_cell_864/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_864/ReluRelulstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_864/mul_1Mullstm_cell_864/Sigmoid:y:0 lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_864/add_1AddV2lstm_cell_864/mul:z:0lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_2Sigmoidlstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_864/Relu_1Relulstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_864/mul_2Mullstm_cell_864/Sigmoid_2:y:0"lstm_cell_864/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_864_matmul_readvariableop_resource.lstm_cell_864_matmul_1_readvariableop_resource-lstm_cell_864_biasadd_readvariableop_resource*
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
while_body_5178481*
condR
while_cond_5178480*K
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
NoOpNoOp%^lstm_cell_864/BiasAdd/ReadVariableOp$^lstm_cell_864/MatMul/ReadVariableOp&^lstm_cell_864/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_864/BiasAdd/ReadVariableOp$lstm_cell_864/BiasAdd/ReadVariableOp2J
#lstm_cell_864/MatMul/ReadVariableOp#lstm_cell_864/MatMul/ReadVariableOp2N
%lstm_cell_864/MatMul_1/ReadVariableOp%lstm_cell_864/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ј#
ы
while_body_5175053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_864_5175077_0:	љ0
while_lstm_cell_864_5175079_0:	dљ,
while_lstm_cell_864_5175081_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_864_5175077:	љ.
while_lstm_cell_864_5175079:	dљ*
while_lstm_cell_864_5175081:	љѕб+while/lstm_cell_864/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_864/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_864_5175077_0while_lstm_cell_864_5175079_0while_lstm_cell_864_5175081_0*
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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174994П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_864/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_864/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_864/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_864/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_864_5175077while_lstm_cell_864_5175077_0"<
while_lstm_cell_864_5175079while_lstm_cell_864_5175079_0"<
while_lstm_cell_864_5175081while_lstm_cell_864_5175081_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_864/StatefulPartitionedCall+while/lstm_cell_864/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5179038

inputs?
,lstm_cell_865_matmul_readvariableop_resource:	d╚A
.lstm_cell_865_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_865_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_865/BiasAdd/ReadVariableOpб#lstm_cell_865/MatMul/ReadVariableOpб%lstm_cell_865/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_865/MatMul/ReadVariableOpReadVariableOp,lstm_cell_865_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_865/MatMulMatMulstrided_slice_2:output:0+lstm_cell_865/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_865/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_865_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_865/MatMul_1MatMulzeros:output:0-lstm_cell_865/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_865/addAddV2lstm_cell_865/MatMul:product:0 lstm_cell_865/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_865/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_865_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_865/BiasAddBiasAddlstm_cell_865/add:z:0,lstm_cell_865/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_865/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_865/splitSplit&lstm_cell_865/split/split_dim:output:0lstm_cell_865/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_865/SigmoidSigmoidlstm_cell_865/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_1Sigmoidlstm_cell_865/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_865/mulMullstm_cell_865/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_865/ReluRelulstm_cell_865/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_865/mul_1Mullstm_cell_865/Sigmoid:y:0 lstm_cell_865/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_865/add_1AddV2lstm_cell_865/mul:z:0lstm_cell_865/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_865/Sigmoid_2Sigmoidlstm_cell_865/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_865/Relu_1Relulstm_cell_865/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_865/mul_2Mullstm_cell_865/Sigmoid_2:y:0"lstm_cell_865/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_865_matmul_readvariableop_resource.lstm_cell_865_matmul_1_readvariableop_resource-lstm_cell_865_biasadd_readvariableop_resource*
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
while_body_5178954*
condR
while_cond_5178953*K
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
NoOpNoOp%^lstm_cell_865/BiasAdd/ReadVariableOp$^lstm_cell_865/MatMul/ReadVariableOp&^lstm_cell_865/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_865/BiasAdd/ReadVariableOp$lstm_cell_865/BiasAdd/ReadVariableOp2J
#lstm_cell_865/MatMul/ReadVariableOp#lstm_cell_865/MatMul/ReadVariableOp2N
%lstm_cell_865/MatMul_1/ReadVariableOp%lstm_cell_865/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
и

Ч
lstm_866_while_cond_5177431.
*lstm_866_while_lstm_866_while_loop_counter4
0lstm_866_while_lstm_866_while_maximum_iterations
lstm_866_while_placeholder 
lstm_866_while_placeholder_1 
lstm_866_while_placeholder_2 
lstm_866_while_placeholder_30
,lstm_866_while_less_lstm_866_strided_slice_1G
Clstm_866_while_lstm_866_while_cond_5177431___redundant_placeholder0G
Clstm_866_while_lstm_866_while_cond_5177431___redundant_placeholder1G
Clstm_866_while_lstm_866_while_cond_5177431___redundant_placeholder2G
Clstm_866_while_lstm_866_while_cond_5177431___redundant_placeholder3
lstm_866_while_identity
є
lstm_866/while/LessLesslstm_866_while_placeholder,lstm_866_while_less_lstm_866_strided_slice_1*
T0*
_output_shapes
: ]
lstm_866/while/IdentityIdentitylstm_866/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_866_while_identity lstm_866/while/Identity:output:0*(
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
АC
Щ

lstm_864_while_body_5177581.
*lstm_864_while_lstm_864_while_loop_counter4
0lstm_864_while_lstm_864_while_maximum_iterations
lstm_864_while_placeholder 
lstm_864_while_placeholder_1 
lstm_864_while_placeholder_2 
lstm_864_while_placeholder_3-
)lstm_864_while_lstm_864_strided_slice_1_0i
elstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0:	љR
?lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљM
>lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
lstm_864_while_identity
lstm_864_while_identity_1
lstm_864_while_identity_2
lstm_864_while_identity_3
lstm_864_while_identity_4
lstm_864_while_identity_5+
'lstm_864_while_lstm_864_strided_slice_1g
clstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensorN
;lstm_864_while_lstm_cell_864_matmul_readvariableop_resource:	љP
=lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource:	dљK
<lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpб2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpб4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOpЉ
@lstm_864/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_864/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensor_0lstm_864_while_placeholderIlstm_864/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp=lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_864/while/lstm_cell_864/MatMulMatMul9lstm_864/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp?lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_864/while/lstm_cell_864/MatMul_1MatMullstm_864_while_placeholder_2<lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_864/while/lstm_cell_864/addAddV2-lstm_864/while/lstm_cell_864/MatMul:product:0/lstm_864/while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp>lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_864/while/lstm_cell_864/BiasAddBiasAdd$lstm_864/while/lstm_cell_864/add:z:0;lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_864/while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_864/while/lstm_cell_864/splitSplit5lstm_864/while/lstm_cell_864/split/split_dim:output:0-lstm_864/while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_864/while/lstm_cell_864/SigmoidSigmoid+lstm_864/while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_864/while/lstm_cell_864/Sigmoid_1Sigmoid+lstm_864/while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_864/while/lstm_cell_864/mulMul*lstm_864/while/lstm_cell_864/Sigmoid_1:y:0lstm_864_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_864/while/lstm_cell_864/ReluRelu+lstm_864/while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_864/while/lstm_cell_864/mul_1Mul(lstm_864/while/lstm_cell_864/Sigmoid:y:0/lstm_864/while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_864/while/lstm_cell_864/add_1AddV2$lstm_864/while/lstm_cell_864/mul:z:0&lstm_864/while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_864/while/lstm_cell_864/Sigmoid_2Sigmoid+lstm_864/while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_864/while/lstm_cell_864/Relu_1Relu&lstm_864/while/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_864/while/lstm_cell_864/mul_2Mul*lstm_864/while/lstm_cell_864/Sigmoid_2:y:01lstm_864/while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_864/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_864_while_placeholder_1lstm_864_while_placeholder&lstm_864/while/lstm_cell_864/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_864/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_864/while/addAddV2lstm_864_while_placeholderlstm_864/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_864/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_864/while/add_1AddV2*lstm_864_while_lstm_864_while_loop_counterlstm_864/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_864/while/IdentityIdentitylstm_864/while/add_1:z:0^lstm_864/while/NoOp*
T0*
_output_shapes
: ј
lstm_864/while/Identity_1Identity0lstm_864_while_lstm_864_while_maximum_iterations^lstm_864/while/NoOp*
T0*
_output_shapes
: t
lstm_864/while/Identity_2Identitylstm_864/while/add:z:0^lstm_864/while/NoOp*
T0*
_output_shapes
: А
lstm_864/while/Identity_3IdentityClstm_864/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_864/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_864/while/Identity_4Identity&lstm_864/while/lstm_cell_864/mul_2:z:0^lstm_864/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_864/while/Identity_5Identity&lstm_864/while/lstm_cell_864/add_1:z:0^lstm_864/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_864/while/NoOpNoOp4^lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp3^lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp5^lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_864_while_identity lstm_864/while/Identity:output:0"?
lstm_864_while_identity_1"lstm_864/while/Identity_1:output:0"?
lstm_864_while_identity_2"lstm_864/while/Identity_2:output:0"?
lstm_864_while_identity_3"lstm_864/while/Identity_3:output:0"?
lstm_864_while_identity_4"lstm_864/while/Identity_4:output:0"?
lstm_864_while_identity_5"lstm_864/while/Identity_5:output:0"T
'lstm_864_while_lstm_864_strided_slice_1)lstm_864_while_lstm_864_strided_slice_1_0"~
<lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource>lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0"ђ
=lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource?lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0"|
;lstm_864_while_lstm_cell_864_matmul_readvariableop_resource=lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0"╠
clstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensorelstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp2h
2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp2l
4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5179283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5179283___redundant_placeholder05
1while_while_cond_5179283___redundant_placeholder15
1while_while_cond_5179283___redundant_placeholder25
1while_while_cond_5179283___redundant_placeholder3
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179511
inputs_0>
,lstm_cell_866_matmul_readvariableop_resource:2(@
.lstm_cell_866_matmul_1_readvariableop_resource:
(;
-lstm_cell_866_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_866/BiasAdd/ReadVariableOpб#lstm_cell_866/MatMul/ReadVariableOpб%lstm_cell_866/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_866/MatMul/ReadVariableOpReadVariableOp,lstm_cell_866_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_866/MatMulMatMulstrided_slice_2:output:0+lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_866_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_866/MatMul_1MatMulzeros:output:0-lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_866/addAddV2lstm_cell_866/MatMul:product:0 lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_866_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_866/BiasAddBiasAddlstm_cell_866/add:z:0,lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_866/splitSplit&lstm_cell_866/split/split_dim:output:0lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_866/SigmoidSigmoidlstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_1Sigmoidlstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_866/mulMullstm_cell_866/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_866/ReluRelulstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_866/mul_1Mullstm_cell_866/Sigmoid:y:0 lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_866/add_1AddV2lstm_cell_866/mul:z:0lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_866/Sigmoid_2Sigmoidlstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_866/Relu_1Relulstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_866/mul_2Mullstm_cell_866/Sigmoid_2:y:0"lstm_cell_866/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_866_matmul_readvariableop_resource.lstm_cell_866_matmul_1_readvariableop_resource-lstm_cell_866_biasadd_readvariableop_resource*
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
while_body_5179427*
condR
while_cond_5179426*K
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
NoOpNoOp%^lstm_cell_866/BiasAdd/ReadVariableOp$^lstm_cell_866/MatMul/ReadVariableOp&^lstm_cell_866/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_866/BiasAdd/ReadVariableOp$lstm_cell_866/BiasAdd/ReadVariableOp2J
#lstm_cell_866/MatMul/ReadVariableOp#lstm_cell_866/MatMul/ReadVariableOp2N
%lstm_cell_866/MatMul_1/ReadVariableOp%lstm_cell_866/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
О
є
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174848

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
О
є
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174994

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
║
╚
while_cond_5178810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5178810___redundant_placeholder05
1while_while_cond_5178810___redundant_placeholder15
1while_while_cond_5178810___redundant_placeholder25
1while_while_cond_5178810___redundant_placeholder3
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
Ј#
ы
while_body_5175403
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_865_5175427_0:	d╚0
while_lstm_cell_865_5175429_0:	2╚,
while_lstm_cell_865_5175431_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_865_5175427:	d╚.
while_lstm_cell_865_5175429:	2╚*
while_lstm_cell_865_5175431:	╚ѕб+while/lstm_cell_865/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_865/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_865_5175427_0while_lstm_cell_865_5175429_0while_lstm_cell_865_5175431_0*
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175344П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_865/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_865/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_865/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_865/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_865_5175427while_lstm_cell_865_5175427_0"<
while_lstm_cell_865_5175429while_lstm_cell_865_5175429_0"<
while_lstm_cell_865_5175431while_lstm_cell_865_5175431_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_865/StatefulPartitionedCall+while/lstm_cell_865/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_cond_5178953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5178953___redundant_placeholder05
1while_while_cond_5178953___redundant_placeholder15
1while_while_cond_5178953___redundant_placeholder25
1while_while_cond_5178953___redundant_placeholder3
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
ћC
З

lstm_866_while_body_5177432.
*lstm_866_while_lstm_866_while_loop_counter4
0lstm_866_while_lstm_866_while_maximum_iterations
lstm_866_while_placeholder 
lstm_866_while_placeholder_1 
lstm_866_while_placeholder_2 
lstm_866_while_placeholder_3-
)lstm_866_while_lstm_866_strided_slice_1_0i
elstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0:2(Q
?lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0:
(L
>lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0:(
lstm_866_while_identity
lstm_866_while_identity_1
lstm_866_while_identity_2
lstm_866_while_identity_3
lstm_866_while_identity_4
lstm_866_while_identity_5+
'lstm_866_while_lstm_866_strided_slice_1g
clstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensorM
;lstm_866_while_lstm_cell_866_matmul_readvariableop_resource:2(O
=lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource:
(J
<lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource:(ѕб3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpб2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpб4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOpЉ
@lstm_866/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_866/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensor_0lstm_866_while_placeholderIlstm_866/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOpReadVariableOp=lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_866/while/lstm_cell_866/MatMulMatMul9lstm_866/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOpReadVariableOp?lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_866/while/lstm_cell_866/MatMul_1MatMullstm_866_while_placeholder_2<lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_866/while/lstm_cell_866/addAddV2-lstm_866/while/lstm_cell_866/MatMul:product:0/lstm_866/while/lstm_cell_866/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOpReadVariableOp>lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_866/while/lstm_cell_866/BiasAddBiasAdd$lstm_866/while/lstm_cell_866/add:z:0;lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_866/while/lstm_cell_866/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_866/while/lstm_cell_866/splitSplit5lstm_866/while/lstm_cell_866/split/split_dim:output:0-lstm_866/while/lstm_cell_866/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_866/while/lstm_cell_866/SigmoidSigmoid+lstm_866/while/lstm_cell_866/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_866/while/lstm_cell_866/Sigmoid_1Sigmoid+lstm_866/while/lstm_cell_866/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_866/while/lstm_cell_866/mulMul*lstm_866/while/lstm_cell_866/Sigmoid_1:y:0lstm_866_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_866/while/lstm_cell_866/ReluRelu+lstm_866/while/lstm_cell_866/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_866/while/lstm_cell_866/mul_1Mul(lstm_866/while/lstm_cell_866/Sigmoid:y:0/lstm_866/while/lstm_cell_866/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_866/while/lstm_cell_866/add_1AddV2$lstm_866/while/lstm_cell_866/mul:z:0&lstm_866/while/lstm_cell_866/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_866/while/lstm_cell_866/Sigmoid_2Sigmoid+lstm_866/while/lstm_cell_866/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_866/while/lstm_cell_866/Relu_1Relu&lstm_866/while/lstm_cell_866/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_866/while/lstm_cell_866/mul_2Mul*lstm_866/while/lstm_cell_866/Sigmoid_2:y:01lstm_866/while/lstm_cell_866/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_866/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_866_while_placeholder_1lstm_866_while_placeholder&lstm_866/while/lstm_cell_866/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_866/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_866/while/addAddV2lstm_866_while_placeholderlstm_866/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_866/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_866/while/add_1AddV2*lstm_866_while_lstm_866_while_loop_counterlstm_866/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_866/while/IdentityIdentitylstm_866/while/add_1:z:0^lstm_866/while/NoOp*
T0*
_output_shapes
: ј
lstm_866/while/Identity_1Identity0lstm_866_while_lstm_866_while_maximum_iterations^lstm_866/while/NoOp*
T0*
_output_shapes
: t
lstm_866/while/Identity_2Identitylstm_866/while/add:z:0^lstm_866/while/NoOp*
T0*
_output_shapes
: А
lstm_866/while/Identity_3IdentityClstm_866/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_866/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_866/while/Identity_4Identity&lstm_866/while/lstm_cell_866/mul_2:z:0^lstm_866/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_866/while/Identity_5Identity&lstm_866/while/lstm_cell_866/add_1:z:0^lstm_866/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_866/while/NoOpNoOp4^lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp3^lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp5^lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_866_while_identity lstm_866/while/Identity:output:0"?
lstm_866_while_identity_1"lstm_866/while/Identity_1:output:0"?
lstm_866_while_identity_2"lstm_866/while/Identity_2:output:0"?
lstm_866_while_identity_3"lstm_866/while/Identity_3:output:0"?
lstm_866_while_identity_4"lstm_866/while/Identity_4:output:0"?
lstm_866_while_identity_5"lstm_866/while/Identity_5:output:0"T
'lstm_866_while_lstm_866_strided_slice_1)lstm_866_while_lstm_866_strided_slice_1_0"~
<lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource>lstm_866_while_lstm_cell_866_biasadd_readvariableop_resource_0"ђ
=lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource?lstm_866_while_lstm_cell_866_matmul_1_readvariableop_resource_0"|
;lstm_866_while_lstm_cell_866_matmul_readvariableop_resource=lstm_866_while_lstm_cell_866_matmul_readvariableop_resource_0"╠
clstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensorelstm_866_while_tensorarrayv2read_tensorlistgetitem_lstm_866_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp3lstm_866/while/lstm_cell_866/BiasAdd/ReadVariableOp2h
2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp2lstm_866/while/lstm_cell_866/MatMul/ReadVariableOp2l
4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp4lstm_866/while/lstm_cell_866/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5175472

inputs(
lstm_cell_865_5175390:	d╚(
lstm_cell_865_5175392:	2╚$
lstm_cell_865_5175394:	╚
identityѕб%lstm_cell_865/StatefulPartitionedCallбwhile;
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
%lstm_cell_865/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_865_5175390lstm_cell_865_5175392lstm_cell_865_5175394*
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175344n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_865_5175390lstm_cell_865_5175392lstm_cell_865_5175394*
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
while_body_5175403*
condR
while_cond_5175402*K
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
NoOpNoOp&^lstm_cell_865/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_865/StatefulPartitionedCall%lstm_cell_865/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
и

Ч
lstm_864_while_cond_5177153.
*lstm_864_while_lstm_864_while_loop_counter4
0lstm_864_while_lstm_864_while_maximum_iterations
lstm_864_while_placeholder 
lstm_864_while_placeholder_1 
lstm_864_while_placeholder_2 
lstm_864_while_placeholder_30
,lstm_864_while_less_lstm_864_strided_slice_1G
Clstm_864_while_lstm_864_while_cond_5177153___redundant_placeholder0G
Clstm_864_while_lstm_864_while_cond_5177153___redundant_placeholder1G
Clstm_864_while_lstm_864_while_cond_5177153___redundant_placeholder2G
Clstm_864_while_lstm_864_while_cond_5177153___redundant_placeholder3
lstm_864_while_identity
є
lstm_864/while/LessLesslstm_864_while_placeholder,lstm_864_while_less_lstm_864_strided_slice_1*
T0*
_output_shapes
: ]
lstm_864/while/IdentityIdentitylstm_864/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_864_while_identity lstm_864/while/Identity:output:0*(
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
Г
╣
*__inference_lstm_864_layer_call_fn_5177971
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5175122|
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
О
є
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5175344

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
аK
Ц
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178136
inputs_0?
,lstm_cell_864_matmul_readvariableop_resource:	љA
.lstm_cell_864_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_864_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_864/BiasAdd/ReadVariableOpб#lstm_cell_864/MatMul/ReadVariableOpб%lstm_cell_864/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_864/MatMul/ReadVariableOpReadVariableOp,lstm_cell_864_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_864/MatMulMatMulstrided_slice_2:output:0+lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_864_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_864/MatMul_1MatMulzeros:output:0-lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_864/addAddV2lstm_cell_864/MatMul:product:0 lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_864_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_864/BiasAddBiasAddlstm_cell_864/add:z:0,lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_864/splitSplit&lstm_cell_864/split/split_dim:output:0lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_864/SigmoidSigmoidlstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_1Sigmoidlstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_864/mulMullstm_cell_864/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_864/ReluRelulstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_864/mul_1Mullstm_cell_864/Sigmoid:y:0 lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_864/add_1AddV2lstm_cell_864/mul:z:0lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_864/Sigmoid_2Sigmoidlstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_864/Relu_1Relulstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_864/mul_2Mullstm_cell_864/Sigmoid_2:y:0"lstm_cell_864/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_864_matmul_readvariableop_resource.lstm_cell_864_matmul_1_readvariableop_resource-lstm_cell_864_biasadd_readvariableop_resource*
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
while_body_5178052*
condR
while_cond_5178051*K
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
NoOpNoOp%^lstm_cell_864/BiasAdd/ReadVariableOp$^lstm_cell_864/MatMul/ReadVariableOp&^lstm_cell_864/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_864/BiasAdd/ReadVariableOp$lstm_cell_864/BiasAdd/ReadVariableOp2J
#lstm_cell_864/MatMul/ReadVariableOp#lstm_cell_864/MatMul/ReadVariableOp2N
%lstm_cell_864/MatMul_1/ReadVariableOp%lstm_cell_864/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
я

ю
0__inference_sequential_288_layer_call_fn_5177068

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
identityѕбStatefulPartitionedCallН
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176305o
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
»8
ј
E__inference_lstm_864_layer_call_and_return_conditional_losses_5174931

inputs(
lstm_cell_864_5174849:	љ(
lstm_cell_864_5174851:	dљ$
lstm_cell_864_5174853:	љ
identityѕб%lstm_cell_864/StatefulPartitionedCallбwhile;
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
%lstm_cell_864/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_864_5174849lstm_cell_864_5174851lstm_cell_864_5174853*
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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174848n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_864_5174849lstm_cell_864_5174851lstm_cell_864_5174853*
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
while_body_5174862*
condR
while_cond_5174861*K
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
NoOpNoOp&^lstm_cell_864/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_864/StatefulPartitionedCall%lstm_cell_864/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
к
ў
+__inference_dense_288_layer_call_fn_5179806

inputs
unknown:

	unknown_0:
identityѕбStatefulPartitionedCall█
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_288_layer_call_and_return_conditional_losses_5176298o
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
Ж
Ѓ
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176976
lstm_864_input#
lstm_864_5176949:	љ#
lstm_864_5176951:	dљ
lstm_864_5176953:	љ#
lstm_865_5176956:	d╚#
lstm_865_5176958:	2╚
lstm_865_5176960:	╚"
lstm_866_5176963:2("
lstm_866_5176965:
(
lstm_866_5176967:(#
dense_288_5176970:

dense_288_5176972:
identityѕб!dense_288/StatefulPartitionedCallб lstm_864/StatefulPartitionedCallб lstm_865/StatefulPartitionedCallб lstm_866/StatefulPartitionedCallЊ
 lstm_864/StatefulPartitionedCallStatefulPartitionedCalllstm_864_inputlstm_864_5176949lstm_864_5176951lstm_864_5176953*
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5175980«
 lstm_865/StatefulPartitionedCallStatefulPartitionedCall)lstm_864/StatefulPartitionedCall:output:0lstm_865_5176956lstm_865_5176958lstm_865_5176960*
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176130ф
 lstm_866/StatefulPartitionedCallStatefulPartitionedCall)lstm_865/StatefulPartitionedCall:output:0lstm_866_5176963lstm_866_5176965lstm_866_5176967*
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5176280џ
!dense_288/StatefulPartitionedCallStatefulPartitionedCall)lstm_866/StatefulPartitionedCall:output:0dense_288_5176970dense_288_5176972*
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
GPU 2J 8ѓ *O
fJRH
F__inference_dense_288_layer_call_and_return_conditional_losses_5176298y
IdentityIdentity*dense_288/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_288/StatefulPartitionedCall!^lstm_864/StatefulPartitionedCall!^lstm_865/StatefulPartitionedCall!^lstm_866/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_288/StatefulPartitionedCall!dense_288/StatefulPartitionedCall2D
 lstm_864/StatefulPartitionedCall lstm_864/StatefulPartitionedCall2D
 lstm_865/StatefulPartitionedCall lstm_865/StatefulPartitionedCall2D
 lstm_866/StatefulPartitionedCall lstm_866/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_864_input
АC
Щ

lstm_864_while_body_5177154.
*lstm_864_while_lstm_864_while_loop_counter4
0lstm_864_while_lstm_864_while_maximum_iterations
lstm_864_while_placeholder 
lstm_864_while_placeholder_1 
lstm_864_while_placeholder_2 
lstm_864_while_placeholder_3-
)lstm_864_while_lstm_864_strided_slice_1_0i
elstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0:	љR
?lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљM
>lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
lstm_864_while_identity
lstm_864_while_identity_1
lstm_864_while_identity_2
lstm_864_while_identity_3
lstm_864_while_identity_4
lstm_864_while_identity_5+
'lstm_864_while_lstm_864_strided_slice_1g
clstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensorN
;lstm_864_while_lstm_cell_864_matmul_readvariableop_resource:	љP
=lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource:	dљK
<lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpб2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpб4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOpЉ
@lstm_864/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_864/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensor_0lstm_864_while_placeholderIlstm_864/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp=lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_864/while/lstm_cell_864/MatMulMatMul9lstm_864/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp?lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_864/while/lstm_cell_864/MatMul_1MatMullstm_864_while_placeholder_2<lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_864/while/lstm_cell_864/addAddV2-lstm_864/while/lstm_cell_864/MatMul:product:0/lstm_864/while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp>lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_864/while/lstm_cell_864/BiasAddBiasAdd$lstm_864/while/lstm_cell_864/add:z:0;lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_864/while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_864/while/lstm_cell_864/splitSplit5lstm_864/while/lstm_cell_864/split/split_dim:output:0-lstm_864/while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_864/while/lstm_cell_864/SigmoidSigmoid+lstm_864/while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_864/while/lstm_cell_864/Sigmoid_1Sigmoid+lstm_864/while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_864/while/lstm_cell_864/mulMul*lstm_864/while/lstm_cell_864/Sigmoid_1:y:0lstm_864_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_864/while/lstm_cell_864/ReluRelu+lstm_864/while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_864/while/lstm_cell_864/mul_1Mul(lstm_864/while/lstm_cell_864/Sigmoid:y:0/lstm_864/while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_864/while/lstm_cell_864/add_1AddV2$lstm_864/while/lstm_cell_864/mul:z:0&lstm_864/while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_864/while/lstm_cell_864/Sigmoid_2Sigmoid+lstm_864/while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_864/while/lstm_cell_864/Relu_1Relu&lstm_864/while/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_864/while/lstm_cell_864/mul_2Mul*lstm_864/while/lstm_cell_864/Sigmoid_2:y:01lstm_864/while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_864/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_864_while_placeholder_1lstm_864_while_placeholder&lstm_864/while/lstm_cell_864/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_864/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_864/while/addAddV2lstm_864_while_placeholderlstm_864/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_864/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_864/while/add_1AddV2*lstm_864_while_lstm_864_while_loop_counterlstm_864/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_864/while/IdentityIdentitylstm_864/while/add_1:z:0^lstm_864/while/NoOp*
T0*
_output_shapes
: ј
lstm_864/while/Identity_1Identity0lstm_864_while_lstm_864_while_maximum_iterations^lstm_864/while/NoOp*
T0*
_output_shapes
: t
lstm_864/while/Identity_2Identitylstm_864/while/add:z:0^lstm_864/while/NoOp*
T0*
_output_shapes
: А
lstm_864/while/Identity_3IdentityClstm_864/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_864/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_864/while/Identity_4Identity&lstm_864/while/lstm_cell_864/mul_2:z:0^lstm_864/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_864/while/Identity_5Identity&lstm_864/while/lstm_cell_864/add_1:z:0^lstm_864/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_864/while/NoOpNoOp4^lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp3^lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp5^lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_864_while_identity lstm_864/while/Identity:output:0"?
lstm_864_while_identity_1"lstm_864/while/Identity_1:output:0"?
lstm_864_while_identity_2"lstm_864/while/Identity_2:output:0"?
lstm_864_while_identity_3"lstm_864/while/Identity_3:output:0"?
lstm_864_while_identity_4"lstm_864/while/Identity_4:output:0"?
lstm_864_while_identity_5"lstm_864/while/Identity_5:output:0"T
'lstm_864_while_lstm_864_strided_slice_1)lstm_864_while_lstm_864_strided_slice_1_0"~
<lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource>lstm_864_while_lstm_cell_864_biasadd_readvariableop_resource_0"ђ
=lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource?lstm_864_while_lstm_cell_864_matmul_1_readvariableop_resource_0"|
;lstm_864_while_lstm_cell_864_matmul_readvariableop_resource=lstm_864_while_lstm_cell_864_matmul_readvariableop_resource_0"╠
clstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensorelstm_864_while_tensorarrayv2read_tensorlistgetitem_lstm_864_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp3lstm_864/while/lstm_cell_864/BiasAdd/ReadVariableOp2h
2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp2lstm_864/while/lstm_cell_864/MatMul/ReadVariableOp2l
4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp4lstm_864/while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
В
ш
/__inference_lstm_cell_866_layer_call_fn_5180029

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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5175548o
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
»8
ј
E__inference_lstm_864_layer_call_and_return_conditional_losses_5175122

inputs(
lstm_cell_864_5175040:	љ(
lstm_cell_864_5175042:	dљ$
lstm_cell_864_5175044:	љ
identityѕб%lstm_cell_864/StatefulPartitionedCallбwhile;
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
%lstm_cell_864/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_864_5175040lstm_cell_864_5175042lstm_cell_864_5175044*
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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5174994n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_864_5175040lstm_cell_864_5175042lstm_cell_864_5175044*
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
while_body_5175053*
condR
while_cond_5175052*K
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
NoOpNoOp&^lstm_cell_864/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_864/StatefulPartitionedCall%lstm_cell_864/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Л8
┌
while_body_5178195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_864_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_864_matmul_readvariableop_resource:	љG
4while_lstm_cell_864_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_864/BiasAdd/ReadVariableOpб)while/lstm_cell_864/MatMul/ReadVariableOpб+while/lstm_cell_864/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_864/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_864/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_864/addAddV2$while/lstm_cell_864/MatMul:product:0&while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_864/BiasAddBiasAddwhile/lstm_cell_864/add:z:02while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_864/splitSplit,while/lstm_cell_864/split/split_dim:output:0$while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_864/SigmoidSigmoid"while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_1Sigmoid"while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_864/mulMul!while/lstm_cell_864/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_864/ReluRelu"while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_864/mul_1Mulwhile/lstm_cell_864/Sigmoid:y:0&while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_864/add_1AddV2while/lstm_cell_864/mul:z:0while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_2Sigmoid"while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_864/Relu_1Reluwhile/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_864/mul_2Mul!while/lstm_cell_864/Sigmoid_2:y:0(while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_864/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_864/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_864/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_864/BiasAdd/ReadVariableOp*^while/lstm_cell_864/MatMul/ReadVariableOp,^while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_864_biasadd_readvariableop_resource5while_lstm_cell_864_biasadd_readvariableop_resource_0"n
4while_lstm_cell_864_matmul_1_readvariableop_resource6while_lstm_cell_864_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_864_matmul_readvariableop_resource4while_lstm_cell_864_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_864/BiasAdd/ReadVariableOp*while/lstm_cell_864/BiasAdd/ReadVariableOp2V
)while/lstm_cell_864/MatMul/ReadVariableOp)while/lstm_cell_864/MatMul/ReadVariableOp2Z
+while/lstm_cell_864/MatMul_1/ReadVariableOp+while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_5179569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5179569___redundant_placeholder05
1while_while_cond_5179569___redundant_placeholder15
1while_while_cond_5179569___redundant_placeholder25
1while_while_cond_5179569___redundant_placeholder3
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
while_cond_5178051
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5178051___redundant_placeholder05
1while_while_cond_5178051___redundant_placeholder15
1while_while_cond_5178051___redundant_placeholder25
1while_while_cond_5178051___redundant_placeholder3
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
Ѓ
и
*__inference_lstm_865_layer_call_fn_5178598

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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5176130s
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
║
╚
while_cond_5178194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5178194___redundant_placeholder05
1while_while_cond_5178194___redundant_placeholder15
1while_while_cond_5178194___redundant_placeholder25
1while_while_cond_5178194___redundant_placeholder3
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
я

ю
0__inference_sequential_288_layer_call_fn_5177095

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
identityѕбStatefulPartitionedCallН
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
GPU 2J 8ѓ *T
fORM
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176894o
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
while_body_5176742
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_864_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_864_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_864_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_864_matmul_readvariableop_resource:	љG
4while_lstm_cell_864_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_864_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_864/BiasAdd/ReadVariableOpб)while/lstm_cell_864/MatMul/ReadVariableOpб+while/lstm_cell_864/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_864/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_864_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_864/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_864/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_864/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_864_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_864/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_864/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_864/addAddV2$while/lstm_cell_864/MatMul:product:0&while/lstm_cell_864/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_864/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_864_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_864/BiasAddBiasAddwhile/lstm_cell_864/add:z:02while/lstm_cell_864/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_864/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_864/splitSplit,while/lstm_cell_864/split/split_dim:output:0$while/lstm_cell_864/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_864/SigmoidSigmoid"while/lstm_cell_864/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_1Sigmoid"while/lstm_cell_864/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_864/mulMul!while/lstm_cell_864/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_864/ReluRelu"while/lstm_cell_864/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_864/mul_1Mulwhile/lstm_cell_864/Sigmoid:y:0&while/lstm_cell_864/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_864/add_1AddV2while/lstm_cell_864/mul:z:0while/lstm_cell_864/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_864/Sigmoid_2Sigmoid"while/lstm_cell_864/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_864/Relu_1Reluwhile/lstm_cell_864/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_864/mul_2Mul!while/lstm_cell_864/Sigmoid_2:y:0(while/lstm_cell_864/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_864/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_864/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_864/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_864/BiasAdd/ReadVariableOp*^while/lstm_cell_864/MatMul/ReadVariableOp,^while/lstm_cell_864/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_864_biasadd_readvariableop_resource5while_lstm_cell_864_biasadd_readvariableop_resource_0"n
4while_lstm_cell_864_matmul_1_readvariableop_resource6while_lstm_cell_864_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_864_matmul_readvariableop_resource4while_lstm_cell_864_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_864/BiasAdd/ReadVariableOp*while/lstm_cell_864/BiasAdd/ReadVariableOp2V
)while/lstm_cell_864/MatMul/ReadVariableOp)while/lstm_cell_864/MatMul/ReadVariableOp2Z
+while/lstm_cell_864/MatMul_1/ReadVariableOp+while/lstm_cell_864/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
╔	
э
F__inference_dense_288_layer_call_and_return_conditional_losses_5176298

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

 
_user_specified_nameinputs"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
M
lstm_864_input;
 serving_default_lstm_864_input:0         =
	dense_2880
StatefulPartitionedCall:0         tensorflow/serving/predict:н═
Ё
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
є__call__
+Є&call_and_return_all_conditional_losses
ѕ_default_save_signature"
_tf_keras_sequential
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ѕ__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
І__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
┼
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
Ї__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
й

kernel
bias
	variables
 trainable_variables
!regularization_losses
"	keras_api
Ј__call__
+љ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ъ
#iter

$beta_1

%beta_2
	&decay
'learning_ratempmq(mr)ms*mt+mu,mv-mw.mx/my0mzv{v|(v})v~*v+vђ,vЂ-vѓ.vЃ/vё0vЁ"
	optimizer
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
n
(0
)1
*2
+3
,4
-5
.6
/7
08
9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
є__call__
ѕ_default_save_signature
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
-
Љserving_default"
signature_map
с
6
state_size

(kernel
)recurrent_kernel
*bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
њ__call__
+Њ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
Ѕ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
с
A
state_size

+kernel
,recurrent_kernel
-bias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
ћ__call__
+Ћ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Fstates
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
І__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
с
L
state_size

.kernel
/recurrent_kernel
0bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
ќ__call__
+Ќ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
╝

Qstates
Rnon_trainable_variables

Slayers
Tmetrics
Ulayer_regularization_losses
Vlayer_metrics
	variables
trainable_variables
regularization_losses
Ї__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_288/kernel
:2dense_288/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
 trainable_variables
!regularization_losses
Ј__call__
+љ&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0:.	љ2lstm_864/lstm_cell_864/kernel
::8	dљ2'lstm_864/lstm_cell_864/recurrent_kernel
*:(љ2lstm_864/lstm_cell_864/bias
0:.	d╚2lstm_865/lstm_cell_865/kernel
::8	2╚2'lstm_865/lstm_cell_865/recurrent_kernel
*:(╚2lstm_865/lstm_cell_865/bias
/:-2(2lstm_866/lstm_cell_866/kernel
9:7
(2'lstm_866/lstm_cell_866/recurrent_kernel
):'(2lstm_866/lstm_cell_866/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
5
(0
)1
*2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
]non_trainable_variables

^layers
_metrics
`layer_regularization_losses
alayer_metrics
7	variables
8trainable_variables
9regularization_losses
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
ћ__call__
+Ћ&call_and_return_all_conditional_losses
'Ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
5
.0
/1
02"
trackable_list_wrapper
 "
trackable_list_wrapper
░
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
ќ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	ltotal
	mcount
n	variables
o	keras_api"
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
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
':%
2Adam/dense_288/kernel/m
!:2Adam/dense_288/bias/m
5:3	љ2$Adam/lstm_864/lstm_cell_864/kernel/m
?:=	dљ2.Adam/lstm_864/lstm_cell_864/recurrent_kernel/m
/:-љ2"Adam/lstm_864/lstm_cell_864/bias/m
5:3	d╚2$Adam/lstm_865/lstm_cell_865/kernel/m
?:=	2╚2.Adam/lstm_865/lstm_cell_865/recurrent_kernel/m
/:-╚2"Adam/lstm_865/lstm_cell_865/bias/m
4:22(2$Adam/lstm_866/lstm_cell_866/kernel/m
>:<
(2.Adam/lstm_866/lstm_cell_866/recurrent_kernel/m
.:,(2"Adam/lstm_866/lstm_cell_866/bias/m
':%
2Adam/dense_288/kernel/v
!:2Adam/dense_288/bias/v
5:3	љ2$Adam/lstm_864/lstm_cell_864/kernel/v
?:=	dљ2.Adam/lstm_864/lstm_cell_864/recurrent_kernel/v
/:-љ2"Adam/lstm_864/lstm_cell_864/bias/v
5:3	d╚2$Adam/lstm_865/lstm_cell_865/kernel/v
?:=	2╚2.Adam/lstm_865/lstm_cell_865/recurrent_kernel/v
/:-╚2"Adam/lstm_865/lstm_cell_865/bias/v
4:22(2$Adam/lstm_866/lstm_cell_866/kernel/v
>:<
(2.Adam/lstm_866/lstm_cell_866/recurrent_kernel/v
.:,(2"Adam/lstm_866/lstm_cell_866/bias/v
ј2І
0__inference_sequential_288_layer_call_fn_5176330
0__inference_sequential_288_layer_call_fn_5177068
0__inference_sequential_288_layer_call_fn_5177095
0__inference_sequential_288_layer_call_fn_5176946└
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
Щ2э
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177522
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177949
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176976
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177006└
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
"__inference__wrapped_model_5174781lstm_864_input"ў
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
*__inference_lstm_864_layer_call_fn_5177960
*__inference_lstm_864_layer_call_fn_5177971
*__inference_lstm_864_layer_call_fn_5177982
*__inference_lstm_864_layer_call_fn_5177993Н
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178136
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178279
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178422
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178565Н
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
*__inference_lstm_865_layer_call_fn_5178576
*__inference_lstm_865_layer_call_fn_5178587
*__inference_lstm_865_layer_call_fn_5178598
*__inference_lstm_865_layer_call_fn_5178609Н
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5178752
E__inference_lstm_865_layer_call_and_return_conditional_losses_5178895
E__inference_lstm_865_layer_call_and_return_conditional_losses_5179038
E__inference_lstm_865_layer_call_and_return_conditional_losses_5179181Н
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
*__inference_lstm_866_layer_call_fn_5179192
*__inference_lstm_866_layer_call_fn_5179203
*__inference_lstm_866_layer_call_fn_5179214
*__inference_lstm_866_layer_call_fn_5179225Н
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179368
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179511
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179654
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179797Н
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
Н2м
+__inference_dense_288_layer_call_fn_5179806б
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
­2ь
F__inference_dense_288_layer_call_and_return_conditional_losses_5179816б
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
%__inference_signature_wrapper_5177041lstm_864_input"ћ
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
/__inference_lstm_cell_864_layer_call_fn_5179833
/__inference_lstm_cell_864_layer_call_fn_5179850Й
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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5179882
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5179914Й
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
/__inference_lstm_cell_865_layer_call_fn_5179931
/__inference_lstm_cell_865_layer_call_fn_5179948Й
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5179980
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5180012Й
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
/__inference_lstm_cell_866_layer_call_fn_5180029
/__inference_lstm_cell_866_layer_call_fn_5180046Й
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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5180078
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5180110Й
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
 е
"__inference__wrapped_model_5174781Ђ()*+,-./0;б8
1б.
,і)
lstm_864_input         
ф "5ф2
0
	dense_288#і 
	dense_288         д
F__inference_dense_288_layer_call_and_return_conditional_losses_5179816\/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ ~
+__inference_dense_288_layer_call_fn_5179806O/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178136і()*OбL
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178279і()*OбL
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178422q()*?б<
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
E__inference_lstm_864_layer_call_and_return_conditional_losses_5178565q()*?б<
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
*__inference_lstm_864_layer_call_fn_5177960}()*OбL
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
*__inference_lstm_864_layer_call_fn_5177971}()*OбL
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
*__inference_lstm_864_layer_call_fn_5177982d()*?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_864_layer_call_fn_5177993d()*?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_865_layer_call_and_return_conditional_losses_5178752і+,-OбL
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5178895і+,-OбL
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5179038q+,-?б<
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
E__inference_lstm_865_layer_call_and_return_conditional_losses_5179181q+,-?б<
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
*__inference_lstm_865_layer_call_fn_5178576}+,-OбL
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
*__inference_lstm_865_layer_call_fn_5178587}+,-OбL
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
*__inference_lstm_865_layer_call_fn_5178598d+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_865_layer_call_fn_5178609d+,-?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179368}./0OбL
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179511}./0OбL
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179654m./0?б<
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
E__inference_lstm_866_layer_call_and_return_conditional_losses_5179797m./0?б<
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
*__inference_lstm_866_layer_call_fn_5179192p./0OбL
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
*__inference_lstm_866_layer_call_fn_5179203p./0OбL
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
*__inference_lstm_866_layer_call_fn_5179214`./0?б<
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
*__inference_lstm_866_layer_call_fn_5179225`./0?б<
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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5179882§()*ђб}
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
J__inference_lstm_cell_864_layer_call_and_return_conditional_losses_5179914§()*ђб}
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
/__inference_lstm_cell_864_layer_call_fn_5179833ь()*ђб}
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
/__inference_lstm_cell_864_layer_call_fn_5179850ь()*ђб}
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5179980§+,-ђб}
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
J__inference_lstm_cell_865_layer_call_and_return_conditional_losses_5180012§+,-ђб}
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
/__inference_lstm_cell_865_layer_call_fn_5179931ь+,-ђб}
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
/__inference_lstm_cell_865_layer_call_fn_5179948ь+,-ђб}
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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5180078§./0ђб}
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
J__inference_lstm_cell_866_layer_call_and_return_conditional_losses_5180110§./0ђб}
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
/__inference_lstm_cell_866_layer_call_fn_5180029ь./0ђб}
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
/__inference_lstm_cell_866_layer_call_fn_5180046ь./0ђб}
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
╚
K__inference_sequential_288_layer_call_and_return_conditional_losses_5176976y()*+,-./0Cб@
9б6
,і)
lstm_864_input         
p 

 
ф "%б"
і
0         
џ ╚
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177006y()*+,-./0Cб@
9б6
,і)
lstm_864_input         
p

 
ф "%б"
і
0         
џ └
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177522q()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "%б"
і
0         
џ └
K__inference_sequential_288_layer_call_and_return_conditional_losses_5177949q()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "%б"
і
0         
џ а
0__inference_sequential_288_layer_call_fn_5176330l()*+,-./0Cб@
9б6
,і)
lstm_864_input         
p 

 
ф "і         а
0__inference_sequential_288_layer_call_fn_5176946l()*+,-./0Cб@
9б6
,і)
lstm_864_input         
p

 
ф "і         ў
0__inference_sequential_288_layer_call_fn_5177068d()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "і         ў
0__inference_sequential_288_layer_call_fn_5177095d()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "і         й
%__inference_signature_wrapper_5177041Њ()*+,-./0MбJ
б 
Cф@
>
lstm_864_input,і)
lstm_864_input         "5ф2
0
	dense_288#і 
	dense_288         