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
dense_203/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_203/kernel
u
$dense_203/kernel/Read/ReadVariableOpReadVariableOpdense_203/kernel*
_output_shapes

:
*
dtype0
t
dense_203/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_203/bias
m
"dense_203/bias/Read/ReadVariableOpReadVariableOpdense_203/bias*
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
lstm_609/lstm_cell_609/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*.
shared_namelstm_609/lstm_cell_609/kernel
љ
1lstm_609/lstm_cell_609/kernel/Read/ReadVariableOpReadVariableOplstm_609/lstm_cell_609/kernel*
_output_shapes
:	љ*
dtype0
Ф
'lstm_609/lstm_cell_609/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*8
shared_name)'lstm_609/lstm_cell_609/recurrent_kernel
ц
;lstm_609/lstm_cell_609/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_609/lstm_cell_609/recurrent_kernel*
_output_shapes
:	dљ*
dtype0
Ј
lstm_609/lstm_cell_609/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*,
shared_namelstm_609/lstm_cell_609/bias
ѕ
/lstm_609/lstm_cell_609/bias/Read/ReadVariableOpReadVariableOplstm_609/lstm_cell_609/bias*
_output_shapes	
:љ*
dtype0
Ќ
lstm_610/lstm_cell_610/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*.
shared_namelstm_610/lstm_cell_610/kernel
љ
1lstm_610/lstm_cell_610/kernel/Read/ReadVariableOpReadVariableOplstm_610/lstm_cell_610/kernel*
_output_shapes
:	d╚*
dtype0
Ф
'lstm_610/lstm_cell_610/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*8
shared_name)'lstm_610/lstm_cell_610/recurrent_kernel
ц
;lstm_610/lstm_cell_610/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_610/lstm_cell_610/recurrent_kernel*
_output_shapes
:	2╚*
dtype0
Ј
lstm_610/lstm_cell_610/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*,
shared_namelstm_610/lstm_cell_610/bias
ѕ
/lstm_610/lstm_cell_610/bias/Read/ReadVariableOpReadVariableOplstm_610/lstm_cell_610/bias*
_output_shapes	
:╚*
dtype0
ќ
lstm_611/lstm_cell_611/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*.
shared_namelstm_611/lstm_cell_611/kernel
Ј
1lstm_611/lstm_cell_611/kernel/Read/ReadVariableOpReadVariableOplstm_611/lstm_cell_611/kernel*
_output_shapes

:2(*
dtype0
ф
'lstm_611/lstm_cell_611/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*8
shared_name)'lstm_611/lstm_cell_611/recurrent_kernel
Б
;lstm_611/lstm_cell_611/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_611/lstm_cell_611/recurrent_kernel*
_output_shapes

:
(*
dtype0
ј
lstm_611/lstm_cell_611/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namelstm_611/lstm_cell_611/bias
Є
/lstm_611/lstm_cell_611/bias/Read/ReadVariableOpReadVariableOplstm_611/lstm_cell_611/bias*
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
Adam/dense_203/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_203/kernel/m
Ѓ
+Adam/dense_203/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_203/kernel/m*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_203/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_203/bias/m
{
)Adam/dense_203/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_203/bias/m*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_609/lstm_cell_609/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_609/lstm_cell_609/kernel/m
ъ
8Adam/lstm_609/lstm_cell_609/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_609/lstm_cell_609/kernel/m*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_609/lstm_cell_609/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m
▓
BAdam/lstm_609/lstm_cell_609/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_609/lstm_cell_609/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_609/lstm_cell_609/bias/m
ќ
6Adam/lstm_609/lstm_cell_609/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_609/lstm_cell_609/bias/m*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_610/lstm_cell_610/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_610/lstm_cell_610/kernel/m
ъ
8Adam/lstm_610/lstm_cell_610/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_610/lstm_cell_610/kernel/m*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_610/lstm_cell_610/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m
▓
BAdam/lstm_610/lstm_cell_610/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_610/lstm_cell_610/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_610/lstm_cell_610/bias/m
ќ
6Adam/lstm_610/lstm_cell_610/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_610/lstm_cell_610/bias/m*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_611/lstm_cell_611/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_611/lstm_cell_611/kernel/m
Ю
8Adam/lstm_611/lstm_cell_611/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_611/lstm_cell_611/kernel/m*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_611/lstm_cell_611/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m
▒
BAdam/lstm_611/lstm_cell_611/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_611/lstm_cell_611/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_611/lstm_cell_611/bias/m
Ћ
6Adam/lstm_611/lstm_cell_611/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_611/lstm_cell_611/bias/m*
_output_shapes
:(*
dtype0
і
Adam/dense_203/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_203/kernel/v
Ѓ
+Adam/dense_203/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_203/kernel/v*
_output_shapes

:
*
dtype0
ѓ
Adam/dense_203/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_203/bias/v
{
)Adam/dense_203/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_203/bias/v*
_output_shapes
:*
dtype0
Ц
$Adam/lstm_609/lstm_cell_609/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љ*5
shared_name&$Adam/lstm_609/lstm_cell_609/kernel/v
ъ
8Adam/lstm_609/lstm_cell_609/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_609/lstm_cell_609/kernel/v*
_output_shapes
:	љ*
dtype0
╣
.Adam/lstm_609/lstm_cell_609/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dљ*?
shared_name0.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v
▓
BAdam/lstm_609/lstm_cell_609/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v*
_output_shapes
:	dљ*
dtype0
Ю
"Adam/lstm_609/lstm_cell_609/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:љ*3
shared_name$"Adam/lstm_609/lstm_cell_609/bias/v
ќ
6Adam/lstm_609/lstm_cell_609/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_609/lstm_cell_609/bias/v*
_output_shapes	
:љ*
dtype0
Ц
$Adam/lstm_610/lstm_cell_610/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d╚*5
shared_name&$Adam/lstm_610/lstm_cell_610/kernel/v
ъ
8Adam/lstm_610/lstm_cell_610/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_610/lstm_cell_610/kernel/v*
_output_shapes
:	d╚*
dtype0
╣
.Adam/lstm_610/lstm_cell_610/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	2╚*?
shared_name0.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v
▓
BAdam/lstm_610/lstm_cell_610/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v*
_output_shapes
:	2╚*
dtype0
Ю
"Adam/lstm_610/lstm_cell_610/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*3
shared_name$"Adam/lstm_610/lstm_cell_610/bias/v
ќ
6Adam/lstm_610/lstm_cell_610/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_610/lstm_cell_610/bias/v*
_output_shapes	
:╚*
dtype0
ц
$Adam/lstm_611/lstm_cell_611/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2(*5
shared_name&$Adam/lstm_611/lstm_cell_611/kernel/v
Ю
8Adam/lstm_611/lstm_cell_611/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_611/lstm_cell_611/kernel/v*
_output_shapes

:2(*
dtype0
И
.Adam/lstm_611/lstm_cell_611/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
(*?
shared_name0.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v
▒
BAdam/lstm_611/lstm_cell_611/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v*
_output_shapes

:
(*
dtype0
ю
"Adam/lstm_611/lstm_cell_611/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/lstm_611/lstm_cell_611/bias/v
Ћ
6Adam/lstm_611/lstm_cell_611/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_611/lstm_cell_611/bias/v*
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
VARIABLE_VALUEdense_203/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_203/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_609/lstm_cell_609/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_609/lstm_cell_609/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_609/lstm_cell_609/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_610/lstm_cell_610/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_610/lstm_cell_610/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_610/lstm_cell_610/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm_611/lstm_cell_611/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_611/lstm_cell_611/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_611/lstm_cell_611/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_203/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_203/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_609/lstm_cell_609/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_609/lstm_cell_609/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_609/lstm_cell_609/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_610/lstm_cell_610/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_610/lstm_cell_610/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_610/lstm_cell_610/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_611/lstm_cell_611/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_611/lstm_cell_611/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_611/lstm_cell_611/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_203/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_203/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_609/lstm_cell_609/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_609/lstm_cell_609/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_609/lstm_cell_609/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_610/lstm_cell_610/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_610/lstm_cell_610/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_610/lstm_cell_610/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_611/lstm_cell_611/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Єё
VARIABLE_VALUE.Adam/lstm_611/lstm_cell_611/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_611/lstm_cell_611/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕ
serving_default_lstm_609_inputPlaceholder*+
_output_shapes
:         *
dtype0* 
shape:         
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_609_inputlstm_609/lstm_cell_609/kernel'lstm_609/lstm_cell_609/recurrent_kernellstm_609/lstm_cell_609/biaslstm_610/lstm_cell_610/kernel'lstm_610/lstm_cell_610/recurrent_kernellstm_610/lstm_cell_610/biaslstm_611/lstm_cell_611/kernel'lstm_611/lstm_cell_611/recurrent_kernellstm_611/lstm_cell_611/biasdense_203/kerneldense_203/bias*
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
%__inference_signature_wrapper_3968121
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
─
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_203/kernel/Read/ReadVariableOp"dense_203/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_609/lstm_cell_609/kernel/Read/ReadVariableOp;lstm_609/lstm_cell_609/recurrent_kernel/Read/ReadVariableOp/lstm_609/lstm_cell_609/bias/Read/ReadVariableOp1lstm_610/lstm_cell_610/kernel/Read/ReadVariableOp;lstm_610/lstm_cell_610/recurrent_kernel/Read/ReadVariableOp/lstm_610/lstm_cell_610/bias/Read/ReadVariableOp1lstm_611/lstm_cell_611/kernel/Read/ReadVariableOp;lstm_611/lstm_cell_611/recurrent_kernel/Read/ReadVariableOp/lstm_611/lstm_cell_611/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_203/kernel/m/Read/ReadVariableOp)Adam/dense_203/bias/m/Read/ReadVariableOp8Adam/lstm_609/lstm_cell_609/kernel/m/Read/ReadVariableOpBAdam/lstm_609/lstm_cell_609/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_609/lstm_cell_609/bias/m/Read/ReadVariableOp8Adam/lstm_610/lstm_cell_610/kernel/m/Read/ReadVariableOpBAdam/lstm_610/lstm_cell_610/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_610/lstm_cell_610/bias/m/Read/ReadVariableOp8Adam/lstm_611/lstm_cell_611/kernel/m/Read/ReadVariableOpBAdam/lstm_611/lstm_cell_611/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_611/lstm_cell_611/bias/m/Read/ReadVariableOp+Adam/dense_203/kernel/v/Read/ReadVariableOp)Adam/dense_203/bias/v/Read/ReadVariableOp8Adam/lstm_609/lstm_cell_609/kernel/v/Read/ReadVariableOpBAdam/lstm_609/lstm_cell_609/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_609/lstm_cell_609/bias/v/Read/ReadVariableOp8Adam/lstm_610/lstm_cell_610/kernel/v/Read/ReadVariableOpBAdam/lstm_610/lstm_cell_610/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_610/lstm_cell_610/bias/v/Read/ReadVariableOp8Adam/lstm_611/lstm_cell_611/kernel/v/Read/ReadVariableOpBAdam/lstm_611/lstm_cell_611/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_611/lstm_cell_611/bias/v/Read/ReadVariableOpConst*5
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
 __inference__traced_save_3971333
Ъ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_203/kerneldense_203/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_609/lstm_cell_609/kernel'lstm_609/lstm_cell_609/recurrent_kernellstm_609/lstm_cell_609/biaslstm_610/lstm_cell_610/kernel'lstm_610/lstm_cell_610/recurrent_kernellstm_610/lstm_cell_610/biaslstm_611/lstm_cell_611/kernel'lstm_611/lstm_cell_611/recurrent_kernellstm_611/lstm_cell_611/biastotalcountAdam/dense_203/kernel/mAdam/dense_203/bias/m$Adam/lstm_609/lstm_cell_609/kernel/m.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m"Adam/lstm_609/lstm_cell_609/bias/m$Adam/lstm_610/lstm_cell_610/kernel/m.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m"Adam/lstm_610/lstm_cell_610/bias/m$Adam/lstm_611/lstm_cell_611/kernel/m.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m"Adam/lstm_611/lstm_cell_611/bias/mAdam/dense_203/kernel/vAdam/dense_203/bias/v$Adam/lstm_609/lstm_cell_609/kernel/v.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v"Adam/lstm_609/lstm_cell_609/bias/v$Adam/lstm_610/lstm_cell_610/kernel/v.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v"Adam/lstm_610/lstm_cell_610/bias/v$Adam/lstm_611/lstm_cell_611/kernel/v.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v"Adam/lstm_611/lstm_cell_611/bias/v*4
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
#__inference__traced_restore_3971463░■+
ћC
З

lstm_611_while_body_3968939.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_3-
)lstm_611_while_lstm_611_strided_slice_1_0i
elstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0:2(Q
?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(L
>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0:(
lstm_611_while_identity
lstm_611_while_identity_1
lstm_611_while_identity_2
lstm_611_while_identity_3
lstm_611_while_identity_4
lstm_611_while_identity_5+
'lstm_611_while_lstm_611_strided_slice_1g
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorM
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource:2(O
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource:
(J
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpб2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpб4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpЉ
@lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_611/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0lstm_611_while_placeholderIlstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_611/while/lstm_cell_611/MatMulMatMul9lstm_611/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_611/while/lstm_cell_611/MatMul_1MatMullstm_611_while_placeholder_2<lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_611/while/lstm_cell_611/addAddV2-lstm_611/while/lstm_cell_611/MatMul:product:0/lstm_611/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_611/while/lstm_cell_611/BiasAddBiasAdd$lstm_611/while/lstm_cell_611/add:z:0;lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_611/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_611/while/lstm_cell_611/splitSplit5lstm_611/while/lstm_cell_611/split/split_dim:output:0-lstm_611/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_611/while/lstm_cell_611/SigmoidSigmoid+lstm_611/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_611/while/lstm_cell_611/Sigmoid_1Sigmoid+lstm_611/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_611/while/lstm_cell_611/mulMul*lstm_611/while/lstm_cell_611/Sigmoid_1:y:0lstm_611_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_611/while/lstm_cell_611/ReluRelu+lstm_611/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_611/while/lstm_cell_611/mul_1Mul(lstm_611/while/lstm_cell_611/Sigmoid:y:0/lstm_611/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_611/while/lstm_cell_611/add_1AddV2$lstm_611/while/lstm_cell_611/mul:z:0&lstm_611/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_611/while/lstm_cell_611/Sigmoid_2Sigmoid+lstm_611/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_611/while/lstm_cell_611/Relu_1Relu&lstm_611/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_611/while/lstm_cell_611/mul_2Mul*lstm_611/while/lstm_cell_611/Sigmoid_2:y:01lstm_611/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_611/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_611_while_placeholder_1lstm_611_while_placeholder&lstm_611/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_611/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_611/while/addAddV2lstm_611_while_placeholderlstm_611/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_611/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_611/while/add_1AddV2*lstm_611_while_lstm_611_while_loop_counterlstm_611/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_611/while/IdentityIdentitylstm_611/while/add_1:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ј
lstm_611/while/Identity_1Identity0lstm_611_while_lstm_611_while_maximum_iterations^lstm_611/while/NoOp*
T0*
_output_shapes
: t
lstm_611/while/Identity_2Identitylstm_611/while/add:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: А
lstm_611/while/Identity_3IdentityClstm_611/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_611/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_611/while/Identity_4Identity&lstm_611/while/lstm_cell_611/mul_2:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_611/while/Identity_5Identity&lstm_611/while/lstm_cell_611/add_1:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_611/while/NoOpNoOp4^lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3^lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp5^lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_611_while_identity lstm_611/while/Identity:output:0"?
lstm_611_while_identity_1"lstm_611/while/Identity_1:output:0"?
lstm_611_while_identity_2"lstm_611/while/Identity_2:output:0"?
lstm_611_while_identity_3"lstm_611/while/Identity_3:output:0"?
lstm_611_while_identity_4"lstm_611/while/Identity_4:output:0"?
lstm_611_while_identity_5"lstm_611/while/Identity_5:output:0"T
'lstm_611_while_lstm_611_strided_slice_1)lstm_611_while_lstm_611_strided_slice_1_0"~
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0"ђ
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0"|
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0"╠
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp2h
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2l
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967385

inputs#
lstm_609_3967061:	љ#
lstm_609_3967063:	dљ
lstm_609_3967065:	љ#
lstm_610_3967211:	d╚#
lstm_610_3967213:	2╚
lstm_610_3967215:	╚"
lstm_611_3967361:2("
lstm_611_3967363:
(
lstm_611_3967365:(#
dense_203_3967379:

dense_203_3967381:
identityѕб!dense_203/StatefulPartitionedCallб lstm_609/StatefulPartitionedCallб lstm_610/StatefulPartitionedCallб lstm_611/StatefulPartitionedCallІ
 lstm_609/StatefulPartitionedCallStatefulPartitionedCallinputslstm_609_3967061lstm_609_3967063lstm_609_3967065*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060«
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3967211lstm_610_3967213lstm_610_3967215*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210ф
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3967361lstm_611_3967363lstm_611_3967365*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360џ
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3967379dense_203_3967381*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и

Ч
lstm_611_while_cond_3968511.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_30
,lstm_611_while_less_lstm_611_strided_slice_1G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder0G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder1G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder2G
Clstm_611_while_lstm_611_while_cond_3968511___redundant_placeholder3
lstm_611_while_identity
є
lstm_611/while/LessLesslstm_611_while_placeholder,lstm_611_while_less_lstm_611_strided_slice_1*
T0*
_output_shapes
: ]
lstm_611/while/IdentityIdentitylstm_611/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_611_while_identity lstm_611/while/Identity:output:0*(
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
while_cond_3967491
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967491___redundant_placeholder05
1while_while_cond_3967491___redundant_placeholder15
1while_while_cond_3967491___redundant_placeholder25
1while_while_cond_3967491___redundant_placeholder3
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
Г
╣
*__inference_lstm_610_layer_call_fn_3969667
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966552|
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
Л8
┌
while_body_3969891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_610/BiasAdd/ReadVariableOpб)while/lstm_cell_610/MatMul/ReadVariableOpб+while/lstm_cell_610/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_611_layer_call_fn_3971109

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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628o
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
Ј#
ы
while_body_3966292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_610_3966316_0:	d╚0
while_lstm_cell_610_3966318_0:	2╚,
while_lstm_cell_610_3966320_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_610_3966316:	d╚.
while_lstm_cell_610_3966318:	2╚*
while_lstm_cell_610_3966320:	╚ѕб+while/lstm_cell_610/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_610_3966316_0while_lstm_cell_610_3966318_0while_lstm_cell_610_3966320_0*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_610/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_610/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_610/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_610/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_610_3966316while_lstm_cell_610_3966316_0"<
while_lstm_cell_610_3966318while_lstm_cell_610_3966318_0"<
while_lstm_cell_610_3966320while_lstm_cell_610_3966320_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_610/StatefulPartitionedCall+while/lstm_cell_610/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_609_layer_call_fn_3970930

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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074o
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928

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
и

Ч
lstm_610_while_cond_3968799.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_30
,lstm_610_while_less_lstm_610_strided_slice_1G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder0G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder1G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder2G
Clstm_610_while_lstm_610_while_cond_3968799___redundant_placeholder3
lstm_610_while_identity
є
lstm_610/while/LessLesslstm_610_while_placeholder,lstm_610_while_less_lstm_610_strided_slice_1*
T0*
_output_shapes
: ]
lstm_610/while/IdentityIdentitylstm_610/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_610_while_identity lstm_610/while/Identity:output:0*(
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
lstm_611_while_cond_3968938.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_30
,lstm_611_while_less_lstm_611_strided_slice_1G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder0G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder1G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder2G
Clstm_611_while_lstm_611_while_cond_3968938___redundant_placeholder3
lstm_611_while_identity
є
lstm_611/while/LessLesslstm_611_while_placeholder,lstm_611_while_less_lstm_611_strided_slice_1*
T0*
_output_shapes
: ]
lstm_611/while/IdentityIdentitylstm_611/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_611_while_identity lstm_611/while/Identity:output:0*(
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
while_body_3967276
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_611/BiasAdd/ReadVariableOpб)while/lstm_cell_611/MatMul/ReadVariableOpб+while/lstm_cell_611/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_609_while_body_3968661.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_3-
)lstm_609_while_lstm_609_strided_slice_1_0i
elstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0:	љR
?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљM
>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
lstm_609_while_identity
lstm_609_while_identity_1
lstm_609_while_identity_2
lstm_609_while_identity_3
lstm_609_while_identity_4
lstm_609_while_identity_5+
'lstm_609_while_lstm_609_strided_slice_1g
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorN
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource:	љP
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource:	dљK
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpб2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpб4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpЉ
@lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_609/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0lstm_609_while_placeholderIlstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_609/while/lstm_cell_609/MatMulMatMul9lstm_609/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_609/while/lstm_cell_609/MatMul_1MatMullstm_609_while_placeholder_2<lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_609/while/lstm_cell_609/addAddV2-lstm_609/while/lstm_cell_609/MatMul:product:0/lstm_609/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_609/while/lstm_cell_609/BiasAddBiasAdd$lstm_609/while/lstm_cell_609/add:z:0;lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_609/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_609/while/lstm_cell_609/splitSplit5lstm_609/while/lstm_cell_609/split/split_dim:output:0-lstm_609/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_609/while/lstm_cell_609/SigmoidSigmoid+lstm_609/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_609/while/lstm_cell_609/Sigmoid_1Sigmoid+lstm_609/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_609/while/lstm_cell_609/mulMul*lstm_609/while/lstm_cell_609/Sigmoid_1:y:0lstm_609_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_609/while/lstm_cell_609/ReluRelu+lstm_609/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_609/while/lstm_cell_609/mul_1Mul(lstm_609/while/lstm_cell_609/Sigmoid:y:0/lstm_609/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_609/while/lstm_cell_609/add_1AddV2$lstm_609/while/lstm_cell_609/mul:z:0&lstm_609/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_609/while/lstm_cell_609/Sigmoid_2Sigmoid+lstm_609/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_609/while/lstm_cell_609/Relu_1Relu&lstm_609/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_609/while/lstm_cell_609/mul_2Mul*lstm_609/while/lstm_cell_609/Sigmoid_2:y:01lstm_609/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_609/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_609_while_placeholder_1lstm_609_while_placeholder&lstm_609/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_609/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_609/while/addAddV2lstm_609_while_placeholderlstm_609/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_609/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_609/while/add_1AddV2*lstm_609_while_lstm_609_while_loop_counterlstm_609/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_609/while/IdentityIdentitylstm_609/while/add_1:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ј
lstm_609/while/Identity_1Identity0lstm_609_while_lstm_609_while_maximum_iterations^lstm_609/while/NoOp*
T0*
_output_shapes
: t
lstm_609/while/Identity_2Identitylstm_609/while/add:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: А
lstm_609/while/Identity_3IdentityClstm_609/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_609/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_609/while/Identity_4Identity&lstm_609/while/lstm_cell_609/mul_2:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_609/while/Identity_5Identity&lstm_609/while/lstm_cell_609/add_1:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_609/while/NoOpNoOp4^lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3^lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp5^lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_609_while_identity lstm_609/while/Identity:output:0"?
lstm_609_while_identity_1"lstm_609/while/Identity_1:output:0"?
lstm_609_while_identity_2"lstm_609/while/Identity_2:output:0"?
lstm_609_while_identity_3"lstm_609/while/Identity_3:output:0"?
lstm_609_while_identity_4"lstm_609/while/Identity_4:output:0"?
lstm_609_while_identity_5"lstm_609/while/Identity_5:output:0"T
'lstm_609_while_lstm_609_strided_slice_1)lstm_609_while_lstm_609_strided_slice_1_0"~
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0"ђ
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0"|
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0"╠
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp2h
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2l
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
њK
б
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970448
inputs_0>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_611/BiasAdd/ReadVariableOpб#lstm_cell_611/MatMul/ReadVariableOpб%lstm_cell_611/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970364*
condR
while_cond_3970363*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
Ѓ
и
*__inference_lstm_609_layer_call_fn_3969073

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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906s
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
е8
І
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966711

inputs'
lstm_cell_611_3966629:2('
lstm_cell_611_3966631:
(#
lstm_cell_611_3966633:(
identityѕб%lstm_cell_611/StatefulPartitionedCallбwhile;
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
%lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_611_3966629lstm_cell_611_3966631lstm_cell_611_3966633*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_611_3966629lstm_cell_611_3966631lstm_cell_611_3966633*
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
while_body_3966642*
condR
while_cond_3966641*K
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
NoOpNoOp&^lstm_cell_611/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_611/StatefulPartitionedCall%lstm_cell_611/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
»8
ј
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966202

inputs(
lstm_cell_609_3966120:	љ(
lstm_cell_609_3966122:	dљ$
lstm_cell_609_3966124:	љ
identityѕб%lstm_cell_609/StatefulPartitionedCallбwhile;
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
%lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_609_3966120lstm_cell_609_3966122lstm_cell_609_3966124*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_609_3966120lstm_cell_609_3966122lstm_cell_609_3966124*
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
while_body_3966133*
condR
while_cond_3966132*K
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
NoOpNoOp&^lstm_cell_609/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_609/StatefulPartitionedCall%lstm_cell_609/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
╔	
э
F__inference_dense_203_layer_call_and_return_conditional_losses_3970896

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
║
╚
while_cond_3966975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966975___redundant_placeholder05
1while_while_cond_3966975___redundant_placeholder15
1while_while_cond_3966975___redundant_placeholder25
1while_while_cond_3966975___redundant_placeholder3
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_611/BiasAdd/ReadVariableOpб#lstm_cell_611/MatMul/ReadVariableOpб%lstm_cell_611/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3967276*
condR
while_cond_3967275*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_3966132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966132___redundant_placeholder05
1while_while_cond_3966132___redundant_placeholder15
1while_while_cond_3966132___redundant_placeholder25
1while_while_cond_3966132___redundant_placeholder3
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
while_cond_3970649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970649___redundant_placeholder05
1while_while_cond_3970649___redundant_placeholder15
1while_while_cond_3970649___redundant_placeholder25
1while_while_cond_3970649___redundant_placeholder3
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
Г
╣
*__inference_lstm_609_layer_call_fn_3969040
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966011|
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
Ѓ
и
*__inference_lstm_610_layer_call_fn_3969678

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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210s
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
Ј#
ы
while_body_3966483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_610_3966507_0:	d╚0
while_lstm_cell_610_3966509_0:	2╚,
while_lstm_cell_610_3966511_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_610_3966507:	d╚.
while_lstm_cell_610_3966509:	2╚*
while_lstm_cell_610_3966511:	╚ѕб+while/lstm_cell_610/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0╝
+while/lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_610_3966507_0while_lstm_cell_610_3966509_0while_lstm_cell_610_3966511_0*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_610/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_610/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         2Љ
while/Identity_5Identity4while/lstm_cell_610/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         2z

while/NoOpNoOp,^while/lstm_cell_610/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_610_3966507while_lstm_cell_610_3966507_0"<
while_lstm_cell_610_3966509while_lstm_cell_610_3966509_0"<
while_lstm_cell_610_3966511while_lstm_cell_610_3966511_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2Z
+while/lstm_cell_610/StatefulPartitionedCall+while/lstm_cell_610/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3969275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	љG
4while_lstm_cell_609_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_609/BiasAdd/ReadVariableOpб)while/lstm_cell_609/MatMul/ReadVariableOpб+while/lstm_cell_609/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
м
ч
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967974

inputs#
lstm_609_3967947:	љ#
lstm_609_3967949:	dљ
lstm_609_3967951:	љ#
lstm_610_3967954:	d╚#
lstm_610_3967956:	2╚
lstm_610_3967958:	╚"
lstm_611_3967961:2("
lstm_611_3967963:
(
lstm_611_3967965:(#
dense_203_3967968:

dense_203_3967970:
identityѕб!dense_203/StatefulPartitionedCallб lstm_609/StatefulPartitionedCallб lstm_610/StatefulPartitionedCallб lstm_611/StatefulPartitionedCallІ
 lstm_609/StatefulPartitionedCallStatefulPartitionedCallinputslstm_609_3967947lstm_609_3967949lstm_609_3967951*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906«
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3967954lstm_610_3967956lstm_610_3967958*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741ф
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3967961lstm_611_3967963lstm_611_3967965*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576џ
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3967968dense_203_3967970*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ш

ц
0__inference_sequential_203_layer_call_fn_3968026
lstm_609_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967974o
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
_user_specified_namelstm_609_input
РJ
Б
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970261

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d╚A
.lstm_cell_610_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_610_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_610/BiasAdd/ReadVariableOpб#lstm_cell_610/MatMul/ReadVariableOpб%lstm_cell_610/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3970177*
condR
while_cond_3970176*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_3969132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	љG
4while_lstm_cell_609_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_609/BiasAdd/ReadVariableOpб)while/lstm_cell_609/MatMul/ReadVariableOpб+while/lstm_cell_609/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970118

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d╚A
.lstm_cell_610_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_610_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_610/BiasAdd/ReadVariableOpб#lstm_cell_610/MatMul/ReadVariableOpб%lstm_cell_610/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3970034*
condR
while_cond_3970033*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970994

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
Э
┤
*__inference_lstm_611_layer_call_fn_3970305

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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576o
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
┬

Ў
%__inference_signature_wrapper_3968121
lstm_609_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
"__inference__wrapped_model_3965861o
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
_user_specified_namelstm_609_input
РJ
Б
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	љA
.lstm_cell_609_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_609_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_609/BiasAdd/ReadVariableOpб#lstm_cell_609/MatMul/ReadVariableOpб%lstm_cell_609/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3967822*
condR
while_cond_3967821*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Л8
┌
while_body_3967657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_610/BiasAdd/ReadVariableOpб)while/lstm_cell_610/MatMul/ReadVariableOpб+while/lstm_cell_610/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
■Ђ
Џ
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968602

inputsH
5lstm_609_lstm_cell_609_matmul_readvariableop_resource:	љJ
7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource:	dљE
6lstm_609_lstm_cell_609_biasadd_readvariableop_resource:	љH
5lstm_610_lstm_cell_610_matmul_readvariableop_resource:	d╚J
7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource:	2╚E
6lstm_610_lstm_cell_610_biasadd_readvariableop_resource:	╚G
5lstm_611_lstm_cell_611_matmul_readvariableop_resource:2(I
7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource:
(D
6lstm_611_lstm_cell_611_biasadd_readvariableop_resource:(:
(dense_203_matmul_readvariableop_resource:
7
)dense_203_biasadd_readvariableop_resource:
identityѕб dense_203/BiasAdd/ReadVariableOpбdense_203/MatMul/ReadVariableOpб-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpб,lstm_609/lstm_cell_609/MatMul/ReadVariableOpб.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpбlstm_609/whileб-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpб,lstm_610/lstm_cell_610/MatMul/ReadVariableOpб.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpбlstm_610/whileб-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpб,lstm_611/lstm_cell_611/MatMul/ReadVariableOpб.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpбlstm_611/whileD
lstm_609/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_609/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_609/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_609/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_609/strided_sliceStridedSlicelstm_609/Shape:output:0%lstm_609/strided_slice/stack:output:0'lstm_609/strided_slice/stack_1:output:0'lstm_609/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_609/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_609/zeros/packedPacklstm_609/strided_slice:output:0 lstm_609/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_609/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_609/zerosFilllstm_609/zeros/packed:output:0lstm_609/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_609/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_609/zeros_1/packedPacklstm_609/strided_slice:output:0"lstm_609/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_609/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_609/zeros_1Fill lstm_609/zeros_1/packed:output:0lstm_609/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_609/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_609/transpose	Transposeinputs lstm_609/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_609/Shape_1Shapelstm_609/transpose:y:0*
T0*
_output_shapes
:h
lstm_609/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_609/strided_slice_1StridedSlicelstm_609/Shape_1:output:0'lstm_609/strided_slice_1/stack:output:0)lstm_609/strided_slice_1/stack_1:output:0)lstm_609/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_609/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_609/TensorArrayV2TensorListReserve-lstm_609/TensorArrayV2/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_609/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_609/transpose:y:0Glstm_609/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_609/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_609/strided_slice_2StridedSlicelstm_609/transpose:y:0'lstm_609/strided_slice_2/stack:output:0)lstm_609/strided_slice_2/stack_1:output:0)lstm_609/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_609/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp5lstm_609_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_609/lstm_cell_609/MatMulMatMul!lstm_609/strided_slice_2:output:04lstm_609/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_609/lstm_cell_609/MatMul_1MatMullstm_609/zeros:output:06lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_609/lstm_cell_609/addAddV2'lstm_609/lstm_cell_609/MatMul:product:0)lstm_609/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_609/lstm_cell_609/BiasAddBiasAddlstm_609/lstm_cell_609/add:z:05lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_609/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_609/lstm_cell_609/splitSplit/lstm_609/lstm_cell_609/split/split_dim:output:0'lstm_609/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_609/lstm_cell_609/SigmoidSigmoid%lstm_609/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_609/lstm_cell_609/Sigmoid_1Sigmoid%lstm_609/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_609/lstm_cell_609/mulMul$lstm_609/lstm_cell_609/Sigmoid_1:y:0lstm_609/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_609/lstm_cell_609/ReluRelu%lstm_609/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dц
lstm_609/lstm_cell_609/mul_1Mul"lstm_609/lstm_cell_609/Sigmoid:y:0)lstm_609/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_609/lstm_cell_609/add_1AddV2lstm_609/lstm_cell_609/mul:z:0 lstm_609/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_609/lstm_cell_609/Sigmoid_2Sigmoid%lstm_609/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dy
lstm_609/lstm_cell_609/Relu_1Relu lstm_609/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_609/lstm_cell_609/mul_2Mul$lstm_609/lstm_cell_609/Sigmoid_2:y:0+lstm_609/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_609/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_609/TensorArrayV2_1TensorListReserve/lstm_609/TensorArrayV2_1/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_609/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_609/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_609/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_609/whileWhile$lstm_609/while/loop_counter:output:0*lstm_609/while/maximum_iterations:output:0lstm_609/time:output:0!lstm_609/TensorArrayV2_1:handle:0lstm_609/zeros:output:0lstm_609/zeros_1:output:0!lstm_609/strided_slice_1:output:0@lstm_609/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_609_lstm_cell_609_matmul_readvariableop_resource7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
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
lstm_609_while_body_3968234*'
condR
lstm_609_while_cond_3968233*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_609/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_609/TensorArrayV2Stack/TensorListStackTensorListStacklstm_609/while:output:3Blstm_609/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_609/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_609/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_609/strided_slice_3StridedSlice4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_609/strided_slice_3/stack:output:0)lstm_609/strided_slice_3/stack_1:output:0)lstm_609/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_609/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_609/transpose_1	Transpose4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_609/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_609/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_610/ShapeShapelstm_609/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_610/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_610/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_610/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_610/strided_sliceStridedSlicelstm_610/Shape:output:0%lstm_610/strided_slice/stack:output:0'lstm_610/strided_slice/stack_1:output:0'lstm_610/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_610/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_610/zeros/packedPacklstm_610/strided_slice:output:0 lstm_610/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_610/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_610/zerosFilllstm_610/zeros/packed:output:0lstm_610/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_610/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_610/zeros_1/packedPacklstm_610/strided_slice:output:0"lstm_610/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_610/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_610/zeros_1Fill lstm_610/zeros_1/packed:output:0lstm_610/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_610/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_610/transpose	Transposelstm_609/transpose_1:y:0 lstm_610/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_610/Shape_1Shapelstm_610/transpose:y:0*
T0*
_output_shapes
:h
lstm_610/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_610/strided_slice_1StridedSlicelstm_610/Shape_1:output:0'lstm_610/strided_slice_1/stack:output:0)lstm_610/strided_slice_1/stack_1:output:0)lstm_610/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_610/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_610/TensorArrayV2TensorListReserve-lstm_610/TensorArrayV2/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_610/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_610/transpose:y:0Glstm_610/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_610/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_610/strided_slice_2StridedSlicelstm_610/transpose:y:0'lstm_610/strided_slice_2/stack:output:0)lstm_610/strided_slice_2/stack_1:output:0)lstm_610/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_610/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp5lstm_610_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_610/lstm_cell_610/MatMulMatMul!lstm_610/strided_slice_2:output:04lstm_610/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_610/lstm_cell_610/MatMul_1MatMullstm_610/zeros:output:06lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_610/lstm_cell_610/addAddV2'lstm_610/lstm_cell_610/MatMul:product:0)lstm_610/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_610/lstm_cell_610/BiasAddBiasAddlstm_610/lstm_cell_610/add:z:05lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_610/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_610/lstm_cell_610/splitSplit/lstm_610/lstm_cell_610/split/split_dim:output:0'lstm_610/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_610/lstm_cell_610/SigmoidSigmoid%lstm_610/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_610/lstm_cell_610/Sigmoid_1Sigmoid%lstm_610/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_610/lstm_cell_610/mulMul$lstm_610/lstm_cell_610/Sigmoid_1:y:0lstm_610/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_610/lstm_cell_610/ReluRelu%lstm_610/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_610/lstm_cell_610/mul_1Mul"lstm_610/lstm_cell_610/Sigmoid:y:0)lstm_610/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_610/lstm_cell_610/add_1AddV2lstm_610/lstm_cell_610/mul:z:0 lstm_610/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_610/lstm_cell_610/Sigmoid_2Sigmoid%lstm_610/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2y
lstm_610/lstm_cell_610/Relu_1Relu lstm_610/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_610/lstm_cell_610/mul_2Mul$lstm_610/lstm_cell_610/Sigmoid_2:y:0+lstm_610/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_610/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_610/TensorArrayV2_1TensorListReserve/lstm_610/TensorArrayV2_1/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_610/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_610/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_610/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_610/whileWhile$lstm_610/while/loop_counter:output:0*lstm_610/while/maximum_iterations:output:0lstm_610/time:output:0!lstm_610/TensorArrayV2_1:handle:0lstm_610/zeros:output:0lstm_610/zeros_1:output:0!lstm_610/strided_slice_1:output:0@lstm_610/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_610_lstm_cell_610_matmul_readvariableop_resource7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
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
lstm_610_while_body_3968373*'
condR
lstm_610_while_cond_3968372*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_610/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_610/TensorArrayV2Stack/TensorListStackTensorListStacklstm_610/while:output:3Blstm_610/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_610/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_610/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_610/strided_slice_3StridedSlice4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_610/strided_slice_3/stack:output:0)lstm_610/strided_slice_3/stack_1:output:0)lstm_610/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_610/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_610/transpose_1	Transpose4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_610/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_610/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_611/ShapeShapelstm_610/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_611/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_611/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_611/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_611/strided_sliceStridedSlicelstm_611/Shape:output:0%lstm_611/strided_slice/stack:output:0'lstm_611/strided_slice/stack_1:output:0'lstm_611/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_611/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_611/zeros/packedPacklstm_611/strided_slice:output:0 lstm_611/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_611/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_611/zerosFilllstm_611/zeros/packed:output:0lstm_611/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_611/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_611/zeros_1/packedPacklstm_611/strided_slice:output:0"lstm_611/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_611/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_611/zeros_1Fill lstm_611/zeros_1/packed:output:0lstm_611/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_611/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_611/transpose	Transposelstm_610/transpose_1:y:0 lstm_611/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_611/Shape_1Shapelstm_611/transpose:y:0*
T0*
_output_shapes
:h
lstm_611/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_611/strided_slice_1StridedSlicelstm_611/Shape_1:output:0'lstm_611/strided_slice_1/stack:output:0)lstm_611/strided_slice_1/stack_1:output:0)lstm_611/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_611/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_611/TensorArrayV2TensorListReserve-lstm_611/TensorArrayV2/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_611/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_611/transpose:y:0Glstm_611/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_611/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_611/strided_slice_2StridedSlicelstm_611/transpose:y:0'lstm_611/strided_slice_2/stack:output:0)lstm_611/strided_slice_2/stack_1:output:0)lstm_611/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_611/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp5lstm_611_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_611/lstm_cell_611/MatMulMatMul!lstm_611/strided_slice_2:output:04lstm_611/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_611/lstm_cell_611/MatMul_1MatMullstm_611/zeros:output:06lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_611/lstm_cell_611/addAddV2'lstm_611/lstm_cell_611/MatMul:product:0)lstm_611/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_611/lstm_cell_611/BiasAddBiasAddlstm_611/lstm_cell_611/add:z:05lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_611/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_611/lstm_cell_611/splitSplit/lstm_611/lstm_cell_611/split/split_dim:output:0'lstm_611/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_611/lstm_cell_611/SigmoidSigmoid%lstm_611/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_611/lstm_cell_611/Sigmoid_1Sigmoid%lstm_611/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_611/lstm_cell_611/mulMul$lstm_611/lstm_cell_611/Sigmoid_1:y:0lstm_611/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_611/lstm_cell_611/ReluRelu%lstm_611/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_611/lstm_cell_611/mul_1Mul"lstm_611/lstm_cell_611/Sigmoid:y:0)lstm_611/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_611/lstm_cell_611/add_1AddV2lstm_611/lstm_cell_611/mul:z:0 lstm_611/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_611/lstm_cell_611/Sigmoid_2Sigmoid%lstm_611/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
y
lstm_611/lstm_cell_611/Relu_1Relu lstm_611/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_611/lstm_cell_611/mul_2Mul$lstm_611/lstm_cell_611/Sigmoid_2:y:0+lstm_611/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_611/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_611/TensorArrayV2_1TensorListReserve/lstm_611/TensorArrayV2_1/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_611/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_611/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_611/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_611/whileWhile$lstm_611/while/loop_counter:output:0*lstm_611/while/maximum_iterations:output:0lstm_611/time:output:0!lstm_611/TensorArrayV2_1:handle:0lstm_611/zeros:output:0lstm_611/zeros_1:output:0!lstm_611/strided_slice_1:output:0@lstm_611/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_611_lstm_cell_611_matmul_readvariableop_resource7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
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
lstm_611_while_body_3968512*'
condR
lstm_611_while_cond_3968511*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_611/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_611/TensorArrayV2Stack/TensorListStackTensorListStacklstm_611/while:output:3Blstm_611/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_611/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_611/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_611/strided_slice_3StridedSlice4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_611/strided_slice_3/stack:output:0)lstm_611/strided_slice_3/stack_1:output:0)lstm_611/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_611/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_611/transpose_1	Transpose4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_611/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_611/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_203/MatMul/ReadVariableOpReadVariableOp(dense_203_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_203/MatMulMatMul!lstm_611/strided_slice_3:output:0'dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_203/BiasAdd/ReadVariableOpReadVariableOp)dense_203_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_203/BiasAddBiasAdddense_203/MatMul:product:0(dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_203/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_203/BiasAdd/ReadVariableOp ^dense_203/MatMul/ReadVariableOp.^lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-^lstm_609/lstm_cell_609/MatMul/ReadVariableOp/^lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp^lstm_609/while.^lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-^lstm_610/lstm_cell_610/MatMul/ReadVariableOp/^lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp^lstm_610/while.^lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-^lstm_611/lstm_cell_611/MatMul/ReadVariableOp/^lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp^lstm_611/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_203/BiasAdd/ReadVariableOp dense_203/BiasAdd/ReadVariableOp2B
dense_203/MatMul/ReadVariableOpdense_203/MatMul/ReadVariableOp2^
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp2\
,lstm_609/lstm_cell_609/MatMul/ReadVariableOp,lstm_609/lstm_cell_609/MatMul/ReadVariableOp2`
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp2 
lstm_609/whilelstm_609/while2^
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp2\
,lstm_610/lstm_cell_610/MatMul/ReadVariableOp,lstm_610/lstm_cell_610/MatMul/ReadVariableOp2`
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp2 
lstm_610/whilelstm_610/while2^
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp2\
,lstm_611/lstm_cell_611/MatMul/ReadVariableOp,lstm_611/lstm_cell_611/MatMul/ReadVariableOp2`
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp2 
lstm_611/whilelstm_611/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ѕ#
в
while_body_3966833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_611_3966857_0:2(/
while_lstm_cell_611_3966859_0:
(+
while_lstm_cell_611_3966861_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_611_3966857:2(-
while_lstm_cell_611_3966859:
()
while_lstm_cell_611_3966861:(ѕб+while/lstm_cell_611/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_611_3966857_0while_lstm_cell_611_3966859_0while_lstm_cell_611_3966861_0*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_611/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_611/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_611/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_611_3966857while_lstm_cell_611_3966857_0"<
while_lstm_cell_611_3966859while_lstm_cell_611_3966859_0"<
while_lstm_cell_611_3966861while_lstm_cell_611_3966861_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_611/StatefulPartitionedCall+while/lstm_cell_611/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966011

inputs(
lstm_cell_609_3965929:	љ(
lstm_cell_609_3965931:	dљ$
lstm_cell_609_3965933:	љ
identityѕб%lstm_cell_609/StatefulPartitionedCallбwhile;
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
%lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_609_3965929lstm_cell_609_3965931lstm_cell_609_3965933*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_609_3965929lstm_cell_609_3965931lstm_cell_609_3965933*
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
while_body_3965942*
condR
while_cond_3965941*K
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
NoOpNoOp&^lstm_cell_609/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2N
%lstm_cell_609/StatefulPartitionedCall%lstm_cell_609/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
и

Ч
lstm_609_while_cond_3968660.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_30
,lstm_609_while_less_lstm_609_strided_slice_1G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder0G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder1G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder2G
Clstm_609_while_lstm_609_while_cond_3968660___redundant_placeholder3
lstm_609_while_identity
є
lstm_609/while/LessLesslstm_609_while_placeholder,lstm_609_while_less_lstm_609_strided_slice_1*
T0*
_output_shapes
: ]
lstm_609/while/IdentityIdentitylstm_609/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_609_while_identity lstm_609/while/Identity:output:0*(
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970591
inputs_0>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_611/BiasAdd/ReadVariableOpб#lstm_cell_611/MatMul/ReadVariableOpб%lstm_cell_611/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970507*
condR
while_cond_3970506*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  2
"
_user_specified_name
inputs/0
─8
н
while_body_3970650
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_611/BiasAdd/ReadVariableOpб)while/lstm_cell_611/MatMul/ReadVariableOpб+while/lstm_cell_611/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d╚A
.lstm_cell_610_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_610_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_610/BiasAdd/ReadVariableOpб#lstm_cell_610/MatMul/ReadVariableOpб%lstm_cell_610/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3967126*
condR
while_cond_3967125*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
║
╚
while_cond_3969890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969890___redundant_placeholder05
1while_while_cond_3969890___redundant_placeholder15
1while_while_cond_3969890___redundant_placeholder25
1while_while_cond_3969890___redundant_placeholder3
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
ЬT
п
*sequential_203_lstm_611_while_body_3965771L
Hsequential_203_lstm_611_while_sequential_203_lstm_611_while_loop_counterR
Nsequential_203_lstm_611_while_sequential_203_lstm_611_while_maximum_iterations-
)sequential_203_lstm_611_while_placeholder/
+sequential_203_lstm_611_while_placeholder_1/
+sequential_203_lstm_611_while_placeholder_2/
+sequential_203_lstm_611_while_placeholder_3K
Gsequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1_0ѕ
Ѓsequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor_0^
Lsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0:2(`
Nsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
([
Msequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0:(*
&sequential_203_lstm_611_while_identity,
(sequential_203_lstm_611_while_identity_1,
(sequential_203_lstm_611_while_identity_2,
(sequential_203_lstm_611_while_identity_3,
(sequential_203_lstm_611_while_identity_4,
(sequential_203_lstm_611_while_identity_5I
Esequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1є
Ђsequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor\
Jsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource:2(^
Lsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource:
(Y
Ksequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource:(ѕбBsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpбAsequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpбCsequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpа
Osequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   Ъ
Asequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor_0)sequential_203_lstm_611_while_placeholderXsequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╬
Asequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOpLsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0Ѓ
2sequential_203/lstm_611/while/lstm_cell_611/MatMulMatMulHsequential_203/lstm_611/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (м
Csequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOpNsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0Ж
4sequential_203/lstm_611/while/lstm_cell_611/MatMul_1MatMul+sequential_203_lstm_611_while_placeholder_2Ksequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (У
/sequential_203/lstm_611/while/lstm_cell_611/addAddV2<sequential_203/lstm_611/while/lstm_cell_611/MatMul:product:0>sequential_203/lstm_611/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (╠
Bsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOpMsequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0ы
3sequential_203/lstm_611/while/lstm_cell_611/BiasAddBiasAdd3sequential_203/lstm_611/while/lstm_cell_611/add:z:0Jsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (}
;sequential_203/lstm_611/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_203/lstm_611/while/lstm_cell_611/splitSplitDsequential_203/lstm_611/while/lstm_cell_611/split/split_dim:output:0<sequential_203/lstm_611/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitг
3sequential_203/lstm_611/while/lstm_cell_611/SigmoidSigmoid:sequential_203/lstm_611/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
«
5sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_1Sigmoid:sequential_203/lstm_611/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
л
/sequential_203/lstm_611/while/lstm_cell_611/mulMul9sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_1:y:0+sequential_203_lstm_611_while_placeholder_3*
T0*'
_output_shapes
:         
д
0sequential_203/lstm_611/while/lstm_cell_611/ReluRelu:sequential_203/lstm_611/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
с
1sequential_203/lstm_611/while/lstm_cell_611/mul_1Mul7sequential_203/lstm_611/while/lstm_cell_611/Sigmoid:y:0>sequential_203/lstm_611/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
п
1sequential_203/lstm_611/while/lstm_cell_611/add_1AddV23sequential_203/lstm_611/while/lstm_cell_611/mul:z:05sequential_203/lstm_611/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
«
5sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_2Sigmoid:sequential_203/lstm_611/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
Б
2sequential_203/lstm_611/while/lstm_cell_611/Relu_1Relu5sequential_203/lstm_611/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
у
1sequential_203/lstm_611/while/lstm_cell_611/mul_2Mul9sequential_203/lstm_611/while/lstm_cell_611/Sigmoid_2:y:0@sequential_203/lstm_611/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
д
Bsequential_203/lstm_611/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_203_lstm_611_while_placeholder_1)sequential_203_lstm_611_while_placeholder5sequential_203/lstm_611/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_203/lstm_611/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_203/lstm_611/while/addAddV2)sequential_203_lstm_611_while_placeholder,sequential_203/lstm_611/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_203/lstm_611/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_203/lstm_611/while/add_1AddV2Hsequential_203_lstm_611_while_sequential_203_lstm_611_while_loop_counter.sequential_203/lstm_611/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_203/lstm_611/while/IdentityIdentity'sequential_203/lstm_611/while/add_1:z:0#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_203/lstm_611/while/Identity_1IdentityNsequential_203_lstm_611_while_sequential_203_lstm_611_while_maximum_iterations#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: А
(sequential_203/lstm_611/while/Identity_2Identity%sequential_203/lstm_611/while/add:z:0#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_203/lstm_611/while/Identity_3IdentityRsequential_203/lstm_611/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_203/lstm_611/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_203/lstm_611/while/Identity_4Identity5sequential_203/lstm_611/while/lstm_cell_611/mul_2:z:0#^sequential_203/lstm_611/while/NoOp*
T0*'
_output_shapes
:         
┬
(sequential_203/lstm_611/while/Identity_5Identity5sequential_203/lstm_611/while/lstm_cell_611/add_1:z:0#^sequential_203/lstm_611/while/NoOp*
T0*'
_output_shapes
:         
│
"sequential_203/lstm_611/while/NoOpNoOpC^sequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpB^sequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpD^sequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_203_lstm_611_while_identity/sequential_203/lstm_611/while/Identity:output:0"]
(sequential_203_lstm_611_while_identity_11sequential_203/lstm_611/while/Identity_1:output:0"]
(sequential_203_lstm_611_while_identity_21sequential_203/lstm_611/while/Identity_2:output:0"]
(sequential_203_lstm_611_while_identity_31sequential_203/lstm_611/while/Identity_3:output:0"]
(sequential_203_lstm_611_while_identity_41sequential_203/lstm_611/while/Identity_4:output:0"]
(sequential_203_lstm_611_while_identity_51sequential_203/lstm_611/while/Identity_5:output:0"ю
Ksequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resourceMsequential_203_lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0"ъ
Lsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resourceNsequential_203_lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0"џ
Jsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resourceLsequential_203_lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0"љ
Esequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1Gsequential_203_lstm_611_while_sequential_203_lstm_611_strided_slice_1_0"і
Ђsequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensorЃsequential_203_lstm_611_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_611_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2ѕ
Bsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpBsequential_203/lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp2є
Asequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpAsequential_203/lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2і
Csequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpCsequential_203/lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
─8
н
while_body_3970364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_611/BiasAdd/ReadVariableOpб)while/lstm_cell_611/MatMul/ReadVariableOpб+while/lstm_cell_611/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969645

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	љA
.lstm_cell_609_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_609_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_609/BiasAdd/ReadVariableOpб#lstm_cell_609/MatMul/ReadVariableOpб%lstm_cell_609/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969561*
condR
while_cond_3969560*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ж
Ѓ
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968086
lstm_609_input#
lstm_609_3968059:	љ#
lstm_609_3968061:	dљ
lstm_609_3968063:	љ#
lstm_610_3968066:	d╚#
lstm_610_3968068:	2╚
lstm_610_3968070:	╚"
lstm_611_3968073:2("
lstm_611_3968075:
(
lstm_611_3968077:(#
dense_203_3968080:

dense_203_3968082:
identityѕб!dense_203/StatefulPartitionedCallб lstm_609/StatefulPartitionedCallб lstm_610/StatefulPartitionedCallб lstm_611/StatefulPartitionedCallЊ
 lstm_609/StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputlstm_609_3968059lstm_609_3968061lstm_609_3968063*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967906«
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3968066lstm_610_3968068lstm_610_3968070*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741ф
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3968073lstm_611_3968075lstm_611_3968077*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576џ
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3968080dense_203_3968082*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_609_input
аK
Ц
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969359
inputs_0?
,lstm_cell_609_matmul_readvariableop_resource:	љA
.lstm_cell_609_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_609_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_609/BiasAdd/ReadVariableOpб#lstm_cell_609/MatMul/ReadVariableOpб%lstm_cell_609/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969275*
condR
while_cond_3969274*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
█
е
*sequential_203_lstm_611_while_cond_3965770L
Hsequential_203_lstm_611_while_sequential_203_lstm_611_while_loop_counterR
Nsequential_203_lstm_611_while_sequential_203_lstm_611_while_maximum_iterations-
)sequential_203_lstm_611_while_placeholder/
+sequential_203_lstm_611_while_placeholder_1/
+sequential_203_lstm_611_while_placeholder_2/
+sequential_203_lstm_611_while_placeholder_3N
Jsequential_203_lstm_611_while_less_sequential_203_lstm_611_strided_slice_1e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder0e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder1e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder2e
asequential_203_lstm_611_while_sequential_203_lstm_611_while_cond_3965770___redundant_placeholder3*
&sequential_203_lstm_611_while_identity
┬
"sequential_203/lstm_611/while/LessLess)sequential_203_lstm_611_while_placeholderJsequential_203_lstm_611_while_less_sequential_203_lstm_611_strided_slice_1*
T0*
_output_shapes
: {
&sequential_203/lstm_611/while/IdentityIdentity&sequential_203/lstm_611/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_203_lstm_611_while_identity/sequential_203/lstm_611/while/Identity:output:0*(
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

lstm_609_while_body_3968234.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_3-
)lstm_609_while_lstm_609_strided_slice_1_0i
elstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0:	љR
?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљM
>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
lstm_609_while_identity
lstm_609_while_identity_1
lstm_609_while_identity_2
lstm_609_while_identity_3
lstm_609_while_identity_4
lstm_609_while_identity_5+
'lstm_609_while_lstm_609_strided_slice_1g
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorN
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource:	љP
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource:	dљK
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpб2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpб4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpЉ
@lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       М
2lstm_609/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0lstm_609_while_placeholderIlstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0▒
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0О
#lstm_609/while/lstm_cell_609/MatMulMatMul9lstm_609/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љх
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Й
%lstm_609/while/lstm_cell_609/MatMul_1MatMullstm_609_while_placeholder_2<lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ╝
 lstm_609/while/lstm_cell_609/addAddV2-lstm_609/while/lstm_cell_609/MatMul:product:0/lstm_609/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љ»
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0┼
$lstm_609/while/lstm_cell_609/BiasAddBiasAdd$lstm_609/while/lstm_cell_609/add:z:0;lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љn
,lstm_609/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_609/while/lstm_cell_609/splitSplit5lstm_609/while/lstm_cell_609/split/split_dim:output:0-lstm_609/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitј
$lstm_609/while/lstm_cell_609/SigmoidSigmoid+lstm_609/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dљ
&lstm_609/while/lstm_cell_609/Sigmoid_1Sigmoid+lstm_609/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dБ
 lstm_609/while/lstm_cell_609/mulMul*lstm_609/while/lstm_cell_609/Sigmoid_1:y:0lstm_609_while_placeholder_3*
T0*'
_output_shapes
:         dѕ
!lstm_609/while/lstm_cell_609/ReluRelu+lstm_609/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dХ
"lstm_609/while/lstm_cell_609/mul_1Mul(lstm_609/while/lstm_cell_609/Sigmoid:y:0/lstm_609/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dФ
"lstm_609/while/lstm_cell_609/add_1AddV2$lstm_609/while/lstm_cell_609/mul:z:0&lstm_609/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dљ
&lstm_609/while/lstm_cell_609/Sigmoid_2Sigmoid+lstm_609/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dЁ
#lstm_609/while/lstm_cell_609/Relu_1Relu&lstm_609/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         d║
"lstm_609/while/lstm_cell_609/mul_2Mul*lstm_609/while/lstm_cell_609/Sigmoid_2:y:01lstm_609/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dЖ
3lstm_609/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_609_while_placeholder_1lstm_609_while_placeholder&lstm_609/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_609/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_609/while/addAddV2lstm_609_while_placeholderlstm_609/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_609/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_609/while/add_1AddV2*lstm_609_while_lstm_609_while_loop_counterlstm_609/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_609/while/IdentityIdentitylstm_609/while/add_1:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: ј
lstm_609/while/Identity_1Identity0lstm_609_while_lstm_609_while_maximum_iterations^lstm_609/while/NoOp*
T0*
_output_shapes
: t
lstm_609/while/Identity_2Identitylstm_609/while/add:z:0^lstm_609/while/NoOp*
T0*
_output_shapes
: А
lstm_609/while/Identity_3IdentityClstm_609/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_609/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_609/while/Identity_4Identity&lstm_609/while/lstm_cell_609/mul_2:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:         dЋ
lstm_609/while/Identity_5Identity&lstm_609/while/lstm_cell_609/add_1:z:0^lstm_609/while/NoOp*
T0*'
_output_shapes
:         dэ
lstm_609/while/NoOpNoOp4^lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3^lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp5^lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_609_while_identity lstm_609/while/Identity:output:0"?
lstm_609_while_identity_1"lstm_609/while/Identity_1:output:0"?
lstm_609_while_identity_2"lstm_609/while/Identity_2:output:0"?
lstm_609_while_identity_3"lstm_609/while/Identity_3:output:0"?
lstm_609_while_identity_4"lstm_609/while/Identity_4:output:0"?
lstm_609_while_identity_5"lstm_609/while/Identity_5:output:0"T
'lstm_609_while_lstm_609_strided_slice_1)lstm_609_while_lstm_609_strided_slice_1_0"~
<lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource>lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0"ђ
=lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource?lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0"|
;lstm_609_while_lstm_cell_609_matmul_readvariableop_resource=lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0"╠
clstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensorelstm_609_while_tensorarrayv2read_tensorlistgetitem_lstm_609_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2j
3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp3lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp2h
2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2l
4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp4lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3967275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967275___redundant_placeholder05
1while_while_cond_3967275___redundant_placeholder15
1while_while_cond_3967275___redundant_placeholder25
1while_while_cond_3967275___redundant_placeholder3
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
while_cond_3969747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969747___redundant_placeholder05
1while_while_cond_3969747___redundant_placeholder15
1while_while_cond_3969747___redundant_placeholder25
1while_while_cond_3969747___redundant_placeholder3
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969832
inputs_0?
,lstm_cell_610_matmul_readvariableop_resource:	d╚A
.lstm_cell_610_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_610_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_610/BiasAdd/ReadVariableOpб#lstm_cell_610/MatMul/ReadVariableOpб%lstm_cell_610/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3969748*
condR
while_cond_3969747*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
В
ш
/__inference_lstm_cell_611_layer_call_fn_3971126

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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774o
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
Ж
Ѓ
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968056
lstm_609_input#
lstm_609_3968029:	љ#
lstm_609_3968031:	dљ
lstm_609_3968033:	љ#
lstm_610_3968036:	d╚#
lstm_610_3968038:	2╚
lstm_610_3968040:	╚"
lstm_611_3968043:2("
lstm_611_3968045:
(
lstm_611_3968047:(#
dense_203_3968050:

dense_203_3968052:
identityѕб!dense_203/StatefulPartitionedCallб lstm_609/StatefulPartitionedCallб lstm_610/StatefulPartitionedCallб lstm_611/StatefulPartitionedCallЊ
 lstm_609/StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputlstm_609_3968029lstm_609_3968031lstm_609_3968033*
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060«
 lstm_610/StatefulPartitionedCallStatefulPartitionedCall)lstm_609/StatefulPartitionedCall:output:0lstm_610_3968036lstm_610_3968038lstm_610_3968040*
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967210ф
 lstm_611/StatefulPartitionedCallStatefulPartitionedCall)lstm_610/StatefulPartitionedCall:output:0lstm_611_3968043lstm_611_3968045lstm_611_3968047*
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360џ
!dense_203/StatefulPartitionedCallStatefulPartitionedCall)lstm_611/StatefulPartitionedCall:output:0dense_203_3968050dense_203_3968052*
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378y
IdentityIdentity*dense_203/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         М
NoOpNoOp"^dense_203/StatefulPartitionedCall!^lstm_609/StatefulPartitionedCall!^lstm_610/StatefulPartitionedCall!^lstm_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2F
!dense_203/StatefulPartitionedCall!dense_203/StatefulPartitionedCall2D
 lstm_609/StatefulPartitionedCall lstm_609/StatefulPartitionedCall2D
 lstm_610/StatefulPartitionedCall lstm_610/StatefulPartitionedCall2D
 lstm_611/StatefulPartitionedCall lstm_611/StatefulPartitionedCall:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_609_input
РJ
Б
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	љA
.lstm_cell_609_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_609_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_609/BiasAdd/ReadVariableOpб#lstm_cell_609/MatMul/ReadVariableOpб%lstm_cell_609/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3966976*
condR
while_cond_3966975*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Г
╣
*__inference_lstm_610_layer_call_fn_3969656
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966361|
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
љ
Х
*__inference_lstm_611_layer_call_fn_3970272
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966711o
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
Э
┤
*__inference_lstm_611_layer_call_fn_3970294

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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967360o
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
─8
н
while_body_3970507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_611/BiasAdd/ReadVariableOpб)while/lstm_cell_611/MatMul/ReadVariableOpб+while/lstm_cell_611/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
/__inference_lstm_cell_609_layer_call_fn_3970913

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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928o
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
while_cond_3970176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970176___redundant_placeholder05
1while_while_cond_3970176___redundant_placeholder15
1while_while_cond_3970176___redundant_placeholder25
1while_while_cond_3970176___redundant_placeholder3
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
чT
я
*sequential_203_lstm_610_while_body_3965632L
Hsequential_203_lstm_610_while_sequential_203_lstm_610_while_loop_counterR
Nsequential_203_lstm_610_while_sequential_203_lstm_610_while_maximum_iterations-
)sequential_203_lstm_610_while_placeholder/
+sequential_203_lstm_610_while_placeholder_1/
+sequential_203_lstm_610_while_placeholder_2/
+sequential_203_lstm_610_while_placeholder_3K
Gsequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1_0ѕ
Ѓsequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚a
Nsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚\
Msequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚*
&sequential_203_lstm_610_while_identity,
(sequential_203_lstm_610_while_identity_1,
(sequential_203_lstm_610_while_identity_2,
(sequential_203_lstm_610_while_identity_3,
(sequential_203_lstm_610_while_identity_4,
(sequential_203_lstm_610_while_identity_5I
Esequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1є
Ђsequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor]
Jsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource:	d╚_
Lsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚Z
Ksequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕбBsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpбAsequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpбCsequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpа
Osequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ъ
Asequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor_0)sequential_203_lstm_610_while_placeholderXsequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0¤
Asequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOpLsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0ё
2sequential_203/lstm_610/while/lstm_cell_610/MatMulMatMulHsequential_203/lstm_610/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚М
Csequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOpNsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0в
4sequential_203/lstm_610/while/lstm_cell_610/MatMul_1MatMul+sequential_203_lstm_610_while_placeholder_2Ksequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ж
/sequential_203/lstm_610/while/lstm_cell_610/addAddV2<sequential_203/lstm_610/while/lstm_cell_610/MatMul:product:0>sequential_203/lstm_610/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚═
Bsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOpMsequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0Ы
3sequential_203/lstm_610/while/lstm_cell_610/BiasAddBiasAdd3sequential_203/lstm_610/while/lstm_cell_610/add:z:0Jsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚}
;sequential_203/lstm_610/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_203/lstm_610/while/lstm_cell_610/splitSplitDsequential_203/lstm_610/while/lstm_cell_610/split/split_dim:output:0<sequential_203/lstm_610/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitг
3sequential_203/lstm_610/while/lstm_cell_610/SigmoidSigmoid:sequential_203/lstm_610/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2«
5sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_1Sigmoid:sequential_203/lstm_610/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2л
/sequential_203/lstm_610/while/lstm_cell_610/mulMul9sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_1:y:0+sequential_203_lstm_610_while_placeholder_3*
T0*'
_output_shapes
:         2д
0sequential_203/lstm_610/while/lstm_cell_610/ReluRelu:sequential_203/lstm_610/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2с
1sequential_203/lstm_610/while/lstm_cell_610/mul_1Mul7sequential_203/lstm_610/while/lstm_cell_610/Sigmoid:y:0>sequential_203/lstm_610/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2п
1sequential_203/lstm_610/while/lstm_cell_610/add_1AddV23sequential_203/lstm_610/while/lstm_cell_610/mul:z:05sequential_203/lstm_610/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2«
5sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_2Sigmoid:sequential_203/lstm_610/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2Б
2sequential_203/lstm_610/while/lstm_cell_610/Relu_1Relu5sequential_203/lstm_610/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2у
1sequential_203/lstm_610/while/lstm_cell_610/mul_2Mul9sequential_203/lstm_610/while/lstm_cell_610/Sigmoid_2:y:0@sequential_203/lstm_610/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2д
Bsequential_203/lstm_610/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_203_lstm_610_while_placeholder_1)sequential_203_lstm_610_while_placeholder5sequential_203/lstm_610/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_203/lstm_610/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_203/lstm_610/while/addAddV2)sequential_203_lstm_610_while_placeholder,sequential_203/lstm_610/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_203/lstm_610/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_203/lstm_610/while/add_1AddV2Hsequential_203_lstm_610_while_sequential_203_lstm_610_while_loop_counter.sequential_203/lstm_610/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_203/lstm_610/while/IdentityIdentity'sequential_203/lstm_610/while/add_1:z:0#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_203/lstm_610/while/Identity_1IdentityNsequential_203_lstm_610_while_sequential_203_lstm_610_while_maximum_iterations#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: А
(sequential_203/lstm_610/while/Identity_2Identity%sequential_203/lstm_610/while/add:z:0#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_203/lstm_610/while/Identity_3IdentityRsequential_203/lstm_610/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_203/lstm_610/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_203/lstm_610/while/Identity_4Identity5sequential_203/lstm_610/while/lstm_cell_610/mul_2:z:0#^sequential_203/lstm_610/while/NoOp*
T0*'
_output_shapes
:         2┬
(sequential_203/lstm_610/while/Identity_5Identity5sequential_203/lstm_610/while/lstm_cell_610/add_1:z:0#^sequential_203/lstm_610/while/NoOp*
T0*'
_output_shapes
:         2│
"sequential_203/lstm_610/while/NoOpNoOpC^sequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpB^sequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpD^sequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_203_lstm_610_while_identity/sequential_203/lstm_610/while/Identity:output:0"]
(sequential_203_lstm_610_while_identity_11sequential_203/lstm_610/while/Identity_1:output:0"]
(sequential_203_lstm_610_while_identity_21sequential_203/lstm_610/while/Identity_2:output:0"]
(sequential_203_lstm_610_while_identity_31sequential_203/lstm_610/while/Identity_3:output:0"]
(sequential_203_lstm_610_while_identity_41sequential_203/lstm_610/while/Identity_4:output:0"]
(sequential_203_lstm_610_while_identity_51sequential_203/lstm_610/while/Identity_5:output:0"ю
Ksequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resourceMsequential_203_lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0"ъ
Lsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resourceNsequential_203_lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0"џ
Jsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resourceLsequential_203_lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0"љ
Esequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1Gsequential_203_lstm_610_while_sequential_203_lstm_610_strided_slice_1_0"і
Ђsequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensorЃsequential_203_lstm_610_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_610_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2ѕ
Bsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpBsequential_203/lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp2є
Asequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpAsequential_203/lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2і
Csequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpCsequential_203/lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3966133
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_609_3966157_0:	љ0
while_lstm_cell_609_3966159_0:	dљ,
while_lstm_cell_609_3966161_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_609_3966157:	љ.
while_lstm_cell_609_3966159:	dљ*
while_lstm_cell_609_3966161:	љѕб+while/lstm_cell_609/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_609_3966157_0while_lstm_cell_609_3966159_0while_lstm_cell_609_3966161_0*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_609/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_609/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_609/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_609/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_609_3966157while_lstm_cell_609_3966157_0"<
while_lstm_cell_609_3966159while_lstm_cell_609_3966159_0"<
while_lstm_cell_609_3966161while_lstm_cell_609_3966161_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_609/StatefulPartitionedCall+while/lstm_cell_609/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
while_body_3970177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_610/BiasAdd/ReadVariableOpб)while/lstm_cell_610/MatMul/ReadVariableOpб+while/lstm_cell_610/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971060

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
while_body_3969748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_610/BiasAdd/ReadVariableOpб)while/lstm_cell_610/MatMul/ReadVariableOpб+while/lstm_cell_610/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
И╗
ы
"__inference__wrapped_model_3965861
lstm_609_inputW
Dsequential_203_lstm_609_lstm_cell_609_matmul_readvariableop_resource:	љY
Fsequential_203_lstm_609_lstm_cell_609_matmul_1_readvariableop_resource:	dљT
Esequential_203_lstm_609_lstm_cell_609_biasadd_readvariableop_resource:	љW
Dsequential_203_lstm_610_lstm_cell_610_matmul_readvariableop_resource:	d╚Y
Fsequential_203_lstm_610_lstm_cell_610_matmul_1_readvariableop_resource:	2╚T
Esequential_203_lstm_610_lstm_cell_610_biasadd_readvariableop_resource:	╚V
Dsequential_203_lstm_611_lstm_cell_611_matmul_readvariableop_resource:2(X
Fsequential_203_lstm_611_lstm_cell_611_matmul_1_readvariableop_resource:
(S
Esequential_203_lstm_611_lstm_cell_611_biasadd_readvariableop_resource:(I
7sequential_203_dense_203_matmul_readvariableop_resource:
F
8sequential_203_dense_203_biasadd_readvariableop_resource:
identityѕб/sequential_203/dense_203/BiasAdd/ReadVariableOpб.sequential_203/dense_203/MatMul/ReadVariableOpб<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpб;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOpб=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpбsequential_203/lstm_609/whileб<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpб;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOpб=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpбsequential_203/lstm_610/whileб<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpб;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOpб=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpбsequential_203/lstm_611/while[
sequential_203/lstm_609/ShapeShapelstm_609_input*
T0*
_output_shapes
:u
+sequential_203/lstm_609/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_203/lstm_609/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_203/lstm_609/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_203/lstm_609/strided_sliceStridedSlice&sequential_203/lstm_609/Shape:output:04sequential_203/lstm_609/strided_slice/stack:output:06sequential_203/lstm_609/strided_slice/stack_1:output:06sequential_203/lstm_609/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_203/lstm_609/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╗
$sequential_203/lstm_609/zeros/packedPack.sequential_203/lstm_609/strided_slice:output:0/sequential_203/lstm_609/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_203/lstm_609/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_203/lstm_609/zerosFill-sequential_203/lstm_609/zeros/packed:output:0,sequential_203/lstm_609/zeros/Const:output:0*
T0*'
_output_shapes
:         dj
(sequential_203/lstm_609/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d┐
&sequential_203/lstm_609/zeros_1/packedPack.sequential_203/lstm_609/strided_slice:output:01sequential_203/lstm_609/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_203/lstm_609/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_203/lstm_609/zeros_1Fill/sequential_203/lstm_609/zeros_1/packed:output:0.sequential_203/lstm_609/zeros_1/Const:output:0*
T0*'
_output_shapes
:         d{
&sequential_203/lstm_609/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
!sequential_203/lstm_609/transpose	Transposelstm_609_input/sequential_203/lstm_609/transpose/perm:output:0*
T0*+
_output_shapes
:         t
sequential_203/lstm_609/Shape_1Shape%sequential_203/lstm_609/transpose:y:0*
T0*
_output_shapes
:w
-sequential_203/lstm_609/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_609/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_609/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_203/lstm_609/strided_slice_1StridedSlice(sequential_203/lstm_609/Shape_1:output:06sequential_203/lstm_609/strided_slice_1/stack:output:08sequential_203/lstm_609/strided_slice_1/stack_1:output:08sequential_203/lstm_609/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_203/lstm_609/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_203/lstm_609/TensorArrayV2TensorListReserve<sequential_203/lstm_609/TensorArrayV2/element_shape:output:00sequential_203/lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       е
?sequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_203/lstm_609/transpose:y:0Vsequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_203/lstm_609/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_609/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_609/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_203/lstm_609/strided_slice_2StridedSlice%sequential_203/lstm_609/transpose:y:06sequential_203/lstm_609/strided_slice_2/stack:output:08sequential_203/lstm_609/strided_slice_2/stack_1:output:08sequential_203/lstm_609/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask┴
;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOpReadVariableOpDsequential_203_lstm_609_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0Я
,sequential_203/lstm_609/lstm_cell_609/MatMulMatMul0sequential_203/lstm_609/strided_slice_2:output:0Csequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ┼
=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOpFsequential_203_lstm_609_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0┌
.sequential_203/lstm_609/lstm_cell_609/MatMul_1MatMul&sequential_203/lstm_609/zeros:output:0Esequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љО
)sequential_203/lstm_609/lstm_cell_609/addAddV26sequential_203/lstm_609/lstm_cell_609/MatMul:product:08sequential_203/lstm_609/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љ┐
<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOpEsequential_203_lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0Я
-sequential_203/lstm_609/lstm_cell_609/BiasAddBiasAdd-sequential_203/lstm_609/lstm_cell_609/add:z:0Dsequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љw
5sequential_203/lstm_609/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_203/lstm_609/lstm_cell_609/splitSplit>sequential_203/lstm_609/lstm_cell_609/split/split_dim:output:06sequential_203/lstm_609/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitа
-sequential_203/lstm_609/lstm_cell_609/SigmoidSigmoid4sequential_203/lstm_609/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dб
/sequential_203/lstm_609/lstm_cell_609/Sigmoid_1Sigmoid4sequential_203/lstm_609/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         d┴
)sequential_203/lstm_609/lstm_cell_609/mulMul3sequential_203/lstm_609/lstm_cell_609/Sigmoid_1:y:0(sequential_203/lstm_609/zeros_1:output:0*
T0*'
_output_shapes
:         dџ
*sequential_203/lstm_609/lstm_cell_609/ReluRelu4sequential_203/lstm_609/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЛ
+sequential_203/lstm_609/lstm_cell_609/mul_1Mul1sequential_203/lstm_609/lstm_cell_609/Sigmoid:y:08sequential_203/lstm_609/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dк
+sequential_203/lstm_609/lstm_cell_609/add_1AddV2-sequential_203/lstm_609/lstm_cell_609/mul:z:0/sequential_203/lstm_609/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dб
/sequential_203/lstm_609/lstm_cell_609/Sigmoid_2Sigmoid4sequential_203/lstm_609/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dЌ
,sequential_203/lstm_609/lstm_cell_609/Relu_1Relu/sequential_203/lstm_609/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dН
+sequential_203/lstm_609/lstm_cell_609/mul_2Mul3sequential_203/lstm_609/lstm_cell_609/Sigmoid_2:y:0:sequential_203/lstm_609/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dє
5sequential_203/lstm_609/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ђ
'sequential_203/lstm_609/TensorArrayV2_1TensorListReserve>sequential_203/lstm_609/TensorArrayV2_1/element_shape:output:00sequential_203/lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_203/lstm_609/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_203/lstm_609/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_203/lstm_609/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_203/lstm_609/whileWhile3sequential_203/lstm_609/while/loop_counter:output:09sequential_203/lstm_609/while/maximum_iterations:output:0%sequential_203/lstm_609/time:output:00sequential_203/lstm_609/TensorArrayV2_1:handle:0&sequential_203/lstm_609/zeros:output:0(sequential_203/lstm_609/zeros_1:output:00sequential_203/lstm_609/strided_slice_1:output:0Osequential_203/lstm_609/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_203_lstm_609_lstm_cell_609_matmul_readvariableop_resourceFsequential_203_lstm_609_lstm_cell_609_matmul_1_readvariableop_resourceEsequential_203_lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
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
*sequential_203_lstm_609_while_body_3965493*6
cond.R,
*sequential_203_lstm_609_while_cond_3965492*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ў
Hsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   і
:sequential_203/lstm_609/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_203/lstm_609/while:output:3Qsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0ђ
-sequential_203/lstm_609/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_203/lstm_609/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_609/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_203/lstm_609/strided_slice_3StridedSliceCsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack:tensor:06sequential_203/lstm_609/strided_slice_3/stack:output:08sequential_203/lstm_609/strided_slice_3/stack_1:output:08sequential_203/lstm_609/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask}
(sequential_203/lstm_609/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_203/lstm_609/transpose_1	TransposeCsequential_203/lstm_609/TensorArrayV2Stack/TensorListStack:tensor:01sequential_203/lstm_609/transpose_1/perm:output:0*
T0*+
_output_shapes
:         ds
sequential_203/lstm_609/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_203/lstm_610/ShapeShape'sequential_203/lstm_609/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_203/lstm_610/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_203/lstm_610/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_203/lstm_610/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_203/lstm_610/strided_sliceStridedSlice&sequential_203/lstm_610/Shape:output:04sequential_203/lstm_610/strided_slice/stack:output:06sequential_203/lstm_610/strided_slice/stack_1:output:06sequential_203/lstm_610/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_203/lstm_610/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2╗
$sequential_203/lstm_610/zeros/packedPack.sequential_203/lstm_610/strided_slice:output:0/sequential_203/lstm_610/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_203/lstm_610/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_203/lstm_610/zerosFill-sequential_203/lstm_610/zeros/packed:output:0,sequential_203/lstm_610/zeros/Const:output:0*
T0*'
_output_shapes
:         2j
(sequential_203/lstm_610/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2┐
&sequential_203/lstm_610/zeros_1/packedPack.sequential_203/lstm_610/strided_slice:output:01sequential_203/lstm_610/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_203/lstm_610/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_203/lstm_610/zeros_1Fill/sequential_203/lstm_610/zeros_1/packed:output:0.sequential_203/lstm_610/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2{
&sequential_203/lstm_610/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_203/lstm_610/transpose	Transpose'sequential_203/lstm_609/transpose_1:y:0/sequential_203/lstm_610/transpose/perm:output:0*
T0*+
_output_shapes
:         dt
sequential_203/lstm_610/Shape_1Shape%sequential_203/lstm_610/transpose:y:0*
T0*
_output_shapes
:w
-sequential_203/lstm_610/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_610/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_610/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_203/lstm_610/strided_slice_1StridedSlice(sequential_203/lstm_610/Shape_1:output:06sequential_203/lstm_610/strided_slice_1/stack:output:08sequential_203/lstm_610/strided_slice_1/stack_1:output:08sequential_203/lstm_610/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_203/lstm_610/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_203/lstm_610/TensorArrayV2TensorListReserve<sequential_203/lstm_610/TensorArrayV2/element_shape:output:00sequential_203/lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   е
?sequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_203/lstm_610/transpose:y:0Vsequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_203/lstm_610/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_610/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_610/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_203/lstm_610/strided_slice_2StridedSlice%sequential_203/lstm_610/transpose:y:06sequential_203/lstm_610/strided_slice_2/stack:output:08sequential_203/lstm_610/strided_slice_2/stack_1:output:08sequential_203/lstm_610/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask┴
;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOpReadVariableOpDsequential_203_lstm_610_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0Я
,sequential_203/lstm_610/lstm_cell_610/MatMulMatMul0sequential_203/lstm_610/strided_slice_2:output:0Csequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚┼
=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOpFsequential_203_lstm_610_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0┌
.sequential_203/lstm_610/lstm_cell_610/MatMul_1MatMul&sequential_203/lstm_610/zeros:output:0Esequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚О
)sequential_203/lstm_610/lstm_cell_610/addAddV26sequential_203/lstm_610/lstm_cell_610/MatMul:product:08sequential_203/lstm_610/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚┐
<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOpEsequential_203_lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Я
-sequential_203/lstm_610/lstm_cell_610/BiasAddBiasAdd-sequential_203/lstm_610/lstm_cell_610/add:z:0Dsequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚w
5sequential_203/lstm_610/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_203/lstm_610/lstm_cell_610/splitSplit>sequential_203/lstm_610/lstm_cell_610/split/split_dim:output:06sequential_203/lstm_610/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitа
-sequential_203/lstm_610/lstm_cell_610/SigmoidSigmoid4sequential_203/lstm_610/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2б
/sequential_203/lstm_610/lstm_cell_610/Sigmoid_1Sigmoid4sequential_203/lstm_610/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2┴
)sequential_203/lstm_610/lstm_cell_610/mulMul3sequential_203/lstm_610/lstm_cell_610/Sigmoid_1:y:0(sequential_203/lstm_610/zeros_1:output:0*
T0*'
_output_shapes
:         2џ
*sequential_203/lstm_610/lstm_cell_610/ReluRelu4sequential_203/lstm_610/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Л
+sequential_203/lstm_610/lstm_cell_610/mul_1Mul1sequential_203/lstm_610/lstm_cell_610/Sigmoid:y:08sequential_203/lstm_610/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2к
+sequential_203/lstm_610/lstm_cell_610/add_1AddV2-sequential_203/lstm_610/lstm_cell_610/mul:z:0/sequential_203/lstm_610/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2б
/sequential_203/lstm_610/lstm_cell_610/Sigmoid_2Sigmoid4sequential_203/lstm_610/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2Ќ
,sequential_203/lstm_610/lstm_cell_610/Relu_1Relu/sequential_203/lstm_610/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Н
+sequential_203/lstm_610/lstm_cell_610/mul_2Mul3sequential_203/lstm_610/lstm_cell_610/Sigmoid_2:y:0:sequential_203/lstm_610/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2є
5sequential_203/lstm_610/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ђ
'sequential_203/lstm_610/TensorArrayV2_1TensorListReserve>sequential_203/lstm_610/TensorArrayV2_1/element_shape:output:00sequential_203/lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_203/lstm_610/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_203/lstm_610/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_203/lstm_610/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_203/lstm_610/whileWhile3sequential_203/lstm_610/while/loop_counter:output:09sequential_203/lstm_610/while/maximum_iterations:output:0%sequential_203/lstm_610/time:output:00sequential_203/lstm_610/TensorArrayV2_1:handle:0&sequential_203/lstm_610/zeros:output:0(sequential_203/lstm_610/zeros_1:output:00sequential_203/lstm_610/strided_slice_1:output:0Osequential_203/lstm_610/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_203_lstm_610_lstm_cell_610_matmul_readvariableop_resourceFsequential_203_lstm_610_lstm_cell_610_matmul_1_readvariableop_resourceEsequential_203_lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
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
*sequential_203_lstm_610_while_body_3965632*6
cond.R,
*sequential_203_lstm_610_while_cond_3965631*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations Ў
Hsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   і
:sequential_203/lstm_610/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_203/lstm_610/while:output:3Qsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0ђ
-sequential_203/lstm_610/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_203/lstm_610/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_610/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_203/lstm_610/strided_slice_3StridedSliceCsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack:tensor:06sequential_203/lstm_610/strided_slice_3/stack:output:08sequential_203/lstm_610/strided_slice_3/stack_1:output:08sequential_203/lstm_610/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask}
(sequential_203/lstm_610/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_203/lstm_610/transpose_1	TransposeCsequential_203/lstm_610/TensorArrayV2Stack/TensorListStack:tensor:01sequential_203/lstm_610/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2s
sequential_203/lstm_610/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
sequential_203/lstm_611/ShapeShape'sequential_203/lstm_610/transpose_1:y:0*
T0*
_output_shapes
:u
+sequential_203/lstm_611/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_203/lstm_611/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_203/lstm_611/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_203/lstm_611/strided_sliceStridedSlice&sequential_203/lstm_611/Shape:output:04sequential_203/lstm_611/strided_slice/stack:output:06sequential_203/lstm_611/strided_slice/stack_1:output:06sequential_203/lstm_611/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&sequential_203/lstm_611/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
╗
$sequential_203/lstm_611/zeros/packedPack.sequential_203/lstm_611/strided_slice:output:0/sequential_203/lstm_611/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_203/lstm_611/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_203/lstm_611/zerosFill-sequential_203/lstm_611/zeros/packed:output:0,sequential_203/lstm_611/zeros/Const:output:0*
T0*'
_output_shapes
:         
j
(sequential_203/lstm_611/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
┐
&sequential_203/lstm_611/zeros_1/packedPack.sequential_203/lstm_611/strided_slice:output:01sequential_203/lstm_611/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_203/lstm_611/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ║
sequential_203/lstm_611/zeros_1Fill/sequential_203/lstm_611/zeros_1/packed:output:0.sequential_203/lstm_611/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
{
&sequential_203/lstm_611/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Й
!sequential_203/lstm_611/transpose	Transpose'sequential_203/lstm_610/transpose_1:y:0/sequential_203/lstm_611/transpose/perm:output:0*
T0*+
_output_shapes
:         2t
sequential_203/lstm_611/Shape_1Shape%sequential_203/lstm_611/transpose:y:0*
T0*
_output_shapes
:w
-sequential_203/lstm_611/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_611/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_611/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:М
'sequential_203/lstm_611/strided_slice_1StridedSlice(sequential_203/lstm_611/Shape_1:output:06sequential_203/lstm_611/strided_slice_1/stack:output:08sequential_203/lstm_611/strided_slice_1/stack_1:output:08sequential_203/lstm_611/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
3sequential_203/lstm_611/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ч
%sequential_203/lstm_611/TensorArrayV2TensorListReserve<sequential_203/lstm_611/TensorArrayV2/element_shape:output:00sequential_203/lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмъ
Msequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   е
?sequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_203/lstm_611/transpose:y:0Vsequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмw
-sequential_203/lstm_611/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_611/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_203/lstm_611/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
'sequential_203/lstm_611/strided_slice_2StridedSlice%sequential_203/lstm_611/transpose:y:06sequential_203/lstm_611/strided_slice_2/stack:output:08sequential_203/lstm_611/strided_slice_2/stack_1:output:08sequential_203/lstm_611/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_mask└
;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOpReadVariableOpDsequential_203_lstm_611_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▀
,sequential_203/lstm_611/lstm_cell_611/MatMulMatMul0sequential_203/lstm_611/strided_slice_2:output:0Csequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (─
=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOpFsequential_203_lstm_611_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0┘
.sequential_203/lstm_611/lstm_cell_611/MatMul_1MatMul&sequential_203/lstm_611/zeros:output:0Esequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (о
)sequential_203/lstm_611/lstm_cell_611/addAddV26sequential_203/lstm_611/lstm_cell_611/MatMul:product:08sequential_203/lstm_611/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (Й
<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOpEsequential_203_lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▀
-sequential_203/lstm_611/lstm_cell_611/BiasAddBiasAdd-sequential_203/lstm_611/lstm_cell_611/add:z:0Dsequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (w
5sequential_203/lstm_611/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :е
+sequential_203/lstm_611/lstm_cell_611/splitSplit>sequential_203/lstm_611/lstm_cell_611/split/split_dim:output:06sequential_203/lstm_611/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitа
-sequential_203/lstm_611/lstm_cell_611/SigmoidSigmoid4sequential_203/lstm_611/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
б
/sequential_203/lstm_611/lstm_cell_611/Sigmoid_1Sigmoid4sequential_203/lstm_611/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
┴
)sequential_203/lstm_611/lstm_cell_611/mulMul3sequential_203/lstm_611/lstm_cell_611/Sigmoid_1:y:0(sequential_203/lstm_611/zeros_1:output:0*
T0*'
_output_shapes
:         
џ
*sequential_203/lstm_611/lstm_cell_611/ReluRelu4sequential_203/lstm_611/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Л
+sequential_203/lstm_611/lstm_cell_611/mul_1Mul1sequential_203/lstm_611/lstm_cell_611/Sigmoid:y:08sequential_203/lstm_611/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
к
+sequential_203/lstm_611/lstm_cell_611/add_1AddV2-sequential_203/lstm_611/lstm_cell_611/mul:z:0/sequential_203/lstm_611/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
б
/sequential_203/lstm_611/lstm_cell_611/Sigmoid_2Sigmoid4sequential_203/lstm_611/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
Ќ
,sequential_203/lstm_611/lstm_cell_611/Relu_1Relu/sequential_203/lstm_611/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Н
+sequential_203/lstm_611/lstm_cell_611/mul_2Mul3sequential_203/lstm_611/lstm_cell_611/Sigmoid_2:y:0:sequential_203/lstm_611/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
є
5sequential_203/lstm_611/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   ђ
'sequential_203/lstm_611/TensorArrayV2_1TensorListReserve>sequential_203/lstm_611/TensorArrayV2_1/element_shape:output:00sequential_203/lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм^
sequential_203/lstm_611/timeConst*
_output_shapes
: *
dtype0*
value	B : {
0sequential_203/lstm_611/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         l
*sequential_203/lstm_611/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : О
sequential_203/lstm_611/whileWhile3sequential_203/lstm_611/while/loop_counter:output:09sequential_203/lstm_611/while/maximum_iterations:output:0%sequential_203/lstm_611/time:output:00sequential_203/lstm_611/TensorArrayV2_1:handle:0&sequential_203/lstm_611/zeros:output:0(sequential_203/lstm_611/zeros_1:output:00sequential_203/lstm_611/strided_slice_1:output:0Osequential_203/lstm_611/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_203_lstm_611_lstm_cell_611_matmul_readvariableop_resourceFsequential_203_lstm_611_lstm_cell_611_matmul_1_readvariableop_resourceEsequential_203_lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
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
*sequential_203_lstm_611_while_body_3965771*6
cond.R,
*sequential_203_lstm_611_while_cond_3965770*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations Ў
Hsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   і
:sequential_203/lstm_611/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_203/lstm_611/while:output:3Qsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0ђ
-sequential_203/lstm_611/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         y
/sequential_203/lstm_611/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/sequential_203/lstm_611/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
'sequential_203/lstm_611/strided_slice_3StridedSliceCsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack:tensor:06sequential_203/lstm_611/strided_slice_3/stack:output:08sequential_203/lstm_611/strided_slice_3/stack_1:output:08sequential_203/lstm_611/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_mask}
(sequential_203/lstm_611/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          я
#sequential_203/lstm_611/transpose_1	TransposeCsequential_203/lstm_611/TensorArrayV2Stack/TensorListStack:tensor:01sequential_203/lstm_611/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
s
sequential_203/lstm_611/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    д
.sequential_203/dense_203/MatMul/ReadVariableOpReadVariableOp7sequential_203_dense_203_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0┼
sequential_203/dense_203/MatMulMatMul0sequential_203/lstm_611/strided_slice_3:output:06sequential_203/dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ц
/sequential_203/dense_203/BiasAdd/ReadVariableOpReadVariableOp8sequential_203_dense_203_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┴
 sequential_203/dense_203/BiasAddBiasAdd)sequential_203/dense_203/MatMul:product:07sequential_203/dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_203/dense_203/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         └
NoOpNoOp0^sequential_203/dense_203/BiasAdd/ReadVariableOp/^sequential_203/dense_203/MatMul/ReadVariableOp=^sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp<^sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp>^sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp^sequential_203/lstm_609/while=^sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp<^sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp>^sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp^sequential_203/lstm_610/while=^sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp<^sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp>^sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp^sequential_203/lstm_611/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2b
/sequential_203/dense_203/BiasAdd/ReadVariableOp/sequential_203/dense_203/BiasAdd/ReadVariableOp2`
.sequential_203/dense_203/MatMul/ReadVariableOp.sequential_203/dense_203/MatMul/ReadVariableOp2|
<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp<sequential_203/lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp2z
;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp;sequential_203/lstm_609/lstm_cell_609/MatMul/ReadVariableOp2~
=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp=sequential_203/lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp2>
sequential_203/lstm_609/whilesequential_203/lstm_609/while2|
<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp<sequential_203/lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp2z
;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp;sequential_203/lstm_610/lstm_cell_610/MatMul/ReadVariableOp2~
=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp=sequential_203/lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp2>
sequential_203/lstm_610/whilesequential_203/lstm_610/while2|
<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp<sequential_203/lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp2z
;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp;sequential_203/lstm_611/lstm_cell_611/MatMul/ReadVariableOp2~
=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp=sequential_203/lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp2>
sequential_203/lstm_611/whilesequential_203/lstm_611/while:[ W
+
_output_shapes
:         
(
_user_specified_namelstm_609_input
Л8
┌
while_body_3969418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	љG
4while_lstm_cell_609_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_609/BiasAdd/ReadVariableOpб)while/lstm_cell_609/MatMul/ReadVariableOpб+while/lstm_cell_609/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3966482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966482___redundant_placeholder05
1while_while_cond_3966482___redundant_placeholder15
1while_while_cond_3966482___redundant_placeholder25
1while_while_cond_3966482___redundant_placeholder3
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
*__inference_lstm_610_layer_call_fn_3969689

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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741s
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
while_body_3967126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_610/BiasAdd/ReadVariableOpб)while/lstm_cell_610/MatMul/ReadVariableOpб+while/lstm_cell_610/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3967576

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_611/BiasAdd/ReadVariableOpб#lstm_cell_611/MatMul/ReadVariableOpб%lstm_cell_611/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3967492*
condR
while_cond_3967491*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_3966832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966832___redundant_placeholder05
1while_while_cond_3966832___redundant_placeholder15
1while_while_cond_3966832___redundant_placeholder25
1while_while_cond_3966832___redundant_placeholder3
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
е8
І
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966902

inputs'
lstm_cell_611_3966820:2('
lstm_cell_611_3966822:
(#
lstm_cell_611_3966824:(
identityѕб%lstm_cell_611/StatefulPartitionedCallбwhile;
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
%lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_611_3966820lstm_cell_611_3966822lstm_cell_611_3966824*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_611_3966820lstm_cell_611_3966822lstm_cell_611_3966824*
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
while_body_3966833*
condR
while_cond_3966832*K
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
NoOpNoOp&^lstm_cell_611/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  2: : : 2N
%lstm_cell_611/StatefulPartitionedCall%lstm_cell_611/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  2
 
_user_specified_nameinputs
║
╚
while_cond_3967821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967821___redundant_placeholder05
1while_while_cond_3967821___redundant_placeholder15
1while_while_cond_3967821___redundant_placeholder25
1while_while_cond_3967821___redundant_placeholder3
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
О
є
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3966074

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
Г
╣
*__inference_lstm_609_layer_call_fn_3969051
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3966202|
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
»8
ј
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966552

inputs(
lstm_cell_610_3966470:	d╚(
lstm_cell_610_3966472:	2╚$
lstm_cell_610_3966474:	╚
identityѕб%lstm_cell_610/StatefulPartitionedCallбwhile;
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
%lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_610_3966470lstm_cell_610_3966472lstm_cell_610_3966474*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_610_3966470lstm_cell_610_3966472lstm_cell_610_3966474*
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
while_body_3966483*
condR
while_cond_3966482*K
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
NoOpNoOp&^lstm_cell_610/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_610/StatefulPartitionedCall%lstm_cell_610/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
╔	
э
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378

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
█
е
*sequential_203_lstm_609_while_cond_3965492L
Hsequential_203_lstm_609_while_sequential_203_lstm_609_while_loop_counterR
Nsequential_203_lstm_609_while_sequential_203_lstm_609_while_maximum_iterations-
)sequential_203_lstm_609_while_placeholder/
+sequential_203_lstm_609_while_placeholder_1/
+sequential_203_lstm_609_while_placeholder_2/
+sequential_203_lstm_609_while_placeholder_3N
Jsequential_203_lstm_609_while_less_sequential_203_lstm_609_strided_slice_1e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder0e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder1e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder2e
asequential_203_lstm_609_while_sequential_203_lstm_609_while_cond_3965492___redundant_placeholder3*
&sequential_203_lstm_609_while_identity
┬
"sequential_203/lstm_609/while/LessLess)sequential_203_lstm_609_while_placeholderJsequential_203_lstm_609_while_less_sequential_203_lstm_609_strided_slice_1*
T0*
_output_shapes
: {
&sequential_203/lstm_609/while/IdentityIdentity&sequential_203/lstm_609/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_203_lstm_609_while_identity/sequential_203/lstm_609/while/Identity:output:0*(
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
while_cond_3965941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3965941___redundant_placeholder05
1while_while_cond_3965941___redundant_placeholder15
1while_while_cond_3965941___redundant_placeholder25
1while_while_cond_3965941___redundant_placeholder3
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971158

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
*__inference_lstm_609_layer_call_fn_3969062

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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3967060s
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
while_body_3970793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_611/BiasAdd/ReadVariableOpб)while/lstm_cell_611/MatMul/ReadVariableOpб+while/lstm_cell_611/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
■Ђ
Џ
K__inference_sequential_203_layer_call_and_return_conditional_losses_3969029

inputsH
5lstm_609_lstm_cell_609_matmul_readvariableop_resource:	љJ
7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource:	dљE
6lstm_609_lstm_cell_609_biasadd_readvariableop_resource:	љH
5lstm_610_lstm_cell_610_matmul_readvariableop_resource:	d╚J
7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource:	2╚E
6lstm_610_lstm_cell_610_biasadd_readvariableop_resource:	╚G
5lstm_611_lstm_cell_611_matmul_readvariableop_resource:2(I
7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource:
(D
6lstm_611_lstm_cell_611_biasadd_readvariableop_resource:(:
(dense_203_matmul_readvariableop_resource:
7
)dense_203_biasadd_readvariableop_resource:
identityѕб dense_203/BiasAdd/ReadVariableOpбdense_203/MatMul/ReadVariableOpб-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpб,lstm_609/lstm_cell_609/MatMul/ReadVariableOpб.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpбlstm_609/whileб-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpб,lstm_610/lstm_cell_610/MatMul/ReadVariableOpб.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpбlstm_610/whileб-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpб,lstm_611/lstm_cell_611/MatMul/ReadVariableOpб.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpбlstm_611/whileD
lstm_609/ShapeShapeinputs*
T0*
_output_shapes
:f
lstm_609/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_609/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_609/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_609/strided_sliceStridedSlicelstm_609/Shape:output:0%lstm_609/strided_slice/stack:output:0'lstm_609/strided_slice/stack_1:output:0'lstm_609/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_609/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dј
lstm_609/zeros/packedPacklstm_609/strided_slice:output:0 lstm_609/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_609/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_609/zerosFilllstm_609/zeros/packed:output:0lstm_609/zeros/Const:output:0*
T0*'
_output_shapes
:         d[
lstm_609/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dњ
lstm_609/zeros_1/packedPacklstm_609/strided_slice:output:0"lstm_609/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_609/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_609/zeros_1Fill lstm_609/zeros_1/packed:output:0lstm_609/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dl
lstm_609/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_609/transpose	Transposeinputs lstm_609/transpose/perm:output:0*
T0*+
_output_shapes
:         V
lstm_609/Shape_1Shapelstm_609/transpose:y:0*
T0*
_output_shapes
:h
lstm_609/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_609/strided_slice_1StridedSlicelstm_609/Shape_1:output:0'lstm_609/strided_slice_1/stack:output:0)lstm_609/strided_slice_1/stack_1:output:0)lstm_609/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_609/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_609/TensorArrayV2TensorListReserve-lstm_609/TensorArrayV2/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_609/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ч
0lstm_609/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_609/transpose:y:0Glstm_609/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_609/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_609/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_609/strided_slice_2StridedSlicelstm_609/transpose:y:0'lstm_609/strided_slice_2/stack:output:0)lstm_609/strided_slice_2/stack_1:output:0)lstm_609/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskБ
,lstm_609/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp5lstm_609_lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0│
lstm_609/lstm_cell_609/MatMulMatMul!lstm_609/strided_slice_2:output:04lstm_609/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љД
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0Г
lstm_609/lstm_cell_609/MatMul_1MatMullstm_609/zeros:output:06lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љф
lstm_609/lstm_cell_609/addAddV2'lstm_609/lstm_cell_609/MatMul:product:0)lstm_609/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љА
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0│
lstm_609/lstm_cell_609/BiasAddBiasAddlstm_609/lstm_cell_609/add:z:05lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љh
&lstm_609/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_609/lstm_cell_609/splitSplit/lstm_609/lstm_cell_609/split/split_dim:output:0'lstm_609/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitѓ
lstm_609/lstm_cell_609/SigmoidSigmoid%lstm_609/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dё
 lstm_609/lstm_cell_609/Sigmoid_1Sigmoid%lstm_609/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dћ
lstm_609/lstm_cell_609/mulMul$lstm_609/lstm_cell_609/Sigmoid_1:y:0lstm_609/zeros_1:output:0*
T0*'
_output_shapes
:         d|
lstm_609/lstm_cell_609/ReluRelu%lstm_609/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dц
lstm_609/lstm_cell_609/mul_1Mul"lstm_609/lstm_cell_609/Sigmoid:y:0)lstm_609/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dЎ
lstm_609/lstm_cell_609/add_1AddV2lstm_609/lstm_cell_609/mul:z:0 lstm_609/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dё
 lstm_609/lstm_cell_609/Sigmoid_2Sigmoid%lstm_609/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dy
lstm_609/lstm_cell_609/Relu_1Relu lstm_609/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dе
lstm_609/lstm_cell_609/mul_2Mul$lstm_609/lstm_cell_609/Sigmoid_2:y:0+lstm_609/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dw
&lstm_609/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
lstm_609/TensorArrayV2_1TensorListReserve/lstm_609/TensorArrayV2_1/element_shape:output:0!lstm_609/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_609/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_609/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_609/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_609/whileWhile$lstm_609/while/loop_counter:output:0*lstm_609/while/maximum_iterations:output:0lstm_609/time:output:0!lstm_609/TensorArrayV2_1:handle:0lstm_609/zeros:output:0lstm_609/zeros_1:output:0!lstm_609/strided_slice_1:output:0@lstm_609/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_609_lstm_cell_609_matmul_readvariableop_resource7lstm_609_lstm_cell_609_matmul_1_readvariableop_resource6lstm_609_lstm_cell_609_biasadd_readvariableop_resource*
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
lstm_609_while_body_3968661*'
condR
lstm_609_while_cond_3968660*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations і
9lstm_609/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   П
+lstm_609/TensorArrayV2Stack/TensorListStackTensorListStacklstm_609/while:output:3Blstm_609/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0q
lstm_609/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_609/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_609/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_609/strided_slice_3StridedSlice4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_609/strided_slice_3/stack:output:0)lstm_609/strided_slice_3/stack_1:output:0)lstm_609/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskn
lstm_609/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_609/transpose_1	Transpose4lstm_609/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_609/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dd
lstm_609/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_610/ShapeShapelstm_609/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_610/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_610/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_610/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_610/strided_sliceStridedSlicelstm_610/Shape:output:0%lstm_610/strided_slice/stack:output:0'lstm_610/strided_slice/stack_1:output:0'lstm_610/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_610/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2ј
lstm_610/zeros/packedPacklstm_610/strided_slice:output:0 lstm_610/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_610/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_610/zerosFilllstm_610/zeros/packed:output:0lstm_610/zeros/Const:output:0*
T0*'
_output_shapes
:         2[
lstm_610/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2њ
lstm_610/zeros_1/packedPacklstm_610/strided_slice:output:0"lstm_610/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_610/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_610/zeros_1Fill lstm_610/zeros_1/packed:output:0lstm_610/zeros_1/Const:output:0*
T0*'
_output_shapes
:         2l
lstm_610/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_610/transpose	Transposelstm_609/transpose_1:y:0 lstm_610/transpose/perm:output:0*
T0*+
_output_shapes
:         dV
lstm_610/Shape_1Shapelstm_610/transpose:y:0*
T0*
_output_shapes
:h
lstm_610/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_610/strided_slice_1StridedSlicelstm_610/Shape_1:output:0'lstm_610/strided_slice_1/stack:output:0)lstm_610/strided_slice_1/stack_1:output:0)lstm_610/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_610/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_610/TensorArrayV2TensorListReserve-lstm_610/TensorArrayV2/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_610/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ч
0lstm_610/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_610/transpose:y:0Glstm_610/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_610/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_610/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_610/strided_slice_2StridedSlicelstm_610/transpose:y:0'lstm_610/strided_slice_2/stack:output:0)lstm_610/strided_slice_2/stack_1:output:0)lstm_610/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskБ
,lstm_610/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp5lstm_610_lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0│
lstm_610/lstm_cell_610/MatMulMatMul!lstm_610/strided_slice_2:output:04lstm_610/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Д
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0Г
lstm_610/lstm_cell_610/MatMul_1MatMullstm_610/zeros:output:06lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚ф
lstm_610/lstm_cell_610/addAddV2'lstm_610/lstm_cell_610/MatMul:product:0)lstm_610/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚А
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0│
lstm_610/lstm_cell_610/BiasAddBiasAddlstm_610/lstm_cell_610/add:z:05lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚h
&lstm_610/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_610/lstm_cell_610/splitSplit/lstm_610/lstm_cell_610/split/split_dim:output:0'lstm_610/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitѓ
lstm_610/lstm_cell_610/SigmoidSigmoid%lstm_610/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2ё
 lstm_610/lstm_cell_610/Sigmoid_1Sigmoid%lstm_610/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ћ
lstm_610/lstm_cell_610/mulMul$lstm_610/lstm_cell_610/Sigmoid_1:y:0lstm_610/zeros_1:output:0*
T0*'
_output_shapes
:         2|
lstm_610/lstm_cell_610/ReluRelu%lstm_610/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2ц
lstm_610/lstm_cell_610/mul_1Mul"lstm_610/lstm_cell_610/Sigmoid:y:0)lstm_610/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2Ў
lstm_610/lstm_cell_610/add_1AddV2lstm_610/lstm_cell_610/mul:z:0 lstm_610/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2ё
 lstm_610/lstm_cell_610/Sigmoid_2Sigmoid%lstm_610/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2y
lstm_610/lstm_cell_610/Relu_1Relu lstm_610/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2е
lstm_610/lstm_cell_610/mul_2Mul$lstm_610/lstm_cell_610/Sigmoid_2:y:0+lstm_610/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2w
&lstm_610/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
lstm_610/TensorArrayV2_1TensorListReserve/lstm_610/TensorArrayV2_1/element_shape:output:0!lstm_610/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_610/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_610/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_610/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_610/whileWhile$lstm_610/while/loop_counter:output:0*lstm_610/while/maximum_iterations:output:0lstm_610/time:output:0!lstm_610/TensorArrayV2_1:handle:0lstm_610/zeros:output:0lstm_610/zeros_1:output:0!lstm_610/strided_slice_1:output:0@lstm_610/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_610_lstm_cell_610_matmul_readvariableop_resource7lstm_610_lstm_cell_610_matmul_1_readvariableop_resource6lstm_610_lstm_cell_610_biasadd_readvariableop_resource*
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
lstm_610_while_body_3968800*'
condR
lstm_610_while_cond_3968799*K
output_shapes:
8: : : : :         2:         2: : : : : *
parallel_iterations і
9lstm_610/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   П
+lstm_610/TensorArrayV2Stack/TensorListStackTensorListStacklstm_610/while:output:3Blstm_610/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         2*
element_dtype0q
lstm_610/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_610/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_610/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_610/strided_slice_3StridedSlice4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_610/strided_slice_3/stack:output:0)lstm_610/strided_slice_3/stack_1:output:0)lstm_610/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskn
lstm_610/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_610/transpose_1	Transpose4lstm_610/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_610/transpose_1/perm:output:0*
T0*+
_output_shapes
:         2d
lstm_610/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    V
lstm_611/ShapeShapelstm_610/transpose_1:y:0*
T0*
_output_shapes
:f
lstm_611/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_611/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_611/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
lstm_611/strided_sliceStridedSlicelstm_611/Shape:output:0%lstm_611/strided_slice/stack:output:0'lstm_611/strided_slice/stack_1:output:0'lstm_611/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
lstm_611/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
ј
lstm_611/zeros/packedPacklstm_611/strided_slice:output:0 lstm_611/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_611/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Є
lstm_611/zerosFilllstm_611/zeros/packed:output:0lstm_611/zeros/Const:output:0*
T0*'
_output_shapes
:         
[
lstm_611/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
њ
lstm_611/zeros_1/packedPacklstm_611/strided_slice:output:0"lstm_611/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:[
lstm_611/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
lstm_611/zeros_1Fill lstm_611/zeros_1/packed:output:0lstm_611/zeros_1/Const:output:0*
T0*'
_output_shapes
:         
l
lstm_611/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Љ
lstm_611/transpose	Transposelstm_610/transpose_1:y:0 lstm_611/transpose/perm:output:0*
T0*+
_output_shapes
:         2V
lstm_611/Shape_1Shapelstm_611/transpose:y:0*
T0*
_output_shapes
:h
lstm_611/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
lstm_611/strided_slice_1StridedSlicelstm_611/Shape_1:output:0'lstm_611/strided_slice_1/stack:output:0)lstm_611/strided_slice_1/stack_1:output:0)lstm_611/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
$lstm_611/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ¤
lstm_611/TensorArrayV2TensorListReserve-lstm_611/TensorArrayV2/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмЈ
>lstm_611/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   ч
0lstm_611/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_611/transpose:y:0Glstm_611/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмh
lstm_611/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 lstm_611/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ќ
lstm_611/strided_slice_2StridedSlicelstm_611/transpose:y:0'lstm_611/strided_slice_2/stack:output:0)lstm_611/strided_slice_2/stack_1:output:0)lstm_611/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         2*
shrink_axis_maskб
,lstm_611/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp5lstm_611_lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0▓
lstm_611/lstm_cell_611/MatMulMatMul!lstm_611/strided_slice_2:output:04lstm_611/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (д
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0г
lstm_611/lstm_cell_611/MatMul_1MatMullstm_611/zeros:output:06lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (Е
lstm_611/lstm_cell_611/addAddV2'lstm_611/lstm_cell_611/MatMul:product:0)lstm_611/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (а
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0▓
lstm_611/lstm_cell_611/BiasAddBiasAddlstm_611/lstm_cell_611/add:z:05lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (h
&lstm_611/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ч
lstm_611/lstm_cell_611/splitSplit/lstm_611/lstm_cell_611/split/split_dim:output:0'lstm_611/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitѓ
lstm_611/lstm_cell_611/SigmoidSigmoid%lstm_611/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
ё
 lstm_611/lstm_cell_611/Sigmoid_1Sigmoid%lstm_611/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ћ
lstm_611/lstm_cell_611/mulMul$lstm_611/lstm_cell_611/Sigmoid_1:y:0lstm_611/zeros_1:output:0*
T0*'
_output_shapes
:         
|
lstm_611/lstm_cell_611/ReluRelu%lstm_611/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
ц
lstm_611/lstm_cell_611/mul_1Mul"lstm_611/lstm_cell_611/Sigmoid:y:0)lstm_611/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
Ў
lstm_611/lstm_cell_611/add_1AddV2lstm_611/lstm_cell_611/mul:z:0 lstm_611/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
ё
 lstm_611/lstm_cell_611/Sigmoid_2Sigmoid%lstm_611/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
y
lstm_611/lstm_cell_611/Relu_1Relu lstm_611/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
е
lstm_611/lstm_cell_611/mul_2Mul$lstm_611/lstm_cell_611/Sigmoid_2:y:0+lstm_611/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
w
&lstm_611/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   М
lstm_611/TensorArrayV2_1TensorListReserve/lstm_611/TensorArrayV2_1/element_shape:output:0!lstm_611/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмO
lstm_611/timeConst*
_output_shapes
: *
dtype0*
value	B : l
!lstm_611/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         ]
lstm_611/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ё
lstm_611/whileWhile$lstm_611/while/loop_counter:output:0*lstm_611/while/maximum_iterations:output:0lstm_611/time:output:0!lstm_611/TensorArrayV2_1:handle:0lstm_611/zeros:output:0lstm_611/zeros_1:output:0!lstm_611/strided_slice_1:output:0@lstm_611/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_611_lstm_cell_611_matmul_readvariableop_resource7lstm_611_lstm_cell_611_matmul_1_readvariableop_resource6lstm_611_lstm_cell_611_biasadd_readvariableop_resource*
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
lstm_611_while_body_3968939*'
condR
lstm_611_while_cond_3968938*K
output_shapes:
8: : : : :         
:         
: : : : : *
parallel_iterations і
9lstm_611/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    
   П
+lstm_611/TensorArrayV2Stack/TensorListStackTensorListStacklstm_611/while:output:3Blstm_611/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         
*
element_dtype0q
lstm_611/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         j
 lstm_611/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: j
 lstm_611/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┤
lstm_611/strided_slice_3StridedSlice4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_611/strided_slice_3/stack:output:0)lstm_611/strided_slice_3/stack_1:output:0)lstm_611/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         
*
shrink_axis_maskn
lstm_611/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ▒
lstm_611/transpose_1	Transpose4lstm_611/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_611/transpose_1/perm:output:0*
T0*+
_output_shapes
:         
d
lstm_611/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
dense_203/MatMul/ReadVariableOpReadVariableOp(dense_203_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ў
dense_203/MatMulMatMul!lstm_611/strided_slice_3:output:0'dense_203/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         є
 dense_203/BiasAdd/ReadVariableOpReadVariableOp)dense_203_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ћ
dense_203/BiasAddBiasAdddense_203/MatMul:product:0(dense_203/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         i
IdentityIdentitydense_203/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         Ь
NoOpNoOp!^dense_203/BiasAdd/ReadVariableOp ^dense_203/MatMul/ReadVariableOp.^lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-^lstm_609/lstm_cell_609/MatMul/ReadVariableOp/^lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp^lstm_609/while.^lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-^lstm_610/lstm_cell_610/MatMul/ReadVariableOp/^lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp^lstm_610/while.^lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-^lstm_611/lstm_cell_611/MatMul/ReadVariableOp/^lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp^lstm_611/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:         : : : : : : : : : : : 2D
 dense_203/BiasAdd/ReadVariableOp dense_203/BiasAdd/ReadVariableOp2B
dense_203/MatMul/ReadVariableOpdense_203/MatMul/ReadVariableOp2^
-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp-lstm_609/lstm_cell_609/BiasAdd/ReadVariableOp2\
,lstm_609/lstm_cell_609/MatMul/ReadVariableOp,lstm_609/lstm_cell_609/MatMul/ReadVariableOp2`
.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp.lstm_609/lstm_cell_609/MatMul_1/ReadVariableOp2 
lstm_609/whilelstm_609/while2^
-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp-lstm_610/lstm_cell_610/BiasAdd/ReadVariableOp2\
,lstm_610/lstm_cell_610/MatMul/ReadVariableOp,lstm_610/lstm_cell_610/MatMul/ReadVariableOp2`
.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp.lstm_610/lstm_cell_610/MatMul_1/ReadVariableOp2 
lstm_610/whilelstm_610/while2^
-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp-lstm_611/lstm_cell_611/BiasAdd/ReadVariableOp2\
,lstm_611/lstm_cell_611/MatMul/ReadVariableOp,lstm_611/lstm_cell_611/MatMul/ReadVariableOp2`
.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp.lstm_611/lstm_cell_611/MatMul_1/ReadVariableOp2 
lstm_611/whilelstm_611/while:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
─8
н
while_body_3967492
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
4while_lstm_cell_611_matmul_readvariableop_resource_0:2(H
6while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(C
5while_lstm_cell_611_biasadd_readvariableop_resource_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
2while_lstm_cell_611_matmul_readvariableop_resource:2(F
4while_lstm_cell_611_matmul_1_readvariableop_resource:
(A
3while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб*while/lstm_cell_611/BiasAdd/ReadVariableOpб)while/lstm_cell_611/MatMul/ReadVariableOpб+while/lstm_cell_611/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0ъ
)while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0╗
while/lstm_cell_611/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (б
+while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0б
while/lstm_cell_611/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (а
while/lstm_cell_611/addAddV2$while/lstm_cell_611/MatMul:product:0&while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ю
*while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0Е
while/lstm_cell_611/BiasAddBiasAddwhile/lstm_cell_611/add:z:02while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (e
#while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_611/splitSplit,while/lstm_cell_611/split/split_dim:output:0$while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_split|
while/lstm_cell_611/SigmoidSigmoid"while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_1Sigmoid"while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
ѕ
while/lstm_cell_611/mulMul!while/lstm_cell_611/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         
v
while/lstm_cell_611/ReluRelu"while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Џ
while/lstm_cell_611/mul_1Mulwhile/lstm_cell_611/Sigmoid:y:0&while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
љ
while/lstm_cell_611/add_1AddV2while/lstm_cell_611/mul:z:0while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
~
while/lstm_cell_611/Sigmoid_2Sigmoid"while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
s
while/lstm_cell_611/Relu_1Reluwhile/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ъ
while/lstm_cell_611/mul_2Mul!while/lstm_cell_611/Sigmoid_2:y:0(while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_611/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_611/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         
z
while/Identity_5Identitywhile/lstm_cell_611/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         
М

while/NoOpNoOp+^while/lstm_cell_611/BiasAdd/ReadVariableOp*^while/lstm_cell_611/MatMul/ReadVariableOp,^while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_611_biasadd_readvariableop_resource5while_lstm_cell_611_biasadd_readvariableop_resource_0"n
4while_lstm_cell_611_matmul_1_readvariableop_resource6while_lstm_cell_611_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_611_matmul_readvariableop_resource4while_lstm_cell_611_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2X
*while/lstm_cell_611/BiasAdd/ReadVariableOp*while/lstm_cell_611/BiasAdd/ReadVariableOp2V
)while/lstm_cell_611/MatMul/ReadVariableOp)while/lstm_cell_611/MatMul/ReadVariableOp2Z
+while/lstm_cell_611/MatMul_1/ReadVariableOp+while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3969417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969417___redundant_placeholder05
1while_while_cond_3969417___redundant_placeholder15
1while_while_cond_3969417___redundant_placeholder25
1while_while_cond_3969417___redundant_placeholder3
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
while_cond_3970033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970033___redundant_placeholder05
1while_while_cond_3970033___redundant_placeholder15
1while_while_cond_3970033___redundant_placeholder25
1while_while_cond_3970033___redundant_placeholder3
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
Ѕ#
в
while_body_3966642
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_611_3966666_0:2(/
while_lstm_cell_611_3966668_0:
(+
while_lstm_cell_611_3966670_0:(
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_611_3966666:2(-
while_lstm_cell_611_3966668:
()
while_lstm_cell_611_3966670:(ѕб+while/lstm_cell_611/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0╝
+while/lstm_cell_611/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_611_3966666_0while_lstm_cell_611_3966668_0while_lstm_cell_611_3966670_0*
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_611/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_611/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         
Љ
while/Identity_5Identity4while/lstm_cell_611/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         
z

while/NoOpNoOp,^while/lstm_cell_611/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_611_3966666while_lstm_cell_611_3966666_0"<
while_lstm_cell_611_3966668while_lstm_cell_611_3966668_0"<
while_lstm_cell_611_3966670while_lstm_cell_611_3966670_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2Z
+while/lstm_cell_611/StatefulPartitionedCall+while/lstm_cell_611/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
#__inference__traced_restore_3971463
file_prefix3
!assignvariableop_dense_203_kernel:
/
!assignvariableop_1_dense_203_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: C
0assignvariableop_7_lstm_609_lstm_cell_609_kernel:	љM
:assignvariableop_8_lstm_609_lstm_cell_609_recurrent_kernel:	dљ=
.assignvariableop_9_lstm_609_lstm_cell_609_bias:	љD
1assignvariableop_10_lstm_610_lstm_cell_610_kernel:	d╚N
;assignvariableop_11_lstm_610_lstm_cell_610_recurrent_kernel:	2╚>
/assignvariableop_12_lstm_610_lstm_cell_610_bias:	╚C
1assignvariableop_13_lstm_611_lstm_cell_611_kernel:2(M
;assignvariableop_14_lstm_611_lstm_cell_611_recurrent_kernel:
(=
/assignvariableop_15_lstm_611_lstm_cell_611_bias:(#
assignvariableop_16_total: #
assignvariableop_17_count: =
+assignvariableop_18_adam_dense_203_kernel_m:
7
)assignvariableop_19_adam_dense_203_bias_m:K
8assignvariableop_20_adam_lstm_609_lstm_cell_609_kernel_m:	љU
Bassignvariableop_21_adam_lstm_609_lstm_cell_609_recurrent_kernel_m:	dљE
6assignvariableop_22_adam_lstm_609_lstm_cell_609_bias_m:	љK
8assignvariableop_23_adam_lstm_610_lstm_cell_610_kernel_m:	d╚U
Bassignvariableop_24_adam_lstm_610_lstm_cell_610_recurrent_kernel_m:	2╚E
6assignvariableop_25_adam_lstm_610_lstm_cell_610_bias_m:	╚J
8assignvariableop_26_adam_lstm_611_lstm_cell_611_kernel_m:2(T
Bassignvariableop_27_adam_lstm_611_lstm_cell_611_recurrent_kernel_m:
(D
6assignvariableop_28_adam_lstm_611_lstm_cell_611_bias_m:(=
+assignvariableop_29_adam_dense_203_kernel_v:
7
)assignvariableop_30_adam_dense_203_bias_v:K
8assignvariableop_31_adam_lstm_609_lstm_cell_609_kernel_v:	љU
Bassignvariableop_32_adam_lstm_609_lstm_cell_609_recurrent_kernel_v:	dљE
6assignvariableop_33_adam_lstm_609_lstm_cell_609_bias_v:	љK
8assignvariableop_34_adam_lstm_610_lstm_cell_610_kernel_v:	d╚U
Bassignvariableop_35_adam_lstm_610_lstm_cell_610_recurrent_kernel_v:	2╚E
6assignvariableop_36_adam_lstm_610_lstm_cell_610_bias_v:	╚J
8assignvariableop_37_adam_lstm_611_lstm_cell_611_kernel_v:2(T
Bassignvariableop_38_adam_lstm_611_lstm_cell_611_recurrent_kernel_v:
(D
6assignvariableop_39_adam_lstm_611_lstm_cell_611_bias_v:(
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_203_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_203_biasIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOp0assignvariableop_7_lstm_609_lstm_cell_609_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_8AssignVariableOp:assignvariableop_8_lstm_609_lstm_cell_609_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_609_lstm_cell_609_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_10AssignVariableOp1assignvariableop_10_lstm_610_lstm_cell_610_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp;assignvariableop_11_lstm_610_lstm_cell_610_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_12AssignVariableOp/assignvariableop_12_lstm_610_lstm_cell_610_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_13AssignVariableOp1assignvariableop_13_lstm_611_lstm_cell_611_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_14AssignVariableOp;assignvariableop_14_lstm_611_lstm_cell_611_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_15AssignVariableOp/assignvariableop_15_lstm_611_lstm_cell_611_biasIdentity_15:output:0"/device:CPU:0*
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
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_203_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_203_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_20AssignVariableOp8assignvariableop_20_adam_lstm_609_lstm_cell_609_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adam_lstm_609_lstm_cell_609_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_22AssignVariableOp6assignvariableop_22_adam_lstm_609_lstm_cell_609_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_lstm_610_lstm_cell_610_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_24AssignVariableOpBassignvariableop_24_adam_lstm_610_lstm_cell_610_recurrent_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_610_lstm_cell_610_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adam_lstm_611_lstm_cell_611_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_27AssignVariableOpBassignvariableop_27_adam_lstm_611_lstm_cell_611_recurrent_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_lstm_611_lstm_cell_611_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_203_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:џ
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_203_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_lstm_609_lstm_cell_609_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_32AssignVariableOpBassignvariableop_32_adam_lstm_609_lstm_cell_609_recurrent_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_lstm_609_lstm_cell_609_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_34AssignVariableOp8assignvariableop_34_adam_lstm_610_lstm_cell_610_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_35AssignVariableOpBassignvariableop_35_adam_lstm_610_lstm_cell_610_recurrent_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_lstm_610_lstm_cell_610_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Е
AssignVariableOp_37AssignVariableOp8assignvariableop_37_adam_lstm_611_lstm_cell_611_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOp_38AssignVariableOpBassignvariableop_38_adam_lstm_611_lstm_cell_611_recurrent_kernel_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_lstm_611_lstm_cell_611_bias_vIdentity_39:output:0"/device:CPU:0*
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
║
╚
while_cond_3969274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969274___redundant_placeholder05
1while_while_cond_3969274___redundant_placeholder15
1while_while_cond_3969274___redundant_placeholder25
1while_while_cond_3969274___redundant_placeholder3
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
while_body_3969561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	љG
4while_lstm_cell_609_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_609/BiasAdd/ReadVariableOpб)while/lstm_cell_609/MatMul/ReadVariableOpб+while/lstm_cell_609/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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

lstm_610_while_body_3968373.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_3-
)lstm_610_while_lstm_610_strided_slice_1_0i
elstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚R
?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚M
>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
lstm_610_while_identity
lstm_610_while_identity_1
lstm_610_while_identity_2
lstm_610_while_identity_3
lstm_610_while_identity_4
lstm_610_while_identity_5+
'lstm_610_while_lstm_610_strided_slice_1g
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorN
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource:	d╚P
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚K
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpб2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpб4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpЉ
@lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_610/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0lstm_610_while_placeholderIlstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_610/while/lstm_cell_610/MatMulMatMul9lstm_610/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_610/while/lstm_cell_610/MatMul_1MatMullstm_610_while_placeholder_2<lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_610/while/lstm_cell_610/addAddV2-lstm_610/while/lstm_cell_610/MatMul:product:0/lstm_610/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_610/while/lstm_cell_610/BiasAddBiasAdd$lstm_610/while/lstm_cell_610/add:z:0;lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_610/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_610/while/lstm_cell_610/splitSplit5lstm_610/while/lstm_cell_610/split/split_dim:output:0-lstm_610/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_610/while/lstm_cell_610/SigmoidSigmoid+lstm_610/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_610/while/lstm_cell_610/Sigmoid_1Sigmoid+lstm_610/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_610/while/lstm_cell_610/mulMul*lstm_610/while/lstm_cell_610/Sigmoid_1:y:0lstm_610_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_610/while/lstm_cell_610/ReluRelu+lstm_610/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_610/while/lstm_cell_610/mul_1Mul(lstm_610/while/lstm_cell_610/Sigmoid:y:0/lstm_610/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_610/while/lstm_cell_610/add_1AddV2$lstm_610/while/lstm_cell_610/mul:z:0&lstm_610/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_610/while/lstm_cell_610/Sigmoid_2Sigmoid+lstm_610/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_610/while/lstm_cell_610/Relu_1Relu&lstm_610/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_610/while/lstm_cell_610/mul_2Mul*lstm_610/while/lstm_cell_610/Sigmoid_2:y:01lstm_610/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_610/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_610_while_placeholder_1lstm_610_while_placeholder&lstm_610/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_610/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_610/while/addAddV2lstm_610_while_placeholderlstm_610/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_610/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_610/while/add_1AddV2*lstm_610_while_lstm_610_while_loop_counterlstm_610/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_610/while/IdentityIdentitylstm_610/while/add_1:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ј
lstm_610/while/Identity_1Identity0lstm_610_while_lstm_610_while_maximum_iterations^lstm_610/while/NoOp*
T0*
_output_shapes
: t
lstm_610/while/Identity_2Identitylstm_610/while/add:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: А
lstm_610/while/Identity_3IdentityClstm_610/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_610/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_610/while/Identity_4Identity&lstm_610/while/lstm_cell_610/mul_2:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_610/while/Identity_5Identity&lstm_610/while/lstm_cell_610/add_1:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_610/while/NoOpNoOp4^lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3^lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp5^lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_610_while_identity lstm_610/while/Identity:output:0"?
lstm_610_while_identity_1"lstm_610/while/Identity_1:output:0"?
lstm_610_while_identity_2"lstm_610/while/Identity_2:output:0"?
lstm_610_while_identity_3"lstm_610/while/Identity_3:output:0"?
lstm_610_while_identity_4"lstm_610/while/Identity_4:output:0"?
lstm_610_while_identity_5"lstm_610/while/Identity_5:output:0"T
'lstm_610_while_lstm_610_strided_slice_1)lstm_610_while_lstm_610_strided_slice_1_0"~
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0"ђ
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0"|
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0"╠
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp2h
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2l
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970877

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_611/BiasAdd/ReadVariableOpб#lstm_cell_611/MatMul/ReadVariableOpб%lstm_cell_611/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970793*
condR
while_cond_3970792*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
║
╚
while_cond_3970506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970506___redundant_placeholder05
1while_while_cond_3970506___redundant_placeholder15
1while_while_cond_3970506___redundant_placeholder25
1while_while_cond_3970506___redundant_placeholder3
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
/__inference_lstm_cell_610_layer_call_fn_3971011

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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278o
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
Ш

ц
0__inference_sequential_203_layer_call_fn_3967410
lstm_609_input
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
StatefulPartitionedCallStatefulPartitionedCalllstm_609_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967385o
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
_user_specified_namelstm_609_input
ПJ
а
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970734

inputs>
,lstm_cell_611_matmul_readvariableop_resource:2(@
.lstm_cell_611_matmul_1_readvariableop_resource:
(;
-lstm_cell_611_biasadd_readvariableop_resource:(
identityѕб$lstm_cell_611/BiasAdd/ReadVariableOpб#lstm_cell_611/MatMul/ReadVariableOpб%lstm_cell_611/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_611/MatMul/ReadVariableOpReadVariableOp,lstm_cell_611_matmul_readvariableop_resource*
_output_shapes

:2(*
dtype0Ќ
lstm_cell_611/MatMulMatMulstrided_slice_2:output:0+lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ћ
%lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_611_matmul_1_readvariableop_resource*
_output_shapes

:
(*
dtype0Љ
lstm_cell_611/MatMul_1MatMulzeros:output:0-lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (ј
lstm_cell_611/addAddV2lstm_cell_611/MatMul:product:0 lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         (ј
$lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_611_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ќ
lstm_cell_611/BiasAddBiasAddlstm_cell_611/add:z:0,lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (_
lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_611/splitSplit&lstm_cell_611/split/split_dim:output:0lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitp
lstm_cell_611/SigmoidSigmoidlstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_1Sigmoidlstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
y
lstm_cell_611/mulMullstm_cell_611/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         
j
lstm_cell_611/ReluRelulstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Ѕ
lstm_cell_611/mul_1Mullstm_cell_611/Sigmoid:y:0 lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
~
lstm_cell_611/add_1AddV2lstm_cell_611/mul:z:0lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
r
lstm_cell_611/Sigmoid_2Sigmoidlstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
g
lstm_cell_611/Relu_1Relulstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
Ї
lstm_cell_611/mul_2Mullstm_cell_611/Sigmoid_2:y:0"lstm_cell_611/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_611_matmul_readvariableop_resource.lstm_cell_611_matmul_1_readvariableop_resource-lstm_cell_611_biasadd_readvariableop_resource*
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
while_body_3970650*
condR
while_cond_3970649*K
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
NoOpNoOp%^lstm_cell_611/BiasAdd/ReadVariableOp$^lstm_cell_611/MatMul/ReadVariableOp&^lstm_cell_611/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         2: : : 2L
$lstm_cell_611/BiasAdd/ReadVariableOp$lstm_cell_611/BiasAdd/ReadVariableOp2J
#lstm_cell_611/MatMul/ReadVariableOp#lstm_cell_611/MatMul/ReadVariableOp2N
%lstm_cell_611/MatMul_1/ReadVariableOp%lstm_cell_611/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         2
 
_user_specified_nameinputs
▀
ѕ
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971092

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
Н
Ё
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971190

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
while_body_3965942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_609_3965966_0:	љ0
while_lstm_cell_609_3965968_0:	dљ,
while_lstm_cell_609_3965970_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_609_3965966:	љ.
while_lstm_cell_609_3965968:	dљ*
while_lstm_cell_609_3965970:	љѕб+while/lstm_cell_609/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0╝
+while/lstm_cell_609/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_609_3965966_0while_lstm_cell_609_3965968_0while_lstm_cell_609_3965970_0*
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3965928П
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_609/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity4while/lstm_cell_609/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dЉ
while/Identity_5Identity4while/lstm_cell_609/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dz

while/NoOpNoOp,^while/lstm_cell_609/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_609_3965966while_lstm_cell_609_3965966_0"<
while_lstm_cell_609_3965968while_lstm_cell_609_3965968_0"<
while_lstm_cell_609_3965970while_lstm_cell_609_3965970_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2Z
+while/lstm_cell_609/StatefulPartitionedCall+while/lstm_cell_609/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
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
█
е
*sequential_203_lstm_610_while_cond_3965631L
Hsequential_203_lstm_610_while_sequential_203_lstm_610_while_loop_counterR
Nsequential_203_lstm_610_while_sequential_203_lstm_610_while_maximum_iterations-
)sequential_203_lstm_610_while_placeholder/
+sequential_203_lstm_610_while_placeholder_1/
+sequential_203_lstm_610_while_placeholder_2/
+sequential_203_lstm_610_while_placeholder_3N
Jsequential_203_lstm_610_while_less_sequential_203_lstm_610_strided_slice_1e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder0e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder1e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder2e
asequential_203_lstm_610_while_sequential_203_lstm_610_while_cond_3965631___redundant_placeholder3*
&sequential_203_lstm_610_while_identity
┬
"sequential_203/lstm_610/while/LessLess)sequential_203_lstm_610_while_placeholderJsequential_203_lstm_610_while_less_sequential_203_lstm_610_strided_slice_1*
T0*
_output_shapes
: {
&sequential_203/lstm_610/while/IdentityIdentity&sequential_203/lstm_610/while/Less:z:0*
T0
*
_output_shapes
: "Y
&sequential_203_lstm_610_while_identity/sequential_203/lstm_610/while/Identity:output:0*(
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966628

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
while_cond_3970792
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970792___redundant_placeholder05
1while_while_cond_3970792___redundant_placeholder15
1while_while_cond_3970792___redundant_placeholder25
1while_while_cond_3970792___redundant_placeholder3
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
/__inference_lstm_cell_610_layer_call_fn_3971028

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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424o
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
Л8
┌
while_body_3970034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚I
6while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚D
5while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_610_matmul_readvariableop_resource:	d╚G
4while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚B
3while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб*while/lstm_cell_610/BiasAdd/ReadVariableOpб)while/lstm_cell_610/MatMul/ReadVariableOpб+while/lstm_cell_610/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ъ
)while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0╝
while/lstm_cell_610/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Б
+while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Б
while/lstm_cell_610/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚А
while/lstm_cell_610/addAddV2$while/lstm_cell_610/MatMul:product:0&while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ю
*while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0ф
while/lstm_cell_610/BiasAddBiasAddwhile/lstm_cell_610/add:z:02while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚e
#while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_610/splitSplit,while/lstm_cell_610/split/split_dim:output:0$while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_split|
while/lstm_cell_610/SigmoidSigmoid"while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_1Sigmoid"while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2ѕ
while/lstm_cell_610/mulMul!while/lstm_cell_610/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         2v
while/lstm_cell_610/ReluRelu"while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Џ
while/lstm_cell_610/mul_1Mulwhile/lstm_cell_610/Sigmoid:y:0&while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2љ
while/lstm_cell_610/add_1AddV2while/lstm_cell_610/mul:z:0while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2~
while/lstm_cell_610/Sigmoid_2Sigmoid"while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2s
while/lstm_cell_610/Relu_1Reluwhile/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ъ
while/lstm_cell_610/mul_2Mul!while/lstm_cell_610/Sigmoid_2:y:0(while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_610/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_610/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         2z
while/Identity_5Identitywhile/lstm_cell_610/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         2М

while/NoOpNoOp+^while/lstm_cell_610/BiasAdd/ReadVariableOp*^while/lstm_cell_610/MatMul/ReadVariableOp,^while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_610_biasadd_readvariableop_resource5while_lstm_cell_610_biasadd_readvariableop_resource_0"n
4while_lstm_cell_610_matmul_1_readvariableop_resource6while_lstm_cell_610_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_610_matmul_readvariableop_resource4while_lstm_cell_610_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2X
*while/lstm_cell_610/BiasAdd/ReadVariableOp*while/lstm_cell_610/BiasAdd/ReadVariableOp2V
)while/lstm_cell_610/MatMul/ReadVariableOp)while/lstm_cell_610/MatMul/ReadVariableOp2Z
+while/lstm_cell_610/MatMul_1/ReadVariableOp+while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_body_3967822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	љG
4while_lstm_cell_609_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_609/BiasAdd/ReadVariableOpб)while/lstm_cell_609/MatMul/ReadVariableOpб+while/lstm_cell_609/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
љ
Х
*__inference_lstm_611_layer_call_fn_3970283
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3966902o
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
while_cond_3967125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967125___redundant_placeholder05
1while_while_cond_3967125___redundant_placeholder15
1while_while_cond_3967125___redundant_placeholder25
1while_while_cond_3967125___redundant_placeholder3
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

lstm_610_while_body_3968800.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_3-
)lstm_610_while_lstm_610_strided_slice_1_0i
elstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0:	d╚R
?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0:	2╚M
>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0:	╚
lstm_610_while_identity
lstm_610_while_identity_1
lstm_610_while_identity_2
lstm_610_while_identity_3
lstm_610_while_identity_4
lstm_610_while_identity_5+
'lstm_610_while_lstm_610_strided_slice_1g
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorN
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource:	d╚P
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource:	2╚K
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource:	╚ѕб3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpб2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpб4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpЉ
@lstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   М
2lstm_610/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0lstm_610_while_placeholderIlstm_610/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0▒
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOpReadVariableOp=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0*
_output_shapes
:	d╚*
dtype0О
#lstm_610/while/lstm_cell_610/MatMulMatMul9lstm_610/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚х
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0*
_output_shapes
:	2╚*
dtype0Й
%lstm_610/while/lstm_cell_610/MatMul_1MatMullstm_610_while_placeholder_2<lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚╝
 lstm_610/while/lstm_cell_610/addAddV2-lstm_610/while/lstm_cell_610/MatMul:product:0/lstm_610/while/lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚»
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0*
_output_shapes	
:╚*
dtype0┼
$lstm_610/while/lstm_cell_610/BiasAddBiasAdd$lstm_610/while/lstm_cell_610/add:z:0;lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚n
,lstm_610/while/lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_610/while/lstm_cell_610/splitSplit5lstm_610/while/lstm_cell_610/split/split_dim:output:0-lstm_610/while/lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitј
$lstm_610/while/lstm_cell_610/SigmoidSigmoid+lstm_610/while/lstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2љ
&lstm_610/while/lstm_cell_610/Sigmoid_1Sigmoid+lstm_610/while/lstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2Б
 lstm_610/while/lstm_cell_610/mulMul*lstm_610/while/lstm_cell_610/Sigmoid_1:y:0lstm_610_while_placeholder_3*
T0*'
_output_shapes
:         2ѕ
!lstm_610/while/lstm_cell_610/ReluRelu+lstm_610/while/lstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Х
"lstm_610/while/lstm_cell_610/mul_1Mul(lstm_610/while/lstm_cell_610/Sigmoid:y:0/lstm_610/while/lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2Ф
"lstm_610/while/lstm_cell_610/add_1AddV2$lstm_610/while/lstm_cell_610/mul:z:0&lstm_610/while/lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2љ
&lstm_610/while/lstm_cell_610/Sigmoid_2Sigmoid+lstm_610/while/lstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2Ё
#lstm_610/while/lstm_cell_610/Relu_1Relu&lstm_610/while/lstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2║
"lstm_610/while/lstm_cell_610/mul_2Mul*lstm_610/while/lstm_cell_610/Sigmoid_2:y:01lstm_610/while/lstm_cell_610/Relu_1:activations:0*
T0*'
_output_shapes
:         2Ж
3lstm_610/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_610_while_placeholder_1lstm_610_while_placeholder&lstm_610/while/lstm_cell_610/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_610/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_610/while/addAddV2lstm_610_while_placeholderlstm_610/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_610/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_610/while/add_1AddV2*lstm_610_while_lstm_610_while_loop_counterlstm_610/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_610/while/IdentityIdentitylstm_610/while/add_1:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: ј
lstm_610/while/Identity_1Identity0lstm_610_while_lstm_610_while_maximum_iterations^lstm_610/while/NoOp*
T0*
_output_shapes
: t
lstm_610/while/Identity_2Identitylstm_610/while/add:z:0^lstm_610/while/NoOp*
T0*
_output_shapes
: А
lstm_610/while/Identity_3IdentityClstm_610/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_610/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_610/while/Identity_4Identity&lstm_610/while/lstm_cell_610/mul_2:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:         2Ћ
lstm_610/while/Identity_5Identity&lstm_610/while/lstm_cell_610/add_1:z:0^lstm_610/while/NoOp*
T0*'
_output_shapes
:         2э
lstm_610/while/NoOpNoOp4^lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3^lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp5^lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_610_while_identity lstm_610/while/Identity:output:0"?
lstm_610_while_identity_1"lstm_610/while/Identity_1:output:0"?
lstm_610_while_identity_2"lstm_610/while/Identity_2:output:0"?
lstm_610_while_identity_3"lstm_610/while/Identity_3:output:0"?
lstm_610_while_identity_4"lstm_610/while/Identity_4:output:0"?
lstm_610_while_identity_5"lstm_610/while/Identity_5:output:0"T
'lstm_610_while_lstm_610_strided_slice_1)lstm_610_while_lstm_610_strided_slice_1_0"~
<lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource>lstm_610_while_lstm_cell_610_biasadd_readvariableop_resource_0"ђ
=lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource?lstm_610_while_lstm_cell_610_matmul_1_readvariableop_resource_0"|
;lstm_610_while_lstm_cell_610_matmul_readvariableop_resource=lstm_610_while_lstm_cell_610_matmul_readvariableop_resource_0"╠
clstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensorelstm_610_while_tensorarrayv2read_tensorlistgetitem_lstm_610_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         2:         2: : : : : 2j
3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp3lstm_610/while/lstm_cell_610/BiasAdd/ReadVariableOp2h
2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2lstm_610/while/lstm_cell_610/MatMul/ReadVariableOp2l
4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp4lstm_610/while/lstm_cell_610/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
while_cond_3969560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969560___redundant_placeholder05
1while_while_cond_3969560___redundant_placeholder15
1while_while_cond_3969560___redundant_placeholder25
1while_while_cond_3969560___redundant_placeholder3
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
ЬW
Ц
 __inference__traced_save_3971333
file_prefix/
+savev2_dense_203_kernel_read_readvariableop-
)savev2_dense_203_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_609_lstm_cell_609_kernel_read_readvariableopF
Bsavev2_lstm_609_lstm_cell_609_recurrent_kernel_read_readvariableop:
6savev2_lstm_609_lstm_cell_609_bias_read_readvariableop<
8savev2_lstm_610_lstm_cell_610_kernel_read_readvariableopF
Bsavev2_lstm_610_lstm_cell_610_recurrent_kernel_read_readvariableop:
6savev2_lstm_610_lstm_cell_610_bias_read_readvariableop<
8savev2_lstm_611_lstm_cell_611_kernel_read_readvariableopF
Bsavev2_lstm_611_lstm_cell_611_recurrent_kernel_read_readvariableop:
6savev2_lstm_611_lstm_cell_611_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_203_kernel_m_read_readvariableop4
0savev2_adam_dense_203_bias_m_read_readvariableopC
?savev2_adam_lstm_609_lstm_cell_609_kernel_m_read_readvariableopM
Isavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_609_lstm_cell_609_bias_m_read_readvariableopC
?savev2_adam_lstm_610_lstm_cell_610_kernel_m_read_readvariableopM
Isavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_610_lstm_cell_610_bias_m_read_readvariableopC
?savev2_adam_lstm_611_lstm_cell_611_kernel_m_read_readvariableopM
Isavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_611_lstm_cell_611_bias_m_read_readvariableop6
2savev2_adam_dense_203_kernel_v_read_readvariableop4
0savev2_adam_dense_203_bias_v_read_readvariableopC
?savev2_adam_lstm_609_lstm_cell_609_kernel_v_read_readvariableopM
Isavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_609_lstm_cell_609_bias_v_read_readvariableopC
?savev2_adam_lstm_610_lstm_cell_610_kernel_v_read_readvariableopM
Isavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_610_lstm_cell_610_bias_v_read_readvariableopC
?savev2_adam_lstm_611_lstm_cell_611_kernel_v_read_readvariableopM
Isavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_611_lstm_cell_611_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_203_kernel_read_readvariableop)savev2_dense_203_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_609_lstm_cell_609_kernel_read_readvariableopBsavev2_lstm_609_lstm_cell_609_recurrent_kernel_read_readvariableop6savev2_lstm_609_lstm_cell_609_bias_read_readvariableop8savev2_lstm_610_lstm_cell_610_kernel_read_readvariableopBsavev2_lstm_610_lstm_cell_610_recurrent_kernel_read_readvariableop6savev2_lstm_610_lstm_cell_610_bias_read_readvariableop8savev2_lstm_611_lstm_cell_611_kernel_read_readvariableopBsavev2_lstm_611_lstm_cell_611_recurrent_kernel_read_readvariableop6savev2_lstm_611_lstm_cell_611_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_203_kernel_m_read_readvariableop0savev2_adam_dense_203_bias_m_read_readvariableop?savev2_adam_lstm_609_lstm_cell_609_kernel_m_read_readvariableopIsavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_609_lstm_cell_609_bias_m_read_readvariableop?savev2_adam_lstm_610_lstm_cell_610_kernel_m_read_readvariableopIsavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_610_lstm_cell_610_bias_m_read_readvariableop?savev2_adam_lstm_611_lstm_cell_611_kernel_m_read_readvariableopIsavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_611_lstm_cell_611_bias_m_read_readvariableop2savev2_adam_dense_203_kernel_v_read_readvariableop0savev2_adam_dense_203_bias_v_read_readvariableop?savev2_adam_lstm_609_lstm_cell_609_kernel_v_read_readvariableopIsavev2_adam_lstm_609_lstm_cell_609_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_609_lstm_cell_609_bias_v_read_readvariableop?savev2_adam_lstm_610_lstm_cell_610_kernel_v_read_readvariableopIsavev2_adam_lstm_610_lstm_cell_610_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_610_lstm_cell_610_bias_v_read_readvariableop?savev2_adam_lstm_611_lstm_cell_611_kernel_v_read_readvariableopIsavev2_adam_lstm_611_lstm_cell_611_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_611_lstm_cell_611_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
║
╚
while_cond_3967656
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3967656___redundant_placeholder05
1while_while_cond_3967656___redundant_placeholder15
1while_while_cond_3967656___redundant_placeholder25
1while_while_cond_3967656___redundant_placeholder3
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969502

inputs?
,lstm_cell_609_matmul_readvariableop_resource:	љA
.lstm_cell_609_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_609_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_609/BiasAdd/ReadVariableOpб#lstm_cell_609/MatMul/ReadVariableOpб%lstm_cell_609/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969418*
condR
while_cond_3969417*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         : : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ћC
З

lstm_611_while_body_3968512.
*lstm_611_while_lstm_611_while_loop_counter4
0lstm_611_while_lstm_611_while_maximum_iterations
lstm_611_while_placeholder 
lstm_611_while_placeholder_1 
lstm_611_while_placeholder_2 
lstm_611_while_placeholder_3-
)lstm_611_while_lstm_611_strided_slice_1_0i
elstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0O
=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0:2(Q
?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0:
(L
>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0:(
lstm_611_while_identity
lstm_611_while_identity_1
lstm_611_while_identity_2
lstm_611_while_identity_3
lstm_611_while_identity_4
lstm_611_while_identity_5+
'lstm_611_while_lstm_611_strided_slice_1g
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorM
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource:2(O
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource:
(J
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource:(ѕб3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpб2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpб4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpЉ
@lstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    2   М
2lstm_611/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0lstm_611_while_placeholderIlstm_611/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         2*
element_dtype0░
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOpReadVariableOp=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0*
_output_shapes

:2(*
dtype0о
#lstm_611/while/lstm_cell_611/MatMulMatMul9lstm_611/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (┤
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOpReadVariableOp?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0*
_output_shapes

:
(*
dtype0й
%lstm_611/while/lstm_cell_611/MatMul_1MatMullstm_611_while_placeholder_2<lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (╗
 lstm_611/while/lstm_cell_611/addAddV2-lstm_611/while/lstm_cell_611/MatMul:product:0/lstm_611/while/lstm_cell_611/MatMul_1:product:0*
T0*'
_output_shapes
:         («
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOpReadVariableOp>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0*
_output_shapes
:(*
dtype0─
$lstm_611/while/lstm_cell_611/BiasAddBiasAdd$lstm_611/while/lstm_cell_611/add:z:0;lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         (n
,lstm_611/while/lstm_cell_611/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
"lstm_611/while/lstm_cell_611/splitSplit5lstm_611/while/lstm_cell_611/split/split_dim:output:0-lstm_611/while/lstm_cell_611/BiasAdd:output:0*
T0*`
_output_shapesN
L:         
:         
:         
:         
*
	num_splitј
$lstm_611/while/lstm_cell_611/SigmoidSigmoid+lstm_611/while/lstm_cell_611/split:output:0*
T0*'
_output_shapes
:         
љ
&lstm_611/while/lstm_cell_611/Sigmoid_1Sigmoid+lstm_611/while/lstm_cell_611/split:output:1*
T0*'
_output_shapes
:         
Б
 lstm_611/while/lstm_cell_611/mulMul*lstm_611/while/lstm_cell_611/Sigmoid_1:y:0lstm_611_while_placeholder_3*
T0*'
_output_shapes
:         
ѕ
!lstm_611/while/lstm_cell_611/ReluRelu+lstm_611/while/lstm_cell_611/split:output:2*
T0*'
_output_shapes
:         
Х
"lstm_611/while/lstm_cell_611/mul_1Mul(lstm_611/while/lstm_cell_611/Sigmoid:y:0/lstm_611/while/lstm_cell_611/Relu:activations:0*
T0*'
_output_shapes
:         
Ф
"lstm_611/while/lstm_cell_611/add_1AddV2$lstm_611/while/lstm_cell_611/mul:z:0&lstm_611/while/lstm_cell_611/mul_1:z:0*
T0*'
_output_shapes
:         
љ
&lstm_611/while/lstm_cell_611/Sigmoid_2Sigmoid+lstm_611/while/lstm_cell_611/split:output:3*
T0*'
_output_shapes
:         
Ё
#lstm_611/while/lstm_cell_611/Relu_1Relu&lstm_611/while/lstm_cell_611/add_1:z:0*
T0*'
_output_shapes
:         
║
"lstm_611/while/lstm_cell_611/mul_2Mul*lstm_611/while/lstm_cell_611/Sigmoid_2:y:01lstm_611/while/lstm_cell_611/Relu_1:activations:0*
T0*'
_output_shapes
:         
Ж
3lstm_611/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_611_while_placeholder_1lstm_611_while_placeholder&lstm_611/while/lstm_cell_611/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмV
lstm_611/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :w
lstm_611/while/addAddV2lstm_611_while_placeholderlstm_611/while/add/y:output:0*
T0*
_output_shapes
: X
lstm_611/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :І
lstm_611/while/add_1AddV2*lstm_611_while_lstm_611_while_loop_counterlstm_611/while/add_1/y:output:0*
T0*
_output_shapes
: t
lstm_611/while/IdentityIdentitylstm_611/while/add_1:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: ј
lstm_611/while/Identity_1Identity0lstm_611_while_lstm_611_while_maximum_iterations^lstm_611/while/NoOp*
T0*
_output_shapes
: t
lstm_611/while/Identity_2Identitylstm_611/while/add:z:0^lstm_611/while/NoOp*
T0*
_output_shapes
: А
lstm_611/while/Identity_3IdentityClstm_611/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_611/while/NoOp*
T0*
_output_shapes
: Ћ
lstm_611/while/Identity_4Identity&lstm_611/while/lstm_cell_611/mul_2:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:         
Ћ
lstm_611/while/Identity_5Identity&lstm_611/while/lstm_cell_611/add_1:z:0^lstm_611/while/NoOp*
T0*'
_output_shapes
:         
э
lstm_611/while/NoOpNoOp4^lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3^lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp5^lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ";
lstm_611_while_identity lstm_611/while/Identity:output:0"?
lstm_611_while_identity_1"lstm_611/while/Identity_1:output:0"?
lstm_611_while_identity_2"lstm_611/while/Identity_2:output:0"?
lstm_611_while_identity_3"lstm_611/while/Identity_3:output:0"?
lstm_611_while_identity_4"lstm_611/while/Identity_4:output:0"?
lstm_611_while_identity_5"lstm_611/while/Identity_5:output:0"T
'lstm_611_while_lstm_611_strided_slice_1)lstm_611_while_lstm_611_strided_slice_1_0"~
<lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource>lstm_611_while_lstm_cell_611_biasadd_readvariableop_resource_0"ђ
=lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource?lstm_611_while_lstm_cell_611_matmul_1_readvariableop_resource_0"|
;lstm_611_while_lstm_cell_611_matmul_readvariableop_resource=lstm_611_while_lstm_cell_611_matmul_readvariableop_resource_0"╠
clstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensorelstm_611_while_tensorarrayv2read_tensorlistgetitem_lstm_611_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         
:         
: : : : : 2j
3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp3lstm_611/while/lstm_cell_611/BiasAdd/ReadVariableOp2h
2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2lstm_611/while/lstm_cell_611/MatMul/ReadVariableOp2l
4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp4lstm_611/while/lstm_cell_611/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
О
є
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278

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
while_cond_3970363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3970363___redundant_placeholder05
1while_while_cond_3970363___redundant_placeholder15
1while_while_cond_3970363___redundant_placeholder25
1while_while_cond_3970363___redundant_placeholder3
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
чT
я
*sequential_203_lstm_609_while_body_3965493L
Hsequential_203_lstm_609_while_sequential_203_lstm_609_while_loop_counterR
Nsequential_203_lstm_609_while_sequential_203_lstm_609_while_maximum_iterations-
)sequential_203_lstm_609_while_placeholder/
+sequential_203_lstm_609_while_placeholder_1/
+sequential_203_lstm_609_while_placeholder_2/
+sequential_203_lstm_609_while_placeholder_3K
Gsequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1_0ѕ
Ѓsequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0:	љa
Nsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљ\
Msequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ*
&sequential_203_lstm_609_while_identity,
(sequential_203_lstm_609_while_identity_1,
(sequential_203_lstm_609_while_identity_2,
(sequential_203_lstm_609_while_identity_3,
(sequential_203_lstm_609_while_identity_4,
(sequential_203_lstm_609_while_identity_5I
Esequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1є
Ђsequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor]
Jsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource:	љ_
Lsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource:	dљZ
Ksequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource:	љѕбBsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpбAsequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpбCsequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpа
Osequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ъ
Asequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemЃsequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor_0)sequential_203_lstm_609_while_placeholderXsequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0¤
Asequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOpLsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0ё
2sequential_203/lstm_609/while/lstm_cell_609/MatMulMatMulHsequential_203/lstm_609/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љМ
Csequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOpNsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0в
4sequential_203/lstm_609/while/lstm_cell_609/MatMul_1MatMul+sequential_203_lstm_609_while_placeholder_2Ksequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љж
/sequential_203/lstm_609/while/lstm_cell_609/addAddV2<sequential_203/lstm_609/while/lstm_cell_609/MatMul:product:0>sequential_203/lstm_609/while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љ═
Bsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOpMsequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0Ы
3sequential_203/lstm_609/while/lstm_cell_609/BiasAddBiasAdd3sequential_203/lstm_609/while/lstm_cell_609/add:z:0Jsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ}
;sequential_203/lstm_609/while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
1sequential_203/lstm_609/while/lstm_cell_609/splitSplitDsequential_203/lstm_609/while/lstm_cell_609/split/split_dim:output:0<sequential_203/lstm_609/while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitг
3sequential_203/lstm_609/while/lstm_cell_609/SigmoidSigmoid:sequential_203/lstm_609/while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         d«
5sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_1Sigmoid:sequential_203/lstm_609/while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dл
/sequential_203/lstm_609/while/lstm_cell_609/mulMul9sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_1:y:0+sequential_203_lstm_609_while_placeholder_3*
T0*'
_output_shapes
:         dд
0sequential_203/lstm_609/while/lstm_cell_609/ReluRelu:sequential_203/lstm_609/while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dс
1sequential_203/lstm_609/while/lstm_cell_609/mul_1Mul7sequential_203/lstm_609/while/lstm_cell_609/Sigmoid:y:0>sequential_203/lstm_609/while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dп
1sequential_203/lstm_609/while/lstm_cell_609/add_1AddV23sequential_203/lstm_609/while/lstm_cell_609/mul:z:05sequential_203/lstm_609/while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         d«
5sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_2Sigmoid:sequential_203/lstm_609/while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dБ
2sequential_203/lstm_609/while/lstm_cell_609/Relu_1Relu5sequential_203/lstm_609/while/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dу
1sequential_203/lstm_609/while/lstm_cell_609/mul_2Mul9sequential_203/lstm_609/while/lstm_cell_609/Sigmoid_2:y:0@sequential_203/lstm_609/while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dд
Bsequential_203/lstm_609/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_203_lstm_609_while_placeholder_1)sequential_203_lstm_609_while_placeholder5sequential_203/lstm_609/while/lstm_cell_609/mul_2:z:0*
_output_shapes
: *
element_dtype0:жУмe
#sequential_203/lstm_609/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ц
!sequential_203/lstm_609/while/addAddV2)sequential_203_lstm_609_while_placeholder,sequential_203/lstm_609/while/add/y:output:0*
T0*
_output_shapes
: g
%sequential_203/lstm_609/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :К
#sequential_203/lstm_609/while/add_1AddV2Hsequential_203_lstm_609_while_sequential_203_lstm_609_while_loop_counter.sequential_203/lstm_609/while/add_1/y:output:0*
T0*
_output_shapes
: А
&sequential_203/lstm_609/while/IdentityIdentity'sequential_203/lstm_609/while/add_1:z:0#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: ╩
(sequential_203/lstm_609/while/Identity_1IdentityNsequential_203_lstm_609_while_sequential_203_lstm_609_while_maximum_iterations#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: А
(sequential_203/lstm_609/while/Identity_2Identity%sequential_203/lstm_609/while/add:z:0#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: ╬
(sequential_203/lstm_609/while/Identity_3IdentityRsequential_203/lstm_609/while/TensorArrayV2Write/TensorListSetItem:output_handle:0#^sequential_203/lstm_609/while/NoOp*
T0*
_output_shapes
: ┬
(sequential_203/lstm_609/while/Identity_4Identity5sequential_203/lstm_609/while/lstm_cell_609/mul_2:z:0#^sequential_203/lstm_609/while/NoOp*
T0*'
_output_shapes
:         d┬
(sequential_203/lstm_609/while/Identity_5Identity5sequential_203/lstm_609/while/lstm_cell_609/add_1:z:0#^sequential_203/lstm_609/while/NoOp*
T0*'
_output_shapes
:         d│
"sequential_203/lstm_609/while/NoOpNoOpC^sequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpB^sequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpD^sequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Y
&sequential_203_lstm_609_while_identity/sequential_203/lstm_609/while/Identity:output:0"]
(sequential_203_lstm_609_while_identity_11sequential_203/lstm_609/while/Identity_1:output:0"]
(sequential_203_lstm_609_while_identity_21sequential_203/lstm_609/while/Identity_2:output:0"]
(sequential_203_lstm_609_while_identity_31sequential_203/lstm_609/while/Identity_3:output:0"]
(sequential_203_lstm_609_while_identity_41sequential_203/lstm_609/while/Identity_4:output:0"]
(sequential_203_lstm_609_while_identity_51sequential_203/lstm_609/while/Identity_5:output:0"ю
Ksequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resourceMsequential_203_lstm_609_while_lstm_cell_609_biasadd_readvariableop_resource_0"ъ
Lsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resourceNsequential_203_lstm_609_while_lstm_cell_609_matmul_1_readvariableop_resource_0"џ
Jsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resourceLsequential_203_lstm_609_while_lstm_cell_609_matmul_readvariableop_resource_0"љ
Esequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1Gsequential_203_lstm_609_while_sequential_203_lstm_609_strided_slice_1_0"і
Ђsequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensorЃsequential_203_lstm_609_while_tensorarrayv2read_tensorlistgetitem_sequential_203_lstm_609_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2ѕ
Bsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOpBsequential_203/lstm_609/while/lstm_cell_609/BiasAdd/ReadVariableOp2є
Asequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOpAsequential_203/lstm_609/while/lstm_cell_609/MatMul/ReadVariableOp2і
Csequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOpCsequential_203/lstm_609/while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
lstm_610_while_cond_3968372.
*lstm_610_while_lstm_610_while_loop_counter4
0lstm_610_while_lstm_610_while_maximum_iterations
lstm_610_while_placeholder 
lstm_610_while_placeholder_1 
lstm_610_while_placeholder_2 
lstm_610_while_placeholder_30
,lstm_610_while_less_lstm_610_strided_slice_1G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder0G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder1G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder2G
Clstm_610_while_lstm_610_while_cond_3968372___redundant_placeholder3
lstm_610_while_identity
є
lstm_610/while/LessLesslstm_610_while_placeholder,lstm_610_while_less_lstm_610_strided_slice_1*
T0*
_output_shapes
: ]
lstm_610/while/IdentityIdentitylstm_610/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_610_while_identity lstm_610/while/Identity:output:0*(
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
lstm_609_while_cond_3968233.
*lstm_609_while_lstm_609_while_loop_counter4
0lstm_609_while_lstm_609_while_maximum_iterations
lstm_609_while_placeholder 
lstm_609_while_placeholder_1 
lstm_609_while_placeholder_2 
lstm_609_while_placeholder_30
,lstm_609_while_less_lstm_609_strided_slice_1G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder0G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder1G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder2G
Clstm_609_while_lstm_609_while_cond_3968233___redundant_placeholder3
lstm_609_while_identity
є
lstm_609/while/LessLesslstm_609_while_placeholder,lstm_609_while_less_lstm_609_strided_slice_1*
T0*
_output_shapes
: ]
lstm_609/while/IdentityIdentitylstm_609/while/Less:z:0*
T0
*
_output_shapes
: ";
lstm_609_while_identity lstm_609/while/Identity:output:0*(
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
О
є
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966424

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
РJ
Б
E__inference_lstm_610_layer_call_and_return_conditional_losses_3967741

inputs?
,lstm_cell_610_matmul_readvariableop_resource:	d╚A
.lstm_cell_610_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_610_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_610/BiasAdd/ReadVariableOpб#lstm_cell_610/MatMul/ReadVariableOpб%lstm_cell_610/MatMul_1/ReadVariableOpбwhile;
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3967657*
condR
while_cond_3967656*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:         d
 
_user_specified_nameinputs
Л8
┌
while_body_3966976
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_609_matmul_readvariableop_resource_0:	љI
6while_lstm_cell_609_matmul_1_readvariableop_resource_0:	dљD
5while_lstm_cell_609_biasadd_readvariableop_resource_0:	љ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_609_matmul_readvariableop_resource:	љG
4while_lstm_cell_609_matmul_1_readvariableop_resource:	dљB
3while_lstm_cell_609_biasadd_readvariableop_resource:	љѕб*while/lstm_cell_609/BiasAdd/ReadVariableOpб)while/lstm_cell_609/MatMul/ReadVariableOpб+while/lstm_cell_609/MatMul_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ъ
)while/lstm_cell_609/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_609_matmul_readvariableop_resource_0*
_output_shapes
:	љ*
dtype0╝
while/lstm_cell_609/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љБ
+while/lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_609_matmul_1_readvariableop_resource_0*
_output_shapes
:	dљ*
dtype0Б
while/lstm_cell_609/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љА
while/lstm_cell_609/addAddV2$while/lstm_cell_609/MatMul:product:0&while/lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЮ
*while/lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_609_biasadd_readvariableop_resource_0*
_output_shapes	
:љ*
dtype0ф
while/lstm_cell_609/BiasAddBiasAddwhile/lstm_cell_609/add:z:02while/lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љe
#while/lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ы
while/lstm_cell_609/splitSplit,while/lstm_cell_609/split/split_dim:output:0$while/lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_split|
while/lstm_cell_609/SigmoidSigmoid"while/lstm_cell_609/split:output:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_1Sigmoid"while/lstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dѕ
while/lstm_cell_609/mulMul!while/lstm_cell_609/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dv
while/lstm_cell_609/ReluRelu"while/lstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЏ
while/lstm_cell_609/mul_1Mulwhile/lstm_cell_609/Sigmoid:y:0&while/lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         dљ
while/lstm_cell_609/add_1AddV2while/lstm_cell_609/mul:z:0while/lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         d~
while/lstm_cell_609/Sigmoid_2Sigmoid"while/lstm_cell_609/split:output:3*
T0*'
_output_shapes
:         ds
while/lstm_cell_609/Relu_1Reluwhile/lstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЪ
while/lstm_cell_609/mul_2Mul!while/lstm_cell_609/Sigmoid_2:y:0(while/lstm_cell_609/Relu_1:activations:0*
T0*'
_output_shapes
:         dк
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_609/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_609/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dz
while/Identity_5Identitywhile/lstm_cell_609/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dМ

while/NoOpNoOp+^while/lstm_cell_609/BiasAdd/ReadVariableOp*^while/lstm_cell_609/MatMul/ReadVariableOp,^while/lstm_cell_609/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_609_biasadd_readvariableop_resource5while_lstm_cell_609_biasadd_readvariableop_resource_0"n
4while_lstm_cell_609_matmul_1_readvariableop_resource6while_lstm_cell_609_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_609_matmul_readvariableop_resource4while_lstm_cell_609_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2X
*while/lstm_cell_609/BiasAdd/ReadVariableOp*while/lstm_cell_609/BiasAdd/ReadVariableOp2V
)while/lstm_cell_609/MatMul/ReadVariableOp)while/lstm_cell_609/MatMul/ReadVariableOp2Z
+while/lstm_cell_609/MatMul_1/ReadVariableOp+while/lstm_cell_609/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3966361

inputs(
lstm_cell_610_3966279:	d╚(
lstm_cell_610_3966281:	2╚$
lstm_cell_610_3966283:	╚
identityѕб%lstm_cell_610/StatefulPartitionedCallбwhile;
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
%lstm_cell_610/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_610_3966279lstm_cell_610_3966281lstm_cell_610_3966283*
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3966278n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_610_3966279lstm_cell_610_3966281lstm_cell_610_3966283*
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
while_body_3966292*
condR
while_cond_3966291*K
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
NoOpNoOp&^lstm_cell_610/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2N
%lstm_cell_610/StatefulPartitionedCall%lstm_cell_610/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
аK
Ц
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969216
inputs_0?
,lstm_cell_609_matmul_readvariableop_resource:	љA
.lstm_cell_609_matmul_1_readvariableop_resource:	dљ<
-lstm_cell_609_biasadd_readvariableop_resource:	љ
identityѕб$lstm_cell_609/BiasAdd/ReadVariableOpб#lstm_cell_609/MatMul/ReadVariableOpб%lstm_cell_609/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_609/MatMul/ReadVariableOpReadVariableOp,lstm_cell_609_matmul_readvariableop_resource*
_output_shapes
:	љ*
dtype0ў
lstm_cell_609/MatMulMatMulstrided_slice_2:output:0+lstm_cell_609/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЋ
%lstm_cell_609/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_609_matmul_1_readvariableop_resource*
_output_shapes
:	dљ*
dtype0њ
lstm_cell_609/MatMul_1MatMulzeros:output:0-lstm_cell_609/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љЈ
lstm_cell_609/addAddV2lstm_cell_609/MatMul:product:0 lstm_cell_609/MatMul_1:product:0*
T0*(
_output_shapes
:         љЈ
$lstm_cell_609/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_609_biasadd_readvariableop_resource*
_output_shapes	
:љ*
dtype0ў
lstm_cell_609/BiasAddBiasAddlstm_cell_609/add:z:0,lstm_cell_609/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         љ_
lstm_cell_609/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_609/splitSplit&lstm_cell_609/split/split_dim:output:0lstm_cell_609/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitp
lstm_cell_609/SigmoidSigmoidlstm_cell_609/split:output:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_1Sigmoidlstm_cell_609/split:output:1*
T0*'
_output_shapes
:         dy
lstm_cell_609/mulMullstm_cell_609/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         dj
lstm_cell_609/ReluRelulstm_cell_609/split:output:2*
T0*'
_output_shapes
:         dЅ
lstm_cell_609/mul_1Mullstm_cell_609/Sigmoid:y:0 lstm_cell_609/Relu:activations:0*
T0*'
_output_shapes
:         d~
lstm_cell_609/add_1AddV2lstm_cell_609/mul:z:0lstm_cell_609/mul_1:z:0*
T0*'
_output_shapes
:         dr
lstm_cell_609/Sigmoid_2Sigmoidlstm_cell_609/split:output:3*
T0*'
_output_shapes
:         dg
lstm_cell_609/Relu_1Relulstm_cell_609/add_1:z:0*
T0*'
_output_shapes
:         dЇ
lstm_cell_609/mul_2Mullstm_cell_609/Sigmoid_2:y:0"lstm_cell_609/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_609_matmul_readvariableop_resource.lstm_cell_609_matmul_1_readvariableop_resource-lstm_cell_609_biasadd_readvariableop_resource*
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
while_body_3969132*
condR
while_cond_3969131*K
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
NoOpNoOp%^lstm_cell_609/BiasAdd/ReadVariableOp$^lstm_cell_609/MatMul/ReadVariableOp&^lstm_cell_609/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2L
$lstm_cell_609/BiasAdd/ReadVariableOp$lstm_cell_609/BiasAdd/ReadVariableOp2J
#lstm_cell_609/MatMul/ReadVariableOp#lstm_cell_609/MatMul/ReadVariableOp2N
%lstm_cell_609/MatMul_1/ReadVariableOp%lstm_cell_609/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs/0
║
╚
while_cond_3966291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966291___redundant_placeholder05
1while_while_cond_3966291___redundant_placeholder15
1while_while_cond_3966291___redundant_placeholder25
1while_while_cond_3966291___redundant_placeholder3
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
while_cond_3969131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3969131___redundant_placeholder05
1while_while_cond_3969131___redundant_placeholder15
1while_while_cond_3969131___redundant_placeholder25
1while_while_cond_3969131___redundant_placeholder3
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
═
Ѓ
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3966774

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
▀
ѕ
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970962

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
while_cond_3966641
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3966641___redundant_placeholder05
1while_while_cond_3966641___redundant_placeholder15
1while_while_cond_3966641___redundant_placeholder25
1while_while_cond_3966641___redundant_placeholder3
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
к
ў
+__inference_dense_203_layer_call_fn_3970886

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
F__inference_dense_203_layer_call_and_return_conditional_losses_3967378o
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
я

ю
0__inference_sequential_203_layer_call_fn_3968175

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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967974o
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
я

ю
0__inference_sequential_203_layer_call_fn_3968148

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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3967385o
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
аK
Ц
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969975
inputs_0?
,lstm_cell_610_matmul_readvariableop_resource:	d╚A
.lstm_cell_610_matmul_1_readvariableop_resource:	2╚<
-lstm_cell_610_biasadd_readvariableop_resource:	╚
identityѕб$lstm_cell_610/BiasAdd/ReadVariableOpб#lstm_cell_610/MatMul/ReadVariableOpб%lstm_cell_610/MatMul_1/ReadVariableOpбwhile=
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
#lstm_cell_610/MatMul/ReadVariableOpReadVariableOp,lstm_cell_610_matmul_readvariableop_resource*
_output_shapes
:	d╚*
dtype0ў
lstm_cell_610/MatMulMatMulstrided_slice_2:output:0+lstm_cell_610/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ћ
%lstm_cell_610/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_610_matmul_1_readvariableop_resource*
_output_shapes
:	2╚*
dtype0њ
lstm_cell_610/MatMul_1MatMulzeros:output:0-lstm_cell_610/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚Ј
lstm_cell_610/addAddV2lstm_cell_610/MatMul:product:0 lstm_cell_610/MatMul_1:product:0*
T0*(
_output_shapes
:         ╚Ј
$lstm_cell_610/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_610_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0ў
lstm_cell_610/BiasAddBiasAddlstm_cell_610/add:z:0,lstm_cell_610/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         ╚_
lstm_cell_610/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Я
lstm_cell_610/splitSplit&lstm_cell_610/split/split_dim:output:0lstm_cell_610/BiasAdd:output:0*
T0*`
_output_shapesN
L:         2:         2:         2:         2*
	num_splitp
lstm_cell_610/SigmoidSigmoidlstm_cell_610/split:output:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_1Sigmoidlstm_cell_610/split:output:1*
T0*'
_output_shapes
:         2y
lstm_cell_610/mulMullstm_cell_610/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         2j
lstm_cell_610/ReluRelulstm_cell_610/split:output:2*
T0*'
_output_shapes
:         2Ѕ
lstm_cell_610/mul_1Mullstm_cell_610/Sigmoid:y:0 lstm_cell_610/Relu:activations:0*
T0*'
_output_shapes
:         2~
lstm_cell_610/add_1AddV2lstm_cell_610/mul:z:0lstm_cell_610/mul_1:z:0*
T0*'
_output_shapes
:         2r
lstm_cell_610/Sigmoid_2Sigmoidlstm_cell_610/split:output:3*
T0*'
_output_shapes
:         2g
lstm_cell_610/Relu_1Relulstm_cell_610/add_1:z:0*
T0*'
_output_shapes
:         2Ї
lstm_cell_610/mul_2Mullstm_cell_610/Sigmoid_2:y:0"lstm_cell_610/Relu_1:activations:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_610_matmul_readvariableop_resource.lstm_cell_610_matmul_1_readvariableop_resource-lstm_cell_610_biasadd_readvariableop_resource*
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
while_body_3969891*
condR
while_cond_3969890*K
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
NoOpNoOp%^lstm_cell_610/BiasAdd/ReadVariableOp$^lstm_cell_610/MatMul/ReadVariableOp&^lstm_cell_610/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2L
$lstm_cell_610/BiasAdd/ReadVariableOp$lstm_cell_610/BiasAdd/ReadVariableOp2J
#lstm_cell_610/MatMul/ReadVariableOp#lstm_cell_610/MatMul/ReadVariableOp2N
%lstm_cell_610/MatMul_1/ReadVariableOp%lstm_cell_610/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
M
lstm_609_input;
 serving_default_lstm_609_input:0         =
	dense_2030
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
2dense_203/kernel
:2dense_203/bias
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
0:.	љ2lstm_609/lstm_cell_609/kernel
::8	dљ2'lstm_609/lstm_cell_609/recurrent_kernel
*:(љ2lstm_609/lstm_cell_609/bias
0:.	d╚2lstm_610/lstm_cell_610/kernel
::8	2╚2'lstm_610/lstm_cell_610/recurrent_kernel
*:(╚2lstm_610/lstm_cell_610/bias
/:-2(2lstm_611/lstm_cell_611/kernel
9:7
(2'lstm_611/lstm_cell_611/recurrent_kernel
):'(2lstm_611/lstm_cell_611/bias
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
2Adam/dense_203/kernel/m
!:2Adam/dense_203/bias/m
5:3	љ2$Adam/lstm_609/lstm_cell_609/kernel/m
?:=	dљ2.Adam/lstm_609/lstm_cell_609/recurrent_kernel/m
/:-љ2"Adam/lstm_609/lstm_cell_609/bias/m
5:3	d╚2$Adam/lstm_610/lstm_cell_610/kernel/m
?:=	2╚2.Adam/lstm_610/lstm_cell_610/recurrent_kernel/m
/:-╚2"Adam/lstm_610/lstm_cell_610/bias/m
4:22(2$Adam/lstm_611/lstm_cell_611/kernel/m
>:<
(2.Adam/lstm_611/lstm_cell_611/recurrent_kernel/m
.:,(2"Adam/lstm_611/lstm_cell_611/bias/m
':%
2Adam/dense_203/kernel/v
!:2Adam/dense_203/bias/v
5:3	љ2$Adam/lstm_609/lstm_cell_609/kernel/v
?:=	dљ2.Adam/lstm_609/lstm_cell_609/recurrent_kernel/v
/:-љ2"Adam/lstm_609/lstm_cell_609/bias/v
5:3	d╚2$Adam/lstm_610/lstm_cell_610/kernel/v
?:=	2╚2.Adam/lstm_610/lstm_cell_610/recurrent_kernel/v
/:-╚2"Adam/lstm_610/lstm_cell_610/bias/v
4:22(2$Adam/lstm_611/lstm_cell_611/kernel/v
>:<
(2.Adam/lstm_611/lstm_cell_611/recurrent_kernel/v
.:,(2"Adam/lstm_611/lstm_cell_611/bias/v
ј2І
0__inference_sequential_203_layer_call_fn_3967410
0__inference_sequential_203_layer_call_fn_3968148
0__inference_sequential_203_layer_call_fn_3968175
0__inference_sequential_203_layer_call_fn_3968026└
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968602
K__inference_sequential_203_layer_call_and_return_conditional_losses_3969029
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968056
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968086└
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
"__inference__wrapped_model_3965861lstm_609_input"ў
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
*__inference_lstm_609_layer_call_fn_3969040
*__inference_lstm_609_layer_call_fn_3969051
*__inference_lstm_609_layer_call_fn_3969062
*__inference_lstm_609_layer_call_fn_3969073Н
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969216
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969359
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969502
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969645Н
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
*__inference_lstm_610_layer_call_fn_3969656
*__inference_lstm_610_layer_call_fn_3969667
*__inference_lstm_610_layer_call_fn_3969678
*__inference_lstm_610_layer_call_fn_3969689Н
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969832
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969975
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970118
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970261Н
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
*__inference_lstm_611_layer_call_fn_3970272
*__inference_lstm_611_layer_call_fn_3970283
*__inference_lstm_611_layer_call_fn_3970294
*__inference_lstm_611_layer_call_fn_3970305Н
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970448
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970591
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970734
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970877Н
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
+__inference_dense_203_layer_call_fn_3970886б
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
F__inference_dense_203_layer_call_and_return_conditional_losses_3970896б
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
%__inference_signature_wrapper_3968121lstm_609_input"ћ
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
/__inference_lstm_cell_609_layer_call_fn_3970913
/__inference_lstm_cell_609_layer_call_fn_3970930Й
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970962
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970994Й
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
/__inference_lstm_cell_610_layer_call_fn_3971011
/__inference_lstm_cell_610_layer_call_fn_3971028Й
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971060
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971092Й
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
/__inference_lstm_cell_611_layer_call_fn_3971109
/__inference_lstm_cell_611_layer_call_fn_3971126Й
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971158
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971190Й
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
"__inference__wrapped_model_3965861Ђ()*+,-./0;б8
1б.
,і)
lstm_609_input         
ф "5ф2
0
	dense_203#і 
	dense_203         д
F__inference_dense_203_layer_call_and_return_conditional_losses_3970896\/б,
%б"
 і
inputs         

ф "%б"
і
0         
џ ~
+__inference_dense_203_layer_call_fn_3970886O/б,
%б"
 і
inputs         

ф "і         н
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969216і()*OбL
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969359і()*OбL
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969502q()*?б<
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
E__inference_lstm_609_layer_call_and_return_conditional_losses_3969645q()*?б<
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
*__inference_lstm_609_layer_call_fn_3969040}()*OбL
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
*__inference_lstm_609_layer_call_fn_3969051}()*OбL
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
*__inference_lstm_609_layer_call_fn_3969062d()*?б<
5б2
$і!
inputs         

 
p 

 
ф "і         dњ
*__inference_lstm_609_layer_call_fn_3969073d()*?б<
5б2
$і!
inputs         

 
p

 
ф "і         dн
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969832і+,-OбL
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3969975і+,-OбL
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970118q+,-?б<
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
E__inference_lstm_610_layer_call_and_return_conditional_losses_3970261q+,-?б<
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
*__inference_lstm_610_layer_call_fn_3969656}+,-OбL
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
*__inference_lstm_610_layer_call_fn_3969667}+,-OбL
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
*__inference_lstm_610_layer_call_fn_3969678d+,-?б<
5б2
$і!
inputs         d

 
p 

 
ф "і         2њ
*__inference_lstm_610_layer_call_fn_3969689d+,-?б<
5б2
$і!
inputs         d

 
p

 
ф "і         2к
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970448}./0OбL
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970591}./0OбL
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970734m./0?б<
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
E__inference_lstm_611_layer_call_and_return_conditional_losses_3970877m./0?б<
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
*__inference_lstm_611_layer_call_fn_3970272p./0OбL
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
*__inference_lstm_611_layer_call_fn_3970283p./0OбL
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
*__inference_lstm_611_layer_call_fn_3970294`./0?б<
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
*__inference_lstm_611_layer_call_fn_3970305`./0?б<
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970962§()*ђб}
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
J__inference_lstm_cell_609_layer_call_and_return_conditional_losses_3970994§()*ђб}
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
/__inference_lstm_cell_609_layer_call_fn_3970913ь()*ђб}
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
/__inference_lstm_cell_609_layer_call_fn_3970930ь()*ђб}
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971060§+,-ђб}
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
J__inference_lstm_cell_610_layer_call_and_return_conditional_losses_3971092§+,-ђб}
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
/__inference_lstm_cell_610_layer_call_fn_3971011ь+,-ђб}
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
/__inference_lstm_cell_610_layer_call_fn_3971028ь+,-ђб}
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971158§./0ђб}
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
J__inference_lstm_cell_611_layer_call_and_return_conditional_losses_3971190§./0ђб}
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
/__inference_lstm_cell_611_layer_call_fn_3971109ь./0ђб}
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
/__inference_lstm_cell_611_layer_call_fn_3971126ь./0ђб}
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968056y()*+,-./0Cб@
9б6
,і)
lstm_609_input         
p 

 
ф "%б"
і
0         
џ ╚
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968086y()*+,-./0Cб@
9б6
,і)
lstm_609_input         
p

 
ф "%б"
і
0         
џ └
K__inference_sequential_203_layer_call_and_return_conditional_losses_3968602q()*+,-./0;б8
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
K__inference_sequential_203_layer_call_and_return_conditional_losses_3969029q()*+,-./0;б8
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
0__inference_sequential_203_layer_call_fn_3967410l()*+,-./0Cб@
9б6
,і)
lstm_609_input         
p 

 
ф "і         а
0__inference_sequential_203_layer_call_fn_3968026l()*+,-./0Cб@
9б6
,і)
lstm_609_input         
p

 
ф "і         ў
0__inference_sequential_203_layer_call_fn_3968148d()*+,-./0;б8
1б.
$і!
inputs         
p 

 
ф "і         ў
0__inference_sequential_203_layer_call_fn_3968175d()*+,-./0;б8
1б.
$і!
inputs         
p

 
ф "і         й
%__inference_signature_wrapper_3968121Њ()*+,-./0MбJ
б 
Cф@
>
lstm_609_input,і)
lstm_609_input         "5ф2
0
	dense_203#і 
	dense_203         