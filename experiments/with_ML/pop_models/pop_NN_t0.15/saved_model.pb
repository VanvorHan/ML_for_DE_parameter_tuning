��	
��
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28��
z
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_5/kernel
s
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel* 
_output_shapes
:
��*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:�*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	�2*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:2*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:2*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_5/kernel/m
�
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m* 
_output_shapes
:
��*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*&
shared_nameAdam/dense_6/kernel/m
�
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	�2*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:2*
dtype0
�
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*&
shared_nameAdam/dense_5/kernel/v
�
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v* 
_output_shapes
:
��*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*&
shared_nameAdam/dense_6/kernel/v
�
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	�2*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:2*
dtype0
�
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�$
value�$B�$ B�$
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
h


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
�
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK
*

0
1
2
3
4
5
*

0
1
2
3
4
5
 
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
 
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
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
 

0
1
2

50
61
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
 
 
4
	7total
	8count
9	variables
:	keras_api
D
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

70
81

9	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

>	variables
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_2Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2dense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_19050743
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
z
StaticRegexFullMatchStaticRegexFullMatchsaver_filename"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
\
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
a
Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
h
SelectSelectStaticRegexFullMatchConst_1Const_2"/device:CPU:**
T0*
_output_shapes
: 
`

StringJoin
StringJoinsaver_filenameSelect"/device:CPU:**
N*
_output_shapes
: 
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpConst"/device:CPU:0**
dtypes 
2	
�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
o
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixessaver_filename"/device:CPU:0
i
IdentityIdentitysaver_filename^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
	RestoreV2	RestoreV2saver_filenameRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	
S

Identity_1Identity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOpAssignVariableOpdense_5/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_1AssignVariableOpdense_5/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_2AssignVariableOpdense_6/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_3AssignVariableOpdense_6/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_4AssignVariableOpdense_7/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_5AssignVariableOpdense_7/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:6"/device:CPU:0*
T0	*
_output_shapes
:
Y
AssignVariableOp_6AssignVariableOp	Adam/iter
Identity_7"/device:CPU:0*
dtype0	
U

Identity_8IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
[
AssignVariableOp_7AssignVariableOpAdam/beta_1
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
[
AssignVariableOp_8AssignVariableOpAdam/beta_2
Identity_9"/device:CPU:0*
dtype0
V
Identity_10IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
[
AssignVariableOp_9AssignVariableOp
Adam/decayIdentity_10"/device:CPU:0*
dtype0
W
Identity_11IdentityRestoreV2:10"/device:CPU:0*
T0*
_output_shapes
:
d
AssignVariableOp_10AssignVariableOpAdam/learning_rateIdentity_11"/device:CPU:0*
dtype0
W
Identity_12IdentityRestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_11AssignVariableOptotalIdentity_12"/device:CPU:0*
dtype0
W
Identity_13IdentityRestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_12AssignVariableOpcountIdentity_13"/device:CPU:0*
dtype0
W
Identity_14IdentityRestoreV2:13"/device:CPU:0*
T0*
_output_shapes
:
Y
AssignVariableOp_13AssignVariableOptotal_1Identity_14"/device:CPU:0*
dtype0
W
Identity_15IdentityRestoreV2:14"/device:CPU:0*
T0*
_output_shapes
:
Y
AssignVariableOp_14AssignVariableOpcount_1Identity_15"/device:CPU:0*
dtype0
W
Identity_16IdentityRestoreV2:15"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_15AssignVariableOpAdam/dense_5/kernel/mIdentity_16"/device:CPU:0*
dtype0
W
Identity_17IdentityRestoreV2:16"/device:CPU:0*
T0*
_output_shapes
:
e
AssignVariableOp_16AssignVariableOpAdam/dense_5/bias/mIdentity_17"/device:CPU:0*
dtype0
W
Identity_18IdentityRestoreV2:17"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_17AssignVariableOpAdam/dense_6/kernel/mIdentity_18"/device:CPU:0*
dtype0
W
Identity_19IdentityRestoreV2:18"/device:CPU:0*
T0*
_output_shapes
:
e
AssignVariableOp_18AssignVariableOpAdam/dense_6/bias/mIdentity_19"/device:CPU:0*
dtype0
W
Identity_20IdentityRestoreV2:19"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_19AssignVariableOpAdam/dense_7/kernel/mIdentity_20"/device:CPU:0*
dtype0
W
Identity_21IdentityRestoreV2:20"/device:CPU:0*
T0*
_output_shapes
:
e
AssignVariableOp_20AssignVariableOpAdam/dense_7/bias/mIdentity_21"/device:CPU:0*
dtype0
W
Identity_22IdentityRestoreV2:21"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_21AssignVariableOpAdam/dense_5/kernel/vIdentity_22"/device:CPU:0*
dtype0
W
Identity_23IdentityRestoreV2:22"/device:CPU:0*
T0*
_output_shapes
:
e
AssignVariableOp_22AssignVariableOpAdam/dense_5/bias/vIdentity_23"/device:CPU:0*
dtype0
W
Identity_24IdentityRestoreV2:23"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_23AssignVariableOpAdam/dense_6/kernel/vIdentity_24"/device:CPU:0*
dtype0
W
Identity_25IdentityRestoreV2:24"/device:CPU:0*
T0*
_output_shapes
:
e
AssignVariableOp_24AssignVariableOpAdam/dense_6/bias/vIdentity_25"/device:CPU:0*
dtype0
W
Identity_26IdentityRestoreV2:25"/device:CPU:0*
T0*
_output_shapes
:
g
AssignVariableOp_25AssignVariableOpAdam/dense_7/kernel/vIdentity_26"/device:CPU:0*
dtype0
W
Identity_27IdentityRestoreV2:26"/device:CPU:0*
T0*
_output_shapes
:
e
AssignVariableOp_26AssignVariableOpAdam/dense_7/bias/vIdentity_27"/device:CPU:0*
dtype0

NoOp_1NoOp"/device:CPU:0
�
Identity_28Identitysaver_filename^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp_1"/device:CPU:0*
T0*
_output_shapes
: ��
�"
�
#__inference__wrapped_model_19049874
input_2G
3sequential_1_dense_5_matmul_readvariableop_resource:
��C
4sequential_1_dense_5_biasadd_readvariableop_resource:	�F
3sequential_1_dense_6_matmul_readvariableop_resource:	�2B
4sequential_1_dense_6_biasadd_readvariableop_resource:2E
3sequential_1_dense_7_matmul_readvariableop_resource:2B
4sequential_1_dense_7_biasadd_readvariableop_resource:
identity��+sequential_1/dense_5/BiasAdd/ReadVariableOp�*sequential_1/dense_5/MatMul/ReadVariableOp�+sequential_1/dense_6/BiasAdd/ReadVariableOp�*sequential_1/dense_6/MatMul/ReadVariableOp�+sequential_1/dense_7/BiasAdd/ReadVariableOp�*sequential_1/dense_7/MatMul/ReadVariableOp�
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_1/dense_5/MatMulMatMulinput_22sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_1/dense_5/ReluRelu%sequential_1/dense_5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_1/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
sequential_1/dense_6/MatMulMatMul'sequential_1/dense_5/Relu:activations:02sequential_1/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
+sequential_1/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
sequential_1/dense_6/BiasAddBiasAdd%sequential_1/dense_6/MatMul:product:03sequential_1/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2z
sequential_1/dense_6/ReluRelu%sequential_1/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
*sequential_1/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
sequential_1/dense_7/MatMulMatMul'sequential_1/dense_6/Relu:activations:02sequential_1/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_1/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/dense_7/BiasAddBiasAdd%sequential_1/dense_7/MatMul:product:03sequential_1/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_1/dense_7/SoftmaxSoftmax%sequential_1/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������u
IdentityIdentity&sequential_1/dense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp,^sequential_1/dense_6/BiasAdd/ReadVariableOp+^sequential_1/dense_6/MatMul/ReadVariableOp,^sequential_1/dense_7/BiasAdd/ReadVariableOp+^sequential_1/dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp2Z
+sequential_1/dense_6/BiasAdd/ReadVariableOp+sequential_1/dense_6/BiasAdd/ReadVariableOp2X
*sequential_1/dense_6/MatMul/ReadVariableOp*sequential_1/dense_6/MatMul/ReadVariableOp2Z
+sequential_1/dense_7/BiasAdd/ReadVariableOp+sequential_1/dense_7/BiasAdd/ReadVariableOp2X
*sequential_1/dense_7/MatMul/ReadVariableOp*sequential_1/dense_7/MatMul/ReadVariableOp:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_2
�B
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050908

inputs:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�m
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050603
input_2:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp�8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp�8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0{
dense_5/MatMulMatMulinput_2%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:����������m
(dense_5/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
&dense_5/dense_5/kernel/Regularizer/AbsAbs=dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_5/dense_5/kernel/Regularizer/SumSum*dense_5/dense_5/kernel/Regularizer/Abs:y:03dense_5/dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_5/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_5/dense_5/kernel/Regularizer/mulMul1dense_5/dense_5/kernel/Regularizer/mul/x:output:0/dense_5/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_5/dense_5/kernel/Regularizer/addAddV21dense_5/dense_5/kernel/Regularizer/Const:output:0*dense_5/dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)dense_5/dense_5/kernel/Regularizer/SquareSquare@dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_5/dense_5/kernel/Regularizer/Sum_1Sum-dense_5/dense_5/kernel/Regularizer/Square:y:03dense_5/dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_5/dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_5/dense_5/kernel/Regularizer/mul_1Mul3dense_5/dense_5/kernel/Regularizer/mul_1/x:output:01dense_5/dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_5/dense_5/kernel/Regularizer/add_1AddV2*dense_5/dense_5/kernel/Regularizer/add:z:0,dense_5/dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2m
(dense_6/dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
&dense_6/dense_6/kernel/Regularizer/AbsAbs=dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_6/dense_6/kernel/Regularizer/SumSum*dense_6/dense_6/kernel/Regularizer/Abs:y:03dense_6/dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_6/dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_6/dense_6/kernel/Regularizer/mulMul1dense_6/dense_6/kernel/Regularizer/mul/x:output:0/dense_6/dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_6/dense_6/kernel/Regularizer/addAddV21dense_6/dense_6/kernel/Regularizer/Const:output:0*dense_6/dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
)dense_6/dense_6/kernel/Regularizer/SquareSquare@dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_6/dense_6/kernel/Regularizer/Sum_1Sum-dense_6/dense_6/kernel/Regularizer/Square:y:03dense_6/dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_6/dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_6/dense_6/kernel/Regularizer/mul_1Mul3dense_6/dense_6/kernel/Regularizer/mul_1/x:output:01dense_6/dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_6/dense_6/kernel/Regularizer/add_1AddV2*dense_6/dense_6/kernel/Regularizer/add:z:0,dense_6/dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp6^dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp9^dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp6^dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp9^dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2n
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2n
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_2
�
�
E__inference_dense_6_layer_call_and_return_conditional_losses_19051097

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
E__inference_dense_7_layer_call_and_return_conditional_losses_19051119

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�B
�
/__inference_sequential_1_layer_call_fn_19050853

inputs:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_19051139J
6dense_5_kernel_regularizer_abs_readvariableop_resource:
��
identity��-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOpe
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp6dense_5_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6dense_5_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_5/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp
�
�
&__inference_signature_wrapper_19050743
input_2
unknown:
��
	unknown_0:	�
	unknown_1:	�2
	unknown_2:2
	unknown_3:2
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_19049874o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_2
�
�
E__inference_dense_5_layer_call_and_return_conditional_losses_19051030

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�B
�
/__inference_sequential_1_layer_call_fn_19050798

inputs:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
*__inference_dense_7_layer_call_fn_19051108

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�m
�
/__inference_sequential_1_layer_call_fn_19049960
input_2:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp�8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp�8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0{
dense_5/MatMulMatMulinput_2%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:����������m
(dense_5/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
&dense_5/dense_5/kernel/Regularizer/AbsAbs=dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_5/dense_5/kernel/Regularizer/SumSum*dense_5/dense_5/kernel/Regularizer/Abs:y:03dense_5/dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_5/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_5/dense_5/kernel/Regularizer/mulMul1dense_5/dense_5/kernel/Regularizer/mul/x:output:0/dense_5/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_5/dense_5/kernel/Regularizer/addAddV21dense_5/dense_5/kernel/Regularizer/Const:output:0*dense_5/dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)dense_5/dense_5/kernel/Regularizer/SquareSquare@dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_5/dense_5/kernel/Regularizer/Sum_1Sum-dense_5/dense_5/kernel/Regularizer/Square:y:03dense_5/dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_5/dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_5/dense_5/kernel/Regularizer/mul_1Mul3dense_5/dense_5/kernel/Regularizer/mul_1/x:output:01dense_5/dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_5/dense_5/kernel/Regularizer/add_1AddV2*dense_5/dense_5/kernel/Regularizer/add:z:0,dense_5/dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2m
(dense_6/dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
&dense_6/dense_6/kernel/Regularizer/AbsAbs=dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_6/dense_6/kernel/Regularizer/SumSum*dense_6/dense_6/kernel/Regularizer/Abs:y:03dense_6/dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_6/dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_6/dense_6/kernel/Regularizer/mulMul1dense_6/dense_6/kernel/Regularizer/mul/x:output:0/dense_6/dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_6/dense_6/kernel/Regularizer/addAddV21dense_6/dense_6/kernel/Regularizer/Const:output:0*dense_6/dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
)dense_6/dense_6/kernel/Regularizer/SquareSquare@dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_6/dense_6/kernel/Regularizer/Sum_1Sum-dense_6/dense_6/kernel/Regularizer/Square:y:03dense_6/dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_6/dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_6/dense_6/kernel/Regularizer/mul_1Mul3dense_6/dense_6/kernel/Regularizer/mul_1/x:output:01dense_6/dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_6/dense_6/kernel/Regularizer/add_1AddV2*dense_6/dense_6/kernel/Regularizer/add:z:0,dense_6/dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp6^dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp9^dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp6^dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp9^dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2n
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2n
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_2
�
�
*__inference_dense_6_layer_call_fn_19051071

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������2e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�B
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050963

inputs:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
dense_5/MatMulMatMulinputs%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_5_layer_call_fn_19051004

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�m
�
/__inference_sequential_1_layer_call_fn_19050518
input_2:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp�8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp�8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0{
dense_5/MatMulMatMulinput_2%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:����������m
(dense_5/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
&dense_5/dense_5/kernel/Regularizer/AbsAbs=dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_5/dense_5/kernel/Regularizer/SumSum*dense_5/dense_5/kernel/Regularizer/Abs:y:03dense_5/dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_5/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_5/dense_5/kernel/Regularizer/mulMul1dense_5/dense_5/kernel/Regularizer/mul/x:output:0/dense_5/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_5/dense_5/kernel/Regularizer/addAddV21dense_5/dense_5/kernel/Regularizer/Const:output:0*dense_5/dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)dense_5/dense_5/kernel/Regularizer/SquareSquare@dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_5/dense_5/kernel/Regularizer/Sum_1Sum-dense_5/dense_5/kernel/Regularizer/Square:y:03dense_5/dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_5/dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_5/dense_5/kernel/Regularizer/mul_1Mul3dense_5/dense_5/kernel/Regularizer/mul_1/x:output:01dense_5/dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_5/dense_5/kernel/Regularizer/add_1AddV2*dense_5/dense_5/kernel/Regularizer/add:z:0,dense_5/dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2m
(dense_6/dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
&dense_6/dense_6/kernel/Regularizer/AbsAbs=dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_6/dense_6/kernel/Regularizer/SumSum*dense_6/dense_6/kernel/Regularizer/Abs:y:03dense_6/dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_6/dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_6/dense_6/kernel/Regularizer/mulMul1dense_6/dense_6/kernel/Regularizer/mul/x:output:0/dense_6/dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_6/dense_6/kernel/Regularizer/addAddV21dense_6/dense_6/kernel/Regularizer/Const:output:0*dense_6/dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
)dense_6/dense_6/kernel/Regularizer/SquareSquare@dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_6/dense_6/kernel/Regularizer/Sum_1Sum-dense_6/dense_6/kernel/Regularizer/Square:y:03dense_6/dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_6/dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_6/dense_6/kernel/Regularizer/mul_1Mul3dense_6/dense_6/kernel/Regularizer/mul_1/x:output:01dense_6/dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_6/dense_6/kernel/Regularizer/add_1AddV2*dense_6/dense_6/kernel/Regularizer/add:z:0,dense_6/dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp6^dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp9^dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp6^dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp9^dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2n
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2n
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_2
�
�
__inference_loss_fn_1_19051159I
6dense_6_kernel_regularizer_abs_readvariableop_resource:	�2
identity��-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOpe
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp6dense_6_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp6dense_6_kernel_regularizer_abs_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_6/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp
�m
�
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050688
input_2:
&dense_5_matmul_readvariableop_resource:
��6
'dense_5_biasadd_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�25
'dense_6_biasadd_readvariableop_resource:28
&dense_7_matmul_readvariableop_resource:25
'dense_7_biasadd_readvariableop_resource:
identity��dense_5/BiasAdd/ReadVariableOp�dense_5/MatMul/ReadVariableOp�5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp�8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp�-dense_5/kernel/Regularizer/Abs/ReadVariableOp�0dense_5/kernel/Regularizer/Square/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp�8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp�-dense_6/kernel/Regularizer/Abs/ReadVariableOp�0dense_6/kernel/Regularizer/Square/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0{
dense_5/MatMulMatMulinput_2%dense_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*(
_output_shapes
:����������m
(dense_5/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
&dense_5/dense_5/kernel/Regularizer/AbsAbs=dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_5/dense_5/kernel/Regularizer/SumSum*dense_5/dense_5/kernel/Regularizer/Abs:y:03dense_5/dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_5/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_5/dense_5/kernel/Regularizer/mulMul1dense_5/dense_5/kernel/Regularizer/mul/x:output:0/dense_5/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_5/dense_5/kernel/Regularizer/addAddV21dense_5/dense_5/kernel/Regularizer/Const:output:0*dense_5/dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)dense_5/dense_5/kernel/Regularizer/SquareSquare@dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��{
*dense_5/dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_5/dense_5/kernel/Regularizer/Sum_1Sum-dense_5/dense_5/kernel/Regularizer/Square:y:03dense_5/dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_5/dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_5/dense_5/kernel/Regularizer/mul_1Mul3dense_5/dense_5/kernel/Regularizer/mul_1/x:output:01dense_5/dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_5/dense_5/kernel/Regularizer/add_1AddV2*dense_5/dense_5/kernel/Regularizer/add:z:0,dense_5/dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/MatMulMatMuldense_5/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2`
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������2m
(dense_6/dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
&dense_6/dense_6/kernel/Regularizer/AbsAbs=dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
&dense_6/dense_6/kernel/Regularizer/SumSum*dense_6/dense_6/kernel/Regularizer/Abs:y:03dense_6/dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: m
(dense_6/dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
&dense_6/dense_6/kernel/Regularizer/mulMul1dense_6/dense_6/kernel/Regularizer/mul/x:output:0/dense_6/dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
&dense_6/dense_6/kernel/Regularizer/addAddV21dense_6/dense_6/kernel/Regularizer/Const:output:0*dense_6/dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
)dense_6/dense_6/kernel/Regularizer/SquareSquare@dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2{
*dense_6/dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
(dense_6/dense_6/kernel/Regularizer/Sum_1Sum-dense_6/dense_6/kernel/Regularizer/Square:y:03dense_6/dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: o
*dense_6/dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
(dense_6/dense_6/kernel/Regularizer/mul_1Mul3dense_6/dense_6/kernel/Regularizer/mul_1/x:output:01dense_6/dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
(dense_6/dense_6/kernel/Regularizer/add_1AddV2*dense_6/dense_6/kernel/Regularizer/add:z:0,dense_6/dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: �
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:2*
dtype0�
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������e
 dense_5/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_5/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_5/kernel/Regularizer/AbsAbs5dense_5/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_5/kernel/Regularizer/SumSum"dense_5/kernel/Regularizer/Abs:y:0+dense_5/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_5/kernel/Regularizer/mulMul)dense_5/kernel/Regularizer/mul/x:output:0'dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_5/kernel/Regularizer/addAddV2)dense_5/kernel/Regularizer/Const:output:0"dense_5/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!dense_5/kernel/Regularizer/SquareSquare8dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��s
"dense_5/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_5/kernel/Regularizer/Sum_1Sum%dense_5/kernel/Regularizer/Square:y:0+dense_5/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_5/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_5/kernel/Regularizer/mul_1Mul+dense_5/kernel/Regularizer/mul_1/x:output:0)dense_5/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_5/kernel/Regularizer/add_1AddV2"dense_5/kernel/Regularizer/add:z:0$dense_5/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
-dense_6/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_6/kernel/Regularizer/AbsAbs5dense_6/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
dense_6/kernel/Regularizer/SumSum"dense_6/kernel/Regularizer/Abs:y:0+dense_6/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: e
 dense_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
dense_6/kernel/Regularizer/mulMul)dense_6/kernel/Regularizer/mul/x:output:0'dense_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
dense_6/kernel/Regularizer/addAddV2)dense_6/kernel/Regularizer/Const:output:0"dense_6/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
0dense_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
!dense_6/kernel/Regularizer/SquareSquare8dense_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2s
"dense_6/kernel/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       �
 dense_6/kernel/Regularizer/Sum_1Sum%dense_6/kernel/Regularizer/Square:y:0+dense_6/kernel/Regularizer/Const_2:output:0*
T0*
_output_shapes
: g
"dense_6/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_6/kernel/Regularizer/mul_1Mul+dense_6/kernel/Regularizer/mul_1/x:output:0)dense_6/kernel/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: �
 dense_6/kernel/Regularizer/add_1AddV2"dense_6/kernel/Regularizer/add:z:0$dense_6/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
IdentityIdentitydense_7/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp6^dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp9^dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp.^dense_5/kernel/Regularizer/Abs/ReadVariableOp1^dense_5/kernel/Regularizer/Square/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp6^dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp9^dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp.^dense_6/kernel/Regularizer/Abs/ReadVariableOp1^dense_6/kernel/Regularizer/Square/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2n
5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp5dense_5/dense_5/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp8dense_5/dense_5/kernel/Regularizer/Square/ReadVariableOp2^
-dense_5/kernel/Regularizer/Abs/ReadVariableOp-dense_5/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_5/kernel/Regularizer/Square/ReadVariableOp0dense_5/kernel/Regularizer/Square/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2n
5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp5dense_6/dense_6/kernel/Regularizer/Abs/ReadVariableOp2t
8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp8dense_6/dense_6/kernel/Regularizer/Square/ReadVariableOp2^
-dense_6/kernel/Regularizer/Abs/ReadVariableOp-dense_6/kernel/Regularizer/Abs/ReadVariableOp2d
0dense_6/kernel/Regularizer/Square/ReadVariableOp0dense_6/kernel/Regularizer/Square/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:Q M
(
_output_shapes
:����������
!
_user_specified_name	input_2"�-
saver_filename:0
Identity:0Identity_288"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
<
input_21
serving_default_input_2:0����������;
dense_70
StatefulPartitionedCall:0���������tensorflow/serving/predict:�S
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
L__call__
*M&call_and_return_all_conditional_losses
N_default_save_signature"
_tf_keras_sequential
�


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
�
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK"
	optimizer
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
�
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
L__call__
N_default_save_signature
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
,
Wserving_default"
signature_map
": 
��2dense_5/kernel
:�2dense_5/bias
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
'
U0"
trackable_list_wrapper
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
!:	�22dense_6/kernel
:22dense_6/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
V0"
trackable_list_wrapper
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
 :22dense_7/kernel
:2dense_7/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
50
61"
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
'
U0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
V0"
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
	7total
	8count
9	variables
:	keras_api"
_tf_keras_metric
^
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
':%
��2Adam/dense_5/kernel/m
 :�2Adam/dense_5/bias/m
&:$	�22Adam/dense_6/kernel/m
:22Adam/dense_6/bias/m
%:#22Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
':%
��2Adam/dense_5/kernel/v
 :�2Adam/dense_5/bias/v
&:$	�22Adam/dense_6/kernel/v
:22Adam/dense_6/bias/v
%:#22Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
�2�
/__inference_sequential_1_layer_call_fn_19049960
/__inference_sequential_1_layer_call_fn_19050798
/__inference_sequential_1_layer_call_fn_19050853
/__inference_sequential_1_layer_call_fn_19050518�
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
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050908
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050963
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050603
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050688�
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
#__inference__wrapped_model_19049874input_2"�
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
�2�
*__inference_dense_5_layer_call_fn_19051004�
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
E__inference_dense_5_layer_call_and_return_conditional_losses_19051030�
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
*__inference_dense_6_layer_call_fn_19051071�
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
E__inference_dense_6_layer_call_and_return_conditional_losses_19051097�
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
*__inference_dense_7_layer_call_fn_19051108�
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
E__inference_dense_7_layer_call_and_return_conditional_losses_19051119�
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
__inference_loss_fn_0_19051139�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_19051159�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
&__inference_signature_wrapper_19050743input_2"�
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
 �
#__inference__wrapped_model_19049874n
1�.
'�$
"�
input_2����������
� "1�.
,
dense_7!�
dense_7����������
E__inference_dense_5_layer_call_and_return_conditional_losses_19051030^
0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� 
*__inference_dense_5_layer_call_fn_19051004Q
0�-
&�#
!�
inputs����������
� "������������
E__inference_dense_6_layer_call_and_return_conditional_losses_19051097]0�-
&�#
!�
inputs����������
� "%�"
�
0���������2
� ~
*__inference_dense_6_layer_call_fn_19051071P0�-
&�#
!�
inputs����������
� "����������2�
E__inference_dense_7_layer_call_and_return_conditional_losses_19051119\/�,
%�"
 �
inputs���������2
� "%�"
�
0���������
� }
*__inference_dense_7_layer_call_fn_19051108O/�,
%�"
 �
inputs���������2
� "����������=
__inference_loss_fn_0_19051139
�

� 
� "� =
__inference_loss_fn_1_19051159�

� 
� "� �
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050603j
9�6
/�,
"�
input_2����������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050688j
9�6
/�,
"�
input_2����������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050908i
8�5
.�+
!�
inputs����������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_1_layer_call_and_return_conditional_losses_19050963i
8�5
.�+
!�
inputs����������
p

 
� "%�"
�
0���������
� �
/__inference_sequential_1_layer_call_fn_19049960]
9�6
/�,
"�
input_2����������
p 

 
� "�����������
/__inference_sequential_1_layer_call_fn_19050518]
9�6
/�,
"�
input_2����������
p

 
� "�����������
/__inference_sequential_1_layer_call_fn_19050798\
8�5
.�+
!�
inputs����������
p 

 
� "�����������
/__inference_sequential_1_layer_call_fn_19050853\
8�5
.�+
!�
inputs����������
p

 
� "�����������
&__inference_signature_wrapper_19050743y
<�9
� 
2�/
-
input_2"�
input_2����������"1�.
,
dense_7!�
dense_7���������