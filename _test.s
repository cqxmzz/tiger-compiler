	.text
	.align 2
	.globl main
	.globl __start
	__start:
	addi $sp, $sp, -4216
main:
	li $t0, 0
	sw $t0, 1052($sp)
	li $t0, 1
	sw $t0, 1032($sp)
	li $t0, 4
	sw $t0, 1028($sp)
	lw $t0, 1032($sp)
	sw $t0, 1036($sp)
	lw $t0, 1032($sp)
	sw $t0, 1040($sp)
	lw $t1, 1036($sp)
	lw $t2, 1028($sp)
	mul $t0, $t1, $t2
	sw $t0, 1036($sp)
	lw $t1, 1036($sp)
	lw $t2, 1028($sp)
	add $t0, $t1, $t2
	sw $t0, 1036($sp)
	sw $ra, 4148($sp)
	lw $t0, 1036($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal _malloc
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 1044($sp)
	lw $ra, 4148($sp)
	lw $t0, 1040($sp)
	lw $t1, 1044($sp)
	sw $t0, 0($t1)
	lw $t0, 1044($sp)
	sw $t0, 0($sp)
	lw $t0, 0($sp)
	sw $t0, 1048($sp)
	lw $t0, 1052($sp)
	sw $t0, 1056($sp)
	lw $t1, 1028($sp)
	lw $t2, 1056($sp)
	mul $t0, $t1, $t2
	sw $t0, 1056($sp)
	lw $t1, 1048($sp)
	lw $t2, 1056($sp)
	add $t0, $t1, $t2
	sw $t0, 1048($sp)
	lw $t0, 1052($sp)
	lw $t1, 1048($sp)
	sw $t0, 4($t1)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1060($sp)
	lw $ra, 4148($sp)
	lw $t0, 1060($sp)
	sw $t0, 4($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1064($sp)
	lw $ra, 4148($sp)
	lw $t0, 1064($sp)
	sw $t0, 8($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1068($sp)
	lw $ra, 4148($sp)
	lw $t0, 1068($sp)
	sw $t0, 12($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1072($sp)
	lw $ra, 4148($sp)
	lw $t0, 1072($sp)
	sw $t0, 16($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1076($sp)
	lw $ra, 4148($sp)
	lw $t0, 1076($sp)
	sw $t0, 20($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1080($sp)
	lw $ra, 4148($sp)
	lw $t0, 1080($sp)
	sw $t0, 24($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1084($sp)
	lw $ra, 4148($sp)
	lw $t0, 1084($sp)
	sw $t0, 28($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1088($sp)
	lw $ra, 4148($sp)
	lw $t0, 1088($sp)
	sw $t0, 32($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1092($sp)
	lw $ra, 4148($sp)
	lw $t0, 1092($sp)
	sw $t0, 36($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1096($sp)
	lw $ra, 4148($sp)
	lw $t0, 1096($sp)
	sw $t0, 40($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1100($sp)
	lw $ra, 4148($sp)
	lw $t0, 1100($sp)
	sw $t0, 44($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1104($sp)
	lw $ra, 4148($sp)
	lw $t0, 1104($sp)
	sw $t0, 48($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1108($sp)
	lw $ra, 4148($sp)
	lw $t0, 1108($sp)
	sw $t0, 52($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1112($sp)
	lw $ra, 4148($sp)
	lw $t0, 1112($sp)
	sw $t0, 56($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1116($sp)
	lw $ra, 4148($sp)
	lw $t0, 1116($sp)
	sw $t0, 60($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1120($sp)
	lw $ra, 4148($sp)
	lw $t0, 1120($sp)
	sw $t0, 64($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1124($sp)
	lw $ra, 4148($sp)
	lw $t0, 1124($sp)
	sw $t0, 68($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1128($sp)
	lw $ra, 4148($sp)
	lw $t0, 1128($sp)
	sw $t0, 72($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1132($sp)
	lw $ra, 4148($sp)
	lw $t0, 1132($sp)
	sw $t0, 76($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1136($sp)
	lw $ra, 4148($sp)
	lw $t0, 1136($sp)
	sw $t0, 80($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1140($sp)
	lw $ra, 4148($sp)
	lw $t0, 1140($sp)
	sw $t0, 84($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1144($sp)
	lw $ra, 4148($sp)
	lw $t0, 1144($sp)
	sw $t0, 88($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1148($sp)
	lw $ra, 4148($sp)
	lw $t0, 1148($sp)
	sw $t0, 92($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1152($sp)
	lw $ra, 4148($sp)
	lw $t0, 1152($sp)
	sw $t0, 96($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1156($sp)
	lw $ra, 4148($sp)
	lw $t0, 1156($sp)
	sw $t0, 100($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1160($sp)
	lw $ra, 4148($sp)
	lw $t0, 1160($sp)
	sw $t0, 104($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1164($sp)
	lw $ra, 4148($sp)
	lw $t0, 1164($sp)
	sw $t0, 108($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1168($sp)
	lw $ra, 4148($sp)
	lw $t0, 1168($sp)
	sw $t0, 112($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1172($sp)
	lw $ra, 4148($sp)
	lw $t0, 1172($sp)
	sw $t0, 116($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1176($sp)
	lw $ra, 4148($sp)
	lw $t0, 1176($sp)
	sw $t0, 120($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1180($sp)
	lw $ra, 4148($sp)
	lw $t0, 1180($sp)
	sw $t0, 124($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1184($sp)
	lw $ra, 4148($sp)
	lw $t0, 1184($sp)
	sw $t0, 128($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1188($sp)
	lw $ra, 4148($sp)
	lw $t0, 1188($sp)
	sw $t0, 132($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1192($sp)
	lw $ra, 4148($sp)
	lw $t0, 1192($sp)
	sw $t0, 136($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1196($sp)
	lw $ra, 4148($sp)
	lw $t0, 1196($sp)
	sw $t0, 140($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1200($sp)
	lw $ra, 4148($sp)
	lw $t0, 1200($sp)
	sw $t0, 144($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1204($sp)
	lw $ra, 4148($sp)
	lw $t0, 1204($sp)
	sw $t0, 148($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1208($sp)
	lw $ra, 4148($sp)
	lw $t0, 1208($sp)
	sw $t0, 152($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1212($sp)
	lw $ra, 4148($sp)
	lw $t0, 1212($sp)
	sw $t0, 156($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1216($sp)
	lw $ra, 4148($sp)
	lw $t0, 1216($sp)
	sw $t0, 160($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1220($sp)
	lw $ra, 4148($sp)
	lw $t0, 1220($sp)
	sw $t0, 164($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1224($sp)
	lw $ra, 4148($sp)
	lw $t0, 1224($sp)
	sw $t0, 168($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1228($sp)
	lw $ra, 4148($sp)
	lw $t0, 1228($sp)
	sw $t0, 172($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1232($sp)
	lw $ra, 4148($sp)
	lw $t0, 1232($sp)
	sw $t0, 176($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1236($sp)
	lw $ra, 4148($sp)
	lw $t0, 1236($sp)
	sw $t0, 180($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1240($sp)
	lw $ra, 4148($sp)
	lw $t0, 1240($sp)
	sw $t0, 184($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1244($sp)
	lw $ra, 4148($sp)
	lw $t0, 1244($sp)
	sw $t0, 188($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1248($sp)
	lw $ra, 4148($sp)
	lw $t0, 1248($sp)
	sw $t0, 192($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1252($sp)
	lw $ra, 4148($sp)
	lw $t0, 1252($sp)
	sw $t0, 196($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1256($sp)
	lw $ra, 4148($sp)
	lw $t0, 1256($sp)
	sw $t0, 200($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1260($sp)
	lw $ra, 4148($sp)
	lw $t0, 1260($sp)
	sw $t0, 204($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1264($sp)
	lw $ra, 4148($sp)
	lw $t0, 1264($sp)
	sw $t0, 208($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1268($sp)
	lw $ra, 4148($sp)
	lw $t0, 1268($sp)
	sw $t0, 212($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1272($sp)
	lw $ra, 4148($sp)
	lw $t0, 1272($sp)
	sw $t0, 216($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1276($sp)
	lw $ra, 4148($sp)
	lw $t0, 1276($sp)
	sw $t0, 220($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1280($sp)
	lw $ra, 4148($sp)
	lw $t0, 1280($sp)
	sw $t0, 224($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1284($sp)
	lw $ra, 4148($sp)
	lw $t0, 1284($sp)
	sw $t0, 228($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1288($sp)
	lw $ra, 4148($sp)
	lw $t0, 1288($sp)
	sw $t0, 232($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1292($sp)
	lw $ra, 4148($sp)
	lw $t0, 1292($sp)
	sw $t0, 236($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1296($sp)
	lw $ra, 4148($sp)
	lw $t0, 1296($sp)
	sw $t0, 240($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1300($sp)
	lw $ra, 4148($sp)
	lw $t0, 1300($sp)
	sw $t0, 244($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1304($sp)
	lw $ra, 4148($sp)
	lw $t0, 1304($sp)
	sw $t0, 248($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1308($sp)
	lw $ra, 4148($sp)
	lw $t0, 1308($sp)
	sw $t0, 252($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1312($sp)
	lw $ra, 4148($sp)
	lw $t0, 1312($sp)
	sw $t0, 256($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1316($sp)
	lw $ra, 4148($sp)
	lw $t0, 1316($sp)
	sw $t0, 260($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1320($sp)
	lw $ra, 4148($sp)
	lw $t0, 1320($sp)
	sw $t0, 264($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1324($sp)
	lw $ra, 4148($sp)
	lw $t0, 1324($sp)
	sw $t0, 268($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1328($sp)
	lw $ra, 4148($sp)
	lw $t0, 1328($sp)
	sw $t0, 272($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1332($sp)
	lw $ra, 4148($sp)
	lw $t0, 1332($sp)
	sw $t0, 276($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1336($sp)
	lw $ra, 4148($sp)
	lw $t0, 1336($sp)
	sw $t0, 280($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1340($sp)
	lw $ra, 4148($sp)
	lw $t0, 1340($sp)
	sw $t0, 284($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1344($sp)
	lw $ra, 4148($sp)
	lw $t0, 1344($sp)
	sw $t0, 288($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1348($sp)
	lw $ra, 4148($sp)
	lw $t0, 1348($sp)
	sw $t0, 292($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1352($sp)
	lw $ra, 4148($sp)
	lw $t0, 1352($sp)
	sw $t0, 296($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1356($sp)
	lw $ra, 4148($sp)
	lw $t0, 1356($sp)
	sw $t0, 300($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1360($sp)
	lw $ra, 4148($sp)
	lw $t0, 1360($sp)
	sw $t0, 304($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1364($sp)
	lw $ra, 4148($sp)
	lw $t0, 1364($sp)
	sw $t0, 308($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1368($sp)
	lw $ra, 4148($sp)
	lw $t0, 1368($sp)
	sw $t0, 312($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1372($sp)
	lw $ra, 4148($sp)
	lw $t0, 1372($sp)
	sw $t0, 316($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1376($sp)
	lw $ra, 4148($sp)
	lw $t0, 1376($sp)
	sw $t0, 320($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1380($sp)
	lw $ra, 4148($sp)
	lw $t0, 1380($sp)
	sw $t0, 324($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1384($sp)
	lw $ra, 4148($sp)
	lw $t0, 1384($sp)
	sw $t0, 328($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1388($sp)
	lw $ra, 4148($sp)
	lw $t0, 1388($sp)
	sw $t0, 332($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1392($sp)
	lw $ra, 4148($sp)
	lw $t0, 1392($sp)
	sw $t0, 336($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1396($sp)
	lw $ra, 4148($sp)
	lw $t0, 1396($sp)
	sw $t0, 340($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1400($sp)
	lw $ra, 4148($sp)
	lw $t0, 1400($sp)
	sw $t0, 344($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1404($sp)
	lw $ra, 4148($sp)
	lw $t0, 1404($sp)
	sw $t0, 348($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1408($sp)
	lw $ra, 4148($sp)
	lw $t0, 1408($sp)
	sw $t0, 352($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1412($sp)
	lw $ra, 4148($sp)
	lw $t0, 1412($sp)
	sw $t0, 356($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1416($sp)
	lw $ra, 4148($sp)
	lw $t0, 1416($sp)
	sw $t0, 360($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1420($sp)
	lw $ra, 4148($sp)
	lw $t0, 1420($sp)
	sw $t0, 364($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1424($sp)
	lw $ra, 4148($sp)
	lw $t0, 1424($sp)
	sw $t0, 368($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1428($sp)
	lw $ra, 4148($sp)
	lw $t0, 1428($sp)
	sw $t0, 372($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1432($sp)
	lw $ra, 4148($sp)
	lw $t0, 1432($sp)
	sw $t0, 376($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1436($sp)
	lw $ra, 4148($sp)
	lw $t0, 1436($sp)
	sw $t0, 380($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1440($sp)
	lw $ra, 4148($sp)
	lw $t0, 1440($sp)
	sw $t0, 384($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1444($sp)
	lw $ra, 4148($sp)
	lw $t0, 1444($sp)
	sw $t0, 388($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1448($sp)
	lw $ra, 4148($sp)
	lw $t0, 1448($sp)
	sw $t0, 392($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1452($sp)
	lw $ra, 4148($sp)
	lw $t0, 1452($sp)
	sw $t0, 396($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1456($sp)
	lw $ra, 4148($sp)
	lw $t0, 1456($sp)
	sw $t0, 400($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1460($sp)
	lw $ra, 4148($sp)
	lw $t0, 1460($sp)
	sw $t0, 404($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1464($sp)
	lw $ra, 4148($sp)
	lw $t0, 1464($sp)
	sw $t0, 408($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1468($sp)
	lw $ra, 4148($sp)
	lw $t0, 1468($sp)
	sw $t0, 412($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1472($sp)
	lw $ra, 4148($sp)
	lw $t0, 1472($sp)
	sw $t0, 416($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1476($sp)
	lw $ra, 4148($sp)
	lw $t0, 1476($sp)
	sw $t0, 420($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1480($sp)
	lw $ra, 4148($sp)
	lw $t0, 1480($sp)
	sw $t0, 424($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1484($sp)
	lw $ra, 4148($sp)
	lw $t0, 1484($sp)
	sw $t0, 428($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1488($sp)
	lw $ra, 4148($sp)
	lw $t0, 1488($sp)
	sw $t0, 432($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1492($sp)
	lw $ra, 4148($sp)
	lw $t0, 1492($sp)
	sw $t0, 436($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1496($sp)
	lw $ra, 4148($sp)
	lw $t0, 1496($sp)
	sw $t0, 440($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1500($sp)
	lw $ra, 4148($sp)
	lw $t0, 1500($sp)
	sw $t0, 444($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1504($sp)
	lw $ra, 4148($sp)
	lw $t0, 1504($sp)
	sw $t0, 448($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1508($sp)
	lw $ra, 4148($sp)
	lw $t0, 1508($sp)
	sw $t0, 452($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1512($sp)
	lw $ra, 4148($sp)
	lw $t0, 1512($sp)
	sw $t0, 456($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1516($sp)
	lw $ra, 4148($sp)
	lw $t0, 1516($sp)
	sw $t0, 460($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1520($sp)
	lw $ra, 4148($sp)
	lw $t0, 1520($sp)
	sw $t0, 464($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1524($sp)
	lw $ra, 4148($sp)
	lw $t0, 1524($sp)
	sw $t0, 468($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1528($sp)
	lw $ra, 4148($sp)
	lw $t0, 1528($sp)
	sw $t0, 472($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1532($sp)
	lw $ra, 4148($sp)
	lw $t0, 1532($sp)
	sw $t0, 476($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1536($sp)
	lw $ra, 4148($sp)
	lw $t0, 1536($sp)
	sw $t0, 480($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1540($sp)
	lw $ra, 4148($sp)
	lw $t0, 1540($sp)
	sw $t0, 484($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1544($sp)
	lw $ra, 4148($sp)
	lw $t0, 1544($sp)
	sw $t0, 488($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1548($sp)
	lw $ra, 4148($sp)
	lw $t0, 1548($sp)
	sw $t0, 492($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1552($sp)
	lw $ra, 4148($sp)
	lw $t0, 1552($sp)
	sw $t0, 496($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1556($sp)
	lw $ra, 4148($sp)
	lw $t0, 1556($sp)
	sw $t0, 500($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1560($sp)
	lw $ra, 4148($sp)
	lw $t0, 1560($sp)
	sw $t0, 504($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1564($sp)
	lw $ra, 4148($sp)
	lw $t0, 1564($sp)
	sw $t0, 508($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1568($sp)
	lw $ra, 4148($sp)
	lw $t0, 1568($sp)
	sw $t0, 512($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1572($sp)
	lw $ra, 4148($sp)
	lw $t0, 1572($sp)
	sw $t0, 516($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1576($sp)
	lw $ra, 4148($sp)
	lw $t0, 1576($sp)
	sw $t0, 520($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1580($sp)
	lw $ra, 4148($sp)
	lw $t0, 1580($sp)
	sw $t0, 524($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1584($sp)
	lw $ra, 4148($sp)
	lw $t0, 1584($sp)
	sw $t0, 528($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1588($sp)
	lw $ra, 4148($sp)
	lw $t0, 1588($sp)
	sw $t0, 532($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1592($sp)
	lw $ra, 4148($sp)
	lw $t0, 1592($sp)
	sw $t0, 536($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1596($sp)
	lw $ra, 4148($sp)
	lw $t0, 1596($sp)
	sw $t0, 540($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1600($sp)
	lw $ra, 4148($sp)
	lw $t0, 1600($sp)
	sw $t0, 544($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1604($sp)
	lw $ra, 4148($sp)
	lw $t0, 1604($sp)
	sw $t0, 548($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1608($sp)
	lw $ra, 4148($sp)
	lw $t0, 1608($sp)
	sw $t0, 552($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1612($sp)
	lw $ra, 4148($sp)
	lw $t0, 1612($sp)
	sw $t0, 556($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1616($sp)
	lw $ra, 4148($sp)
	lw $t0, 1616($sp)
	sw $t0, 560($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1620($sp)
	lw $ra, 4148($sp)
	lw $t0, 1620($sp)
	sw $t0, 564($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1624($sp)
	lw $ra, 4148($sp)
	lw $t0, 1624($sp)
	sw $t0, 568($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1628($sp)
	lw $ra, 4148($sp)
	lw $t0, 1628($sp)
	sw $t0, 572($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1632($sp)
	lw $ra, 4148($sp)
	lw $t0, 1632($sp)
	sw $t0, 576($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1636($sp)
	lw $ra, 4148($sp)
	lw $t0, 1636($sp)
	sw $t0, 580($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1640($sp)
	lw $ra, 4148($sp)
	lw $t0, 1640($sp)
	sw $t0, 584($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1644($sp)
	lw $ra, 4148($sp)
	lw $t0, 1644($sp)
	sw $t0, 588($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1648($sp)
	lw $ra, 4148($sp)
	lw $t0, 1648($sp)
	sw $t0, 592($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1652($sp)
	lw $ra, 4148($sp)
	lw $t0, 1652($sp)
	sw $t0, 596($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1656($sp)
	lw $ra, 4148($sp)
	lw $t0, 1656($sp)
	sw $t0, 600($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1660($sp)
	lw $ra, 4148($sp)
	lw $t0, 1660($sp)
	sw $t0, 604($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1664($sp)
	lw $ra, 4148($sp)
	lw $t0, 1664($sp)
	sw $t0, 608($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1668($sp)
	lw $ra, 4148($sp)
	lw $t0, 1668($sp)
	sw $t0, 612($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1672($sp)
	lw $ra, 4148($sp)
	lw $t0, 1672($sp)
	sw $t0, 616($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1676($sp)
	lw $ra, 4148($sp)
	lw $t0, 1676($sp)
	sw $t0, 620($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1680($sp)
	lw $ra, 4148($sp)
	lw $t0, 1680($sp)
	sw $t0, 624($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1684($sp)
	lw $ra, 4148($sp)
	lw $t0, 1684($sp)
	sw $t0, 628($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1688($sp)
	lw $ra, 4148($sp)
	lw $t0, 1688($sp)
	sw $t0, 632($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1692($sp)
	lw $ra, 4148($sp)
	lw $t0, 1692($sp)
	sw $t0, 636($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1696($sp)
	lw $ra, 4148($sp)
	lw $t0, 1696($sp)
	sw $t0, 640($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1700($sp)
	lw $ra, 4148($sp)
	lw $t0, 1700($sp)
	sw $t0, 644($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1704($sp)
	lw $ra, 4148($sp)
	lw $t0, 1704($sp)
	sw $t0, 648($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1708($sp)
	lw $ra, 4148($sp)
	lw $t0, 1708($sp)
	sw $t0, 652($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1712($sp)
	lw $ra, 4148($sp)
	lw $t0, 1712($sp)
	sw $t0, 656($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1716($sp)
	lw $ra, 4148($sp)
	lw $t0, 1716($sp)
	sw $t0, 660($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1720($sp)
	lw $ra, 4148($sp)
	lw $t0, 1720($sp)
	sw $t0, 664($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1724($sp)
	lw $ra, 4148($sp)
	lw $t0, 1724($sp)
	sw $t0, 668($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1728($sp)
	lw $ra, 4148($sp)
	lw $t0, 1728($sp)
	sw $t0, 672($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1732($sp)
	lw $ra, 4148($sp)
	lw $t0, 1732($sp)
	sw $t0, 676($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1736($sp)
	lw $ra, 4148($sp)
	lw $t0, 1736($sp)
	sw $t0, 680($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1740($sp)
	lw $ra, 4148($sp)
	lw $t0, 1740($sp)
	sw $t0, 684($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1744($sp)
	lw $ra, 4148($sp)
	lw $t0, 1744($sp)
	sw $t0, 688($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1748($sp)
	lw $ra, 4148($sp)
	lw $t0, 1748($sp)
	sw $t0, 692($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1752($sp)
	lw $ra, 4148($sp)
	lw $t0, 1752($sp)
	sw $t0, 696($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1756($sp)
	lw $ra, 4148($sp)
	lw $t0, 1756($sp)
	sw $t0, 700($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1760($sp)
	lw $ra, 4148($sp)
	lw $t0, 1760($sp)
	sw $t0, 704($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1764($sp)
	lw $ra, 4148($sp)
	lw $t0, 1764($sp)
	sw $t0, 708($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1768($sp)
	lw $ra, 4148($sp)
	lw $t0, 1768($sp)
	sw $t0, 712($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1772($sp)
	lw $ra, 4148($sp)
	lw $t0, 1772($sp)
	sw $t0, 716($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1776($sp)
	lw $ra, 4148($sp)
	lw $t0, 1776($sp)
	sw $t0, 720($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1780($sp)
	lw $ra, 4148($sp)
	lw $t0, 1780($sp)
	sw $t0, 724($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1784($sp)
	lw $ra, 4148($sp)
	lw $t0, 1784($sp)
	sw $t0, 728($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1788($sp)
	lw $ra, 4148($sp)
	lw $t0, 1788($sp)
	sw $t0, 732($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1792($sp)
	lw $ra, 4148($sp)
	lw $t0, 1792($sp)
	sw $t0, 736($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1796($sp)
	lw $ra, 4148($sp)
	lw $t0, 1796($sp)
	sw $t0, 740($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1800($sp)
	lw $ra, 4148($sp)
	lw $t0, 1800($sp)
	sw $t0, 744($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1804($sp)
	lw $ra, 4148($sp)
	lw $t0, 1804($sp)
	sw $t0, 748($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1808($sp)
	lw $ra, 4148($sp)
	lw $t0, 1808($sp)
	sw $t0, 752($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1812($sp)
	lw $ra, 4148($sp)
	lw $t0, 1812($sp)
	sw $t0, 756($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1816($sp)
	lw $ra, 4148($sp)
	lw $t0, 1816($sp)
	sw $t0, 760($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1820($sp)
	lw $ra, 4148($sp)
	lw $t0, 1820($sp)
	sw $t0, 764($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1824($sp)
	lw $ra, 4148($sp)
	lw $t0, 1824($sp)
	sw $t0, 768($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1828($sp)
	lw $ra, 4148($sp)
	lw $t0, 1828($sp)
	sw $t0, 772($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1832($sp)
	lw $ra, 4148($sp)
	lw $t0, 1832($sp)
	sw $t0, 776($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1836($sp)
	lw $ra, 4148($sp)
	lw $t0, 1836($sp)
	sw $t0, 780($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1840($sp)
	lw $ra, 4148($sp)
	lw $t0, 1840($sp)
	sw $t0, 784($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1844($sp)
	lw $ra, 4148($sp)
	lw $t0, 1844($sp)
	sw $t0, 788($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1848($sp)
	lw $ra, 4148($sp)
	lw $t0, 1848($sp)
	sw $t0, 792($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1852($sp)
	lw $ra, 4148($sp)
	lw $t0, 1852($sp)
	sw $t0, 796($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1856($sp)
	lw $ra, 4148($sp)
	lw $t0, 1856($sp)
	sw $t0, 800($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1860($sp)
	lw $ra, 4148($sp)
	lw $t0, 1860($sp)
	sw $t0, 804($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1864($sp)
	lw $ra, 4148($sp)
	lw $t0, 1864($sp)
	sw $t0, 808($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1868($sp)
	lw $ra, 4148($sp)
	lw $t0, 1868($sp)
	sw $t0, 812($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1872($sp)
	lw $ra, 4148($sp)
	lw $t0, 1872($sp)
	sw $t0, 816($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1876($sp)
	lw $ra, 4148($sp)
	lw $t0, 1876($sp)
	sw $t0, 820($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1880($sp)
	lw $ra, 4148($sp)
	lw $t0, 1880($sp)
	sw $t0, 824($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1884($sp)
	lw $ra, 4148($sp)
	lw $t0, 1884($sp)
	sw $t0, 828($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1888($sp)
	lw $ra, 4148($sp)
	lw $t0, 1888($sp)
	sw $t0, 832($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1892($sp)
	lw $ra, 4148($sp)
	lw $t0, 1892($sp)
	sw $t0, 836($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1896($sp)
	lw $ra, 4148($sp)
	lw $t0, 1896($sp)
	sw $t0, 840($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1900($sp)
	lw $ra, 4148($sp)
	lw $t0, 1900($sp)
	sw $t0, 844($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1904($sp)
	lw $ra, 4148($sp)
	lw $t0, 1904($sp)
	sw $t0, 848($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1908($sp)
	lw $ra, 4148($sp)
	lw $t0, 1908($sp)
	sw $t0, 852($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1912($sp)
	lw $ra, 4148($sp)
	lw $t0, 1912($sp)
	sw $t0, 856($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1916($sp)
	lw $ra, 4148($sp)
	lw $t0, 1916($sp)
	sw $t0, 860($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1920($sp)
	lw $ra, 4148($sp)
	lw $t0, 1920($sp)
	sw $t0, 864($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1924($sp)
	lw $ra, 4148($sp)
	lw $t0, 1924($sp)
	sw $t0, 868($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1928($sp)
	lw $ra, 4148($sp)
	lw $t0, 1928($sp)
	sw $t0, 872($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1932($sp)
	lw $ra, 4148($sp)
	lw $t0, 1932($sp)
	sw $t0, 876($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1936($sp)
	lw $ra, 4148($sp)
	lw $t0, 1936($sp)
	sw $t0, 880($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1940($sp)
	lw $ra, 4148($sp)
	lw $t0, 1940($sp)
	sw $t0, 884($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1944($sp)
	lw $ra, 4148($sp)
	lw $t0, 1944($sp)
	sw $t0, 888($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1948($sp)
	lw $ra, 4148($sp)
	lw $t0, 1948($sp)
	sw $t0, 892($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1952($sp)
	lw $ra, 4148($sp)
	lw $t0, 1952($sp)
	sw $t0, 896($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1956($sp)
	lw $ra, 4148($sp)
	lw $t0, 1956($sp)
	sw $t0, 900($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1960($sp)
	lw $ra, 4148($sp)
	lw $t0, 1960($sp)
	sw $t0, 904($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1964($sp)
	lw $ra, 4148($sp)
	lw $t0, 1964($sp)
	sw $t0, 908($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1968($sp)
	lw $ra, 4148($sp)
	lw $t0, 1968($sp)
	sw $t0, 912($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1972($sp)
	lw $ra, 4148($sp)
	lw $t0, 1972($sp)
	sw $t0, 916($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1976($sp)
	lw $ra, 4148($sp)
	lw $t0, 1976($sp)
	sw $t0, 920($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1980($sp)
	lw $ra, 4148($sp)
	lw $t0, 1980($sp)
	sw $t0, 924($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1984($sp)
	lw $ra, 4148($sp)
	lw $t0, 1984($sp)
	sw $t0, 928($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1988($sp)
	lw $ra, 4148($sp)
	lw $t0, 1988($sp)
	sw $t0, 932($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1992($sp)
	lw $ra, 4148($sp)
	lw $t0, 1992($sp)
	sw $t0, 936($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 1996($sp)
	lw $ra, 4148($sp)
	lw $t0, 1996($sp)
	sw $t0, 940($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2000($sp)
	lw $ra, 4148($sp)
	lw $t0, 2000($sp)
	sw $t0, 944($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2004($sp)
	lw $ra, 4148($sp)
	lw $t0, 2004($sp)
	sw $t0, 948($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2008($sp)
	lw $ra, 4148($sp)
	lw $t0, 2008($sp)
	sw $t0, 952($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2012($sp)
	lw $ra, 4148($sp)
	lw $t0, 2012($sp)
	sw $t0, 956($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2016($sp)
	lw $ra, 4148($sp)
	lw $t0, 2016($sp)
	sw $t0, 960($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2020($sp)
	lw $ra, 4148($sp)
	lw $t0, 2020($sp)
	sw $t0, 964($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2024($sp)
	lw $ra, 4148($sp)
	lw $t0, 2024($sp)
	sw $t0, 968($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2028($sp)
	lw $ra, 4148($sp)
	lw $t0, 2028($sp)
	sw $t0, 972($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2032($sp)
	lw $ra, 4148($sp)
	lw $t0, 2032($sp)
	sw $t0, 976($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2036($sp)
	lw $ra, 4148($sp)
	lw $t0, 2036($sp)
	sw $t0, 980($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2040($sp)
	lw $ra, 4148($sp)
	lw $t0, 2040($sp)
	sw $t0, 984($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2044($sp)
	lw $ra, 4148($sp)
	lw $t0, 2044($sp)
	sw $t0, 988($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2048($sp)
	lw $ra, 4148($sp)
	lw $t0, 2048($sp)
	sw $t0, 992($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2052($sp)
	lw $ra, 4148($sp)
	lw $t0, 2052($sp)
	sw $t0, 996($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2056($sp)
	lw $ra, 4148($sp)
	lw $t0, 2056($sp)
	sw $t0, 1000($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2060($sp)
	lw $ra, 4148($sp)
	lw $t0, 2060($sp)
	sw $t0, 1004($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2064($sp)
	lw $ra, 4148($sp)
	lw $t0, 2064($sp)
	sw $t0, 1008($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2068($sp)
	lw $ra, 4148($sp)
	lw $t0, 2068($sp)
	sw $t0, 1012($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2072($sp)
	lw $ra, 4148($sp)
	lw $t0, 2072($sp)
	sw $t0, 1016($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2076($sp)
	lw $ra, 4148($sp)
	lw $t0, 2076($sp)
	sw $t0, 1020($sp)
	sw $ra, 4148($sp)
	lw $t0, 0($sp)
	sw $t0, -144($sp)
	addi $sp, $sp, -144
	jal getcount
	addi $sp, $sp, 144
	move $t0, $v0
	sw $t0, 2080($sp)
	lw $ra, 4148($sp)
	lw $t0, 2080($sp)
	sw $t0, 1024($sp)
	sw $ra, 4148($sp)
	lw $t0, 4($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2084($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 8($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2088($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 12($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2092($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 16($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2096($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 20($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2100($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 24($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2104($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 28($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2108($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 32($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2112($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 36($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2116($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 40($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2120($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 44($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2124($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 48($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2128($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 52($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2132($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 56($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2136($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 60($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2140($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 64($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2144($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 68($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2148($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 72($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2152($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 76($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2156($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 80($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2160($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 84($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2164($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 88($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2168($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 92($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2172($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 96($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2176($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 100($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2180($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 104($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2184($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 108($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2188($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 112($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2192($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 116($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2196($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 120($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2200($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 124($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2204($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 128($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2208($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 132($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2212($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 136($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2216($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 140($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2220($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 144($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2224($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 148($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2228($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 152($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2232($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 156($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2236($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 160($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2240($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 164($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2244($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 168($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2248($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 172($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2252($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 176($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2256($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 180($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2260($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 184($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2264($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 188($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2268($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 192($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2272($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 196($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2276($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 200($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2280($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 204($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2284($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 208($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2288($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 212($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2292($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 216($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2296($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 220($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2300($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 224($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2304($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 228($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2308($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 232($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2312($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 236($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2316($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 240($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2320($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 244($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2324($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 248($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2328($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 252($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2332($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 256($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2336($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 260($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2340($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 264($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2344($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 268($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2348($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 272($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2352($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 276($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2356($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 280($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2360($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 284($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2364($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 288($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2368($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 292($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2372($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 296($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2376($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 300($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2380($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 304($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2384($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 308($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2388($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 312($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2392($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 316($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2396($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 320($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2400($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 324($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2404($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 328($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2408($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 332($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2412($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 336($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2416($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 340($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2420($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 344($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2424($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 348($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2428($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 352($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2432($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 356($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2436($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 360($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2440($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 364($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2444($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 368($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2448($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 372($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2452($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 376($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2456($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 380($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2460($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 384($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2464($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 388($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2468($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 392($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2472($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 396($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2476($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 400($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2480($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 404($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2484($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 408($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2488($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 412($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2492($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 416($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2496($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 420($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2500($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 424($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2504($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 428($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2508($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 432($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2512($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 436($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2516($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 440($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2520($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 444($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2524($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 448($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2528($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 452($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2532($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 456($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2536($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 460($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2540($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 464($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2544($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 468($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2548($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 472($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2552($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 476($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2556($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 480($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2560($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 484($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2564($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 488($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2568($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 492($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2572($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 496($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2576($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 500($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2580($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 504($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2584($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 508($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2588($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 512($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2592($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 516($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2596($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 520($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2600($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 524($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2604($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 528($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2608($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 532($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2612($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 536($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2616($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 540($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2620($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 544($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2624($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 548($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2628($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 552($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2632($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 556($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2636($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 560($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2640($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 564($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2644($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 568($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2648($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 572($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2652($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 576($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2656($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 580($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2660($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 584($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2664($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 588($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2668($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 592($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2672($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 596($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2676($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 600($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2680($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 604($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2684($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 608($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2688($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 612($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2692($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 616($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2696($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 620($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2700($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 624($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2704($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 628($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2708($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 632($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2712($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 636($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2716($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 640($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2720($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 644($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2724($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 648($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2728($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 652($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2732($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 656($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2736($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 660($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2740($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 664($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2744($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 668($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2748($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 672($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2752($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 676($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2756($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 680($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2760($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 684($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2764($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 688($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2768($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 692($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2772($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 696($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2776($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 700($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2780($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 704($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2784($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 708($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2788($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 712($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2792($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 716($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2796($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 720($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2800($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 724($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2804($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 728($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2808($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 732($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2812($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 736($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2816($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 740($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2820($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 744($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2824($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 748($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2828($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 752($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2832($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 756($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2836($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 760($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2840($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 764($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2844($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 768($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2848($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 772($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2852($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 776($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2856($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 780($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2860($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 784($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2864($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 788($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2868($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 792($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2872($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 796($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2876($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 800($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2880($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 804($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2884($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 808($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2888($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 812($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2892($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 816($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2896($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 820($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2900($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 824($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2904($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 828($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2908($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 832($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2912($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 836($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2916($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 840($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2920($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 844($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2924($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 848($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2928($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 852($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2932($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 856($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2936($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 860($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2940($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 864($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2944($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 868($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2948($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 872($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2952($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 876($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2956($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 880($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2960($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 884($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2964($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 888($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2968($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 892($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2972($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 896($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2976($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 900($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2980($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 904($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2984($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 908($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2988($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 912($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2992($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 916($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 2996($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 920($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3000($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 924($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3004($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 928($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3008($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 932($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3012($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 936($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3016($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 940($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3020($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 944($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3024($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 948($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3028($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 952($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3032($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 956($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3036($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 960($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3040($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 964($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3044($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 968($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3048($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 972($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3052($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 976($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3056($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 980($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3060($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 984($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3064($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 988($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3068($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 992($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3072($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 996($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3076($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1000($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3080($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1004($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3084($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1008($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3088($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1012($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3092($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1016($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3096($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1020($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3100($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1024($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3104($sp)
	lw $ra, 4148($sp)
	la $t0, _L0
	sw $t0, 3108($sp)
	sw $ra, 4148($sp)
	lw $t0, 3108($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printString
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3112($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 4($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3116($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 8($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3120($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 12($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3124($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 16($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3128($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 20($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3132($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 24($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3136($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 28($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3140($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 32($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3144($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 36($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3148($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 40($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3152($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 44($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3156($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 48($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3160($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 52($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3164($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 56($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3168($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 60($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3172($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 64($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3176($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 68($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3180($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 72($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3184($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 76($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3188($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 80($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3192($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 84($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3196($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 88($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3200($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 92($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3204($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 96($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3208($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 100($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3212($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 104($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3216($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 108($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3220($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 112($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3224($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 116($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3228($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 120($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3232($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 124($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3236($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 128($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3240($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 132($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3244($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 136($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3248($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 140($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3252($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 144($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3256($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 148($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3260($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 152($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3264($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 156($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3268($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 160($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3272($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 164($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3276($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 168($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3280($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 172($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3284($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 176($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3288($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 180($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3292($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 184($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3296($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 188($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3300($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 192($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3304($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 196($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3308($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 200($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3312($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 204($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3316($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 208($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3320($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 212($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3324($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 216($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3328($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 220($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3332($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 224($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3336($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 228($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3340($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 232($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3344($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 236($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3348($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 240($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3352($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 244($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3356($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 248($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3360($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 252($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3364($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 256($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3368($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 260($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3372($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 264($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3376($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 268($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3380($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 272($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3384($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 276($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3388($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 280($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3392($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 284($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3396($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 288($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3400($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 292($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3404($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 296($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3408($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 300($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3412($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 304($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3416($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 308($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3420($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 312($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3424($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 316($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3428($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 320($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3432($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 324($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3436($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 328($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3440($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 332($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3444($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 336($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3448($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 340($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3452($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 344($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3456($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 348($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3460($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 352($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3464($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 356($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3468($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 360($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3472($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 364($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3476($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 368($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3480($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 372($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3484($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 376($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3488($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 380($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3492($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 384($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3496($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 388($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3500($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 392($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3504($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 396($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3508($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 400($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3512($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 404($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3516($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 408($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3520($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 412($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3524($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 416($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3528($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 420($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3532($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 424($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3536($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 428($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3540($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 432($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3544($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 436($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3548($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 440($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3552($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 444($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3556($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 448($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3560($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 452($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3564($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 456($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3568($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 460($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3572($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 464($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3576($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 468($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3580($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 472($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3584($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 476($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3588($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 480($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3592($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 484($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3596($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 488($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3600($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 492($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3604($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 496($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3608($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 500($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3612($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 504($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3616($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 508($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3620($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 512($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3624($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 516($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3628($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 520($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3632($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 524($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3636($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 528($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3640($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 532($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3644($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 536($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3648($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 540($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3652($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 544($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3656($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 548($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3660($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 552($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3664($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 556($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3668($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 560($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3672($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 564($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3676($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 568($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3680($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 572($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3684($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 576($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3688($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 580($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3692($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 584($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3696($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 588($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3700($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 592($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3704($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 596($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3708($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 600($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3712($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 604($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3716($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 608($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3720($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 612($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3724($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 616($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3728($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 620($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3732($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 624($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3736($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 628($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3740($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 632($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3744($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 636($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3748($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 640($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3752($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 644($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3756($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 648($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3760($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 652($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3764($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 656($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3768($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 660($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3772($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 664($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3776($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 668($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3780($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 672($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3784($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 676($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3788($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 680($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3792($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 684($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3796($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 688($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3800($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 692($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3804($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 696($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3808($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 700($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3812($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 704($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3816($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 708($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3820($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 712($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3824($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 716($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3828($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 720($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3832($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 724($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3836($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 728($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3840($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 732($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3844($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 736($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3848($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 740($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3852($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 744($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3856($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 748($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3860($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 752($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3864($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 756($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3868($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 760($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3872($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 764($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3876($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 768($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3880($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 772($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3884($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 776($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3888($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 780($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3892($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 784($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3896($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 788($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3900($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 792($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3904($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 796($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3908($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 800($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3912($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 804($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3916($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 808($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3920($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 812($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3924($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 816($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3928($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 820($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3932($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 824($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3936($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 828($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3940($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 832($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3944($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 836($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3948($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 840($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3952($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 844($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3956($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 848($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3960($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 852($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3964($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 856($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3968($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 860($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3972($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 864($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3976($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 868($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3980($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 872($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3984($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 876($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3988($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 880($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3992($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 884($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 3996($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 888($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4000($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 892($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4004($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 896($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4008($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 900($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4012($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 904($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4016($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 908($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4020($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 912($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4024($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 916($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4028($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 920($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4032($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 924($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4036($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 928($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4040($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 932($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4044($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 936($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4048($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 940($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4052($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 944($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4056($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 948($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4060($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 952($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4064($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 956($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4068($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 960($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4072($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 964($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4076($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 968($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4080($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 972($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4084($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 976($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4088($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 980($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4092($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 984($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4096($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 988($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4100($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 992($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4104($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 996($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4108($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1000($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4112($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1004($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4116($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1008($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4120($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1012($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4124($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1016($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4128($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1020($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4132($sp)
	lw $ra, 4148($sp)
	sw $ra, 4148($sp)
	lw $t0, 1024($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printInt
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4136($sp)
	lw $ra, 4148($sp)
	la $t0, _L1
	sw $t0, 4140($sp)
	sw $ra, 4148($sp)
	lw $t0, 4140($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal printString
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 4144($sp)
	lw $ra, 4148($sp)
_main_exit:
	jr $ra
getcount:

	li $t0, 1
	sw $t0, 28($sp)
	li $t0, 0
	sw $t0, 12($sp)
	li $t0, 4
	sw $t0, 4($sp)
	lw $t0, 0($sp)
	sw $t0, 8($sp)
	lw $t0, 12($sp)
	sw $t0, 16($sp)
	lw $t1, 4($sp)
	lw $t2, 16($sp)
	mul $t0, $t1, $t2
	sw $t0, 16($sp)
	lw $t1, 8($sp)
	lw $t2, 16($sp)
	add $t0, $t1, $t2
	sw $t0, 8($sp)
	lw $t0, 0($sp)
	sw $t0, 20($sp)
	lw $t0, 12($sp)
	sw $t0, 24($sp)
	lw $t1, 4($sp)
	lw $t2, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, 24($sp)
	lw $t1, 20($sp)
	lw $t2, 24($sp)
	add $t0, $t1, $t2
	sw $t0, 20($sp)
	lw $t1, 20($sp)
	lw $t0, 4($t1)
	sw $t0, 44($sp)
	lw $t1, 44($sp)
	lw $t2, 28($sp)
	add $t0, $t1, $t2
	sw $t0, 32($sp)
	lw $t0, 32($sp)
	lw $t1, 8($sp)
	sw $t0, 4($t1)
	lw $t0, 0($sp)
	sw $t0, 36($sp)
	lw $t0, 12($sp)
	sw $t0, 40($sp)
	lw $t1, 4($sp)
	lw $t2, 40($sp)
	mul $t0, $t1, $t2
	sw $t0, 40($sp)
	lw $t1, 36($sp)
	lw $t2, 40($sp)
	add $t0, $t1, $t2
	sw $t0, 36($sp)
	lw $t1, 36($sp)
	lw $t0, 4($t1)
	sw $t0, 48($sp)
	lw $t0, 48($sp)
	move $v0, $t0
	j _getcount_exit
_getcount_exit:
	jr $ra
substring:



	li $t0, 0
	sw $t0, 56($sp)
	li $t0, 1
	sw $t0, 48($sp)
	li $t0, 4
	sw $t0, 24($sp)
	la $t0, _L2
	sw $t0, 20($sp)
	lw $t0, 20($sp)
	sw $t0, 16($sp)
	lw $t0, 0($sp)
	sw $t0, 28($sp)
	lw $t0, 4($sp)
	sw $t0, 32($sp)
	lw $t1, 28($sp)
	lw $t2, 32($sp)
	add $t0, $t1, $t2
	sw $t0, 28($sp)
	lw $t1, 28($sp)
	lb $t0, 0($t1)
	sw $t0, 44($sp)
	sw $ra, 100($sp)
	lw $t0, 44($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal _charToString
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 40($sp)
	lw $ra, 100($sp)
	sw $ra, 100($sp)
	lw $t0, 16($sp)
	sw $t0, -292($sp)
	lw $t0, 40($sp)
	sw $t0, -288($sp)
	addi $sp, $sp, -292
	jal _strcat
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 36($sp)
	lw $ra, 100($sp)
	lw $t0, 36($sp)
	sw $t0, 16($sp)
	lw $t1, 4($sp)
	lw $t2, 48($sp)
	add $t0, $t1, $t2
	sw $t0, 52($sp)
	lw $t0, 52($sp)
	sw $t0, 12($sp)
_L3:
	lw $t1, 8($sp)
	lw $t2, 4($sp)
	add $t0, $t1, $t2
	sw $t0, 60($sp)
	lw $t1, 12($sp)
	lw $t2, 60($sp)
	slt $t0, $t1, $t2
	sw $t0, 64($sp)
	lw $t0, 64($sp)
	beqz $t0, _L4
	lw $t0, 0($sp)
	sw $t0, 68($sp)
	lw $t0, 12($sp)
	sw $t0, 72($sp)
	lw $t1, 68($sp)
	lw $t2, 72($sp)
	add $t0, $t1, $t2
	sw $t0, 68($sp)
	lw $t1, 68($sp)
	lb $t0, 0($t1)
	sw $t0, 84($sp)
	sw $ra, 100($sp)
	lw $t0, 84($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal _charToString
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 80($sp)
	lw $ra, 100($sp)
	sw $ra, 100($sp)
	lw $t0, 16($sp)
	sw $t0, -292($sp)
	lw $t0, 80($sp)
	sw $t0, -288($sp)
	addi $sp, $sp, -292
	jal _strcat
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 76($sp)
	lw $ra, 100($sp)
	lw $t0, 76($sp)
	sw $t0, 16($sp)
_L5:
	lw $t1, 12($sp)
	lw $t2, 48($sp)
	add $t0, $t1, $t2
	sw $t0, 88($sp)
	lw $t0, 88($sp)
	sw $t0, 12($sp)
	j _L3
_L4:
	lw $t0, 16($sp)
	move $v0, $t0
	j _substring_exit
_substring_exit:
	jr $ra
readString:
	li $t0, 9
	sw $t0, 44($sp)
	li $t0, 10
	sw $t0, 36($sp)
	li $t0, 32
	sw $t0, 28($sp)
	li $t0, 0
	sw $t0, 24($sp)
	la $t0, _L2
	sw $t0, 8($sp)
	lw $t0, 8($sp)
	sw $t0, 4($sp)
	sw $ra, 100($sp)
	addi $sp, $sp, -292
	jal readChar
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 12($sp)
	lw $ra, 100($sp)
	lw $t0, 12($sp)
	sw $t0, 0($sp)
_L6:
	li $t0, 1
	sw $t0, 16($sp)
	li $t0, 1
	sw $t0, 20($sp)
	lw $t1, 0($sp)
	lw $t2, 28($sp)
	seq $t0, $t1, $t2
	sw $t0, 32($sp)
	lw $t0, 32($sp)
	bnez $t0, _L9
	lw $t1, 0($sp)
	lw $t2, 36($sp)
	seq $t0, $t1, $t2
	sw $t0, 40($sp)
	lw $t0, 40($sp)
	bnez $t0, _L9
	li $t0, 0
	sw $t0, 20($sp)
_L9:
	lw $t0, 20($sp)
	bnez $t0, _L8
	lw $t1, 0($sp)
	lw $t2, 44($sp)
	seq $t0, $t1, $t2
	sw $t0, 48($sp)
	lw $t0, 48($sp)
	bnez $t0, _L8
	li $t0, 0
	sw $t0, 16($sp)
_L8:
	lw $t0, 16($sp)
	beqz $t0, _L7
	sw $ra, 100($sp)
	addi $sp, $sp, -292
	jal readChar
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 52($sp)
	lw $ra, 100($sp)
	lw $t0, 52($sp)
	sw $t0, 0($sp)
	j _L6
_L7:
	sw $ra, 100($sp)
	lw $t0, 0($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal _charToString
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 60($sp)
	lw $ra, 100($sp)
	sw $ra, 100($sp)
	lw $t0, 4($sp)
	sw $t0, -292($sp)
	lw $t0, 60($sp)
	sw $t0, -288($sp)
	addi $sp, $sp, -292
	jal _strcat
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 56($sp)
	lw $ra, 100($sp)
	lw $t0, 56($sp)
	sw $t0, 4($sp)
	sw $ra, 100($sp)
	addi $sp, $sp, -292
	jal readChar
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 64($sp)
	lw $ra, 100($sp)
	lw $t0, 64($sp)
	sw $t0, 0($sp)
_L10:
	li $t0, 0
	sw $t0, 68($sp)
	li $t0, 0
	sw $t0, 72($sp)
	lw $t1, 0($sp)
	lw $t2, 28($sp)
	sne $t0, $t1, $t2
	sw $t0, 76($sp)
	lw $t0, 76($sp)
	beqz $t0, _L13
	lw $t1, 0($sp)
	lw $t2, 36($sp)
	sne $t0, $t1, $t2
	sw $t0, 80($sp)
	lw $t0, 80($sp)
	beqz $t0, _L13
	li $t0, 1
	sw $t0, 72($sp)
_L13:
	lw $t0, 72($sp)
	beqz $t0, _L12
	lw $t1, 0($sp)
	lw $t2, 44($sp)
	sne $t0, $t1, $t2
	sw $t0, 84($sp)
	lw $t0, 84($sp)
	beqz $t0, _L12
	li $t0, 1
	sw $t0, 68($sp)
_L12:
	lw $t0, 68($sp)
	beqz $t0, _L11
	sw $ra, 100($sp)
	lw $t0, 0($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal _charToString
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 92($sp)
	lw $ra, 100($sp)
	sw $ra, 100($sp)
	lw $t0, 4($sp)
	sw $t0, -292($sp)
	lw $t0, 92($sp)
	sw $t0, -288($sp)
	addi $sp, $sp, -292
	jal _strcat
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 88($sp)
	lw $ra, 100($sp)
	lw $t0, 88($sp)
	sw $t0, 4($sp)
	sw $ra, 100($sp)
	addi $sp, $sp, -292
	jal readChar
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 96($sp)
	lw $ra, 100($sp)
	lw $t0, 96($sp)
	sw $t0, 0($sp)
	j _L10
_L11:
	lw $t0, 4($sp)
	move $v0, $t0
	j _readString_exit
_readString_exit:
	jr $ra
readLine:
	li $t0, 10
	sw $t0, 16($sp)
	li $t0, 0
	sw $t0, 12($sp)
	sw $ra, 32($sp)
	addi $sp, $sp, -292
	jal readChar
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 8($sp)
	lw $ra, 32($sp)
	lw $t0, 8($sp)
	sw $t0, 4($sp)
_L14:
	lw $t1, 4($sp)
	lw $t2, 16($sp)
	sne $t0, $t1, $t2
	sw $t0, 20($sp)
	lw $t0, 20($sp)
	beqz $t0, _L15
	sw $ra, 32($sp)
	lw $t0, 4($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal _charToString
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 28($sp)
	lw $ra, 32($sp)
	sw $ra, 32($sp)
	lw $t0, 0($sp)
	sw $t0, -292($sp)
	lw $t0, 28($sp)
	sw $t0, -288($sp)
	addi $sp, $sp, -292
	jal _strcat
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 24($sp)
	lw $ra, 32($sp)
	lw $t0, 24($sp)
	sw $t0, 0($sp)
	j _L14
_L15:
	lw $t0, 0($sp)
	move $v0, $t0
	j _readLine_exit
_readLine_exit:
	jr $ra
parseInt:

	li $t0, 1
	sw $t0, 64($sp)
	li $t0, 48
	sw $t0, 56($sp)
	li $t0, 4
	sw $t0, 32($sp)
	li $t0, 10
	sw $t0, 24($sp)
	li $t0, 0
	sw $t0, 12($sp)
	lw $t0, 12($sp)
	sw $t0, 4($sp)
	lw $t0, 12($sp)
	sw $t0, 8($sp)
_L16:
	sw $ra, 76($sp)
	lw $t0, 0($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal _strlen
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 16($sp)
	lw $ra, 76($sp)
	lw $t1, 8($sp)
	lw $t2, 16($sp)
	slt $t0, $t1, $t2
	sw $t0, 20($sp)
	lw $t0, 20($sp)
	beqz $t0, _L17
	lw $t1, 4($sp)
	lw $t2, 24($sp)
	mul $t0, $t1, $t2
	sw $t0, 28($sp)
	lw $t0, 0($sp)
	sw $t0, 36($sp)
	lw $t0, 8($sp)
	sw $t0, 40($sp)
	lw $t1, 36($sp)
	lw $t2, 40($sp)
	add $t0, $t1, $t2
	sw $t0, 36($sp)
	lw $t1, 36($sp)
	lb $t0, 0($t1)
	sw $t0, 44($sp)
	sw $ra, 76($sp)
	lw $t0, 44($sp)
	sw $t0, -292($sp)
	addi $sp, $sp, -292
	jal ord
	addi $sp, $sp, 292
	move $t0, $v0
	sw $t0, 48($sp)
	lw $ra, 76($sp)
	lw $t1, 28($sp)
	lw $t2, 48($sp)
	add $t0, $t1, $t2
	sw $t0, 52($sp)
	lw $t1, 52($sp)
	lw $t2, 56($sp)
	sub $t0, $t1, $t2
	sw $t0, 60($sp)
	lw $t0, 60($sp)
	sw $t0, 4($sp)
_L18:
	lw $t1, 8($sp)
	lw $t2, 64($sp)
	add $t0, $t1, $t2
	sw $t0, 68($sp)
	lw $t0, 68($sp)
	sw $t0, 8($sp)
	j _L16
_L17:
	lw $t0, 4($sp)
	move $v0, $t0
	j _parseInt_exit
_parseInt_exit:
	jr $ra
fillIntArray:


	li $t0, 1
	sw $t0, 32($sp)
	li $t0, 4
	sw $t0, 20($sp)
	li $t0, 0
	sw $t0, 12($sp)
	lw $t0, 12($sp)
	sw $t0, 8($sp)
_L19:
	lw $t1, 0($sp)
	lw $t0, 0($t1)
	sw $t0, 40($sp)
	lw $t1, 8($sp)
	lw $t2, 40($sp)
	slt $t0, $t1, $t2
	sw $t0, 16($sp)
	lw $t0, 16($sp)
	beqz $t0, _L20
	lw $t0, 0($sp)
	sw $t0, 24($sp)
	lw $t0, 8($sp)
	sw $t0, 28($sp)
	lw $t1, 20($sp)
	lw $t2, 28($sp)
	mul $t0, $t1, $t2
	sw $t0, 28($sp)
	lw $t1, 24($sp)
	lw $t2, 28($sp)
	add $t0, $t1, $t2
	sw $t0, 24($sp)
	lw $t0, 4($sp)
	lw $t1, 24($sp)
	sw $t0, 4($t1)
_L21:
	lw $t1, 8($sp)
	lw $t2, 32($sp)
	add $t0, $t1, $t2
	sw $t0, 36($sp)
	lw $t0, 36($sp)
	sw $t0, 8($sp)
	j _L19
_L20:
	lw $t0, 32($sp)
	move $v0, $t0
	j _fillIntArray_exit
_fillIntArray_exit:
	jr $ra
_malloc:  				#done
    lw $a0, 0($sp)
    li $v0, 9
    syscall
    jr $ra

_strcmp:   			#done t0<t1 r -1 t0=t1 r 0 t0>t1 r 1
    lw $t0, 0($sp)
    lw $t1, 4($sp)
_strcmp_begin:
    lb $t2, 0($t0)
    lb $t3, 0($t1)
    blt $t2, $t3, _strcmp_less
    bgt $t2, $t3, _strcmp_greater
    beq $t2, $zero, _strcmp_equal
    addi $t0, $t0, 1
    addi $t1, $t1, 1
    j _strcmp_begin
_strcmp_less:				
    li $v0, -1
    jr $ra
_strcmp_greater:
    li $v0, 1
    jr $ra
_strcmp_equal:
    li $v0, 0
    jr $ra

_intToString:			#done
    lw $t0, 0($sp)
    li $t1, 0
    bge $t0, $zero, intToString_l1
    li $t1, 1
    neg $t0, $t0
intToString_l1:
    move $t3, $t0
    li $t2, 0
intToString_l2:
    addi $t2, $t2, 1
    div $t3, $t3, 10
    bne $t3, $zero, intToString_l2
    addi $a0, $t2, 1
    beq $t1, $zero, intToString_l3
    addi $a0, $a0, 1
intToString_l3:
    li $v0, 9
    move $t3, $a0
    syscall
    beq $t1, $zero, intToString_l5
    li $t4, 45
    sb $t4, 0($v0)
intToString_l5:
    add $t3, $v0, $t3
    addi $t3, $t3, -1
    sb $zero, 0($t3)    
    addi $t3, $t3, -1
intToString_l4:
    rem $t4, $t0, 10
    addi $t4, $t4, 48
    sb $t4, 0($t3)
    addi $t3, $t3, -1
    div $t0, $t0, 10
    bne $t0, $zero, intToString_l4
    jr $ra

_charToString: 		#done
    li $a0, 2
    li $v0, 9
    syscall
    lb $t0, 0($sp)
    sb $t0, 0($v0)
    sb $zero, 1($v0)
    jr $ra

_strlen:
    lw $t0, 0($sp)
    li $v0, 0
_strlen_begin:
    lb $t1, 0($t0)
    beq $t1, $zero, _strlen_end
    addi $t0, $t0, 1
    addi $v0, $v0, 1
    j _strlen_begin
_strlen_end:
    jr $ra

_strcat:			#done  t0.t1
    lw $t0, 0($sp)
    move $t7, $t0
    lw $t6, 4($sp)
    addi $sp, $sp, -8
    sw $ra, 4($sp)	#aa
    sw $t0, 0($sp)	#aa
    jal _strlen
    move $t2, $v0
    move $t1, $t6
    sw $t1, 0($sp)  #aa
    jal _strlen
    move $t1, $t6
    move $t3, $v0
    add $a0, $t2, $t3
    addi $a0, $a0, 1
    li $v0,9
    syscall
    move $t1, $t6
	move $t0, $t7
    move $t5, $v0
_strcat_l1:
    lb $t4, 0($t0)
    beq $t4, $zero, _strcat_l2
    sb $t4, 0($t5)
    addi $t0, $t0, 1
    addi $t5, $t5, 1
    j _strcat_l1
_strcat_l2:
    lb $t4, 0($t1)
    beq $t4, $zero, _strcat_l3
    sb $t4, 0($t5)
    addi $t1, $t1, 1
    addi $t5, $t5, 1	#wrong
    j _strcat_l2
_strcat_l3:
    sb $zero, 0($t5)
    lw $ra, 4($sp)	#myself
    addi $sp, $sp, 8
    jr $ra

readInt:			#done
    li $v0, 5
    syscall
    jr $ra

readChar:			#done
    li $v0, 8
    move $a0, $sp
    li $a1, 2
    syscall
    lb $v0, 0($sp)
    jr $ra

printInt:			#done
    li $v0, 1
    lw $a0, 0($sp)
    syscall
    jr $ra

printChar:			#done
    sb $zero, 1($sp)
    li $v0, 4
    move $a0, $sp
    syscall
    jr $ra

printString:		#done
    lw $a0, 0($sp)
    li $v0, 4
    syscall
    jr $ra

printLine:			#done
    lw $a0, 0($sp)
    li $v0, 4
    syscall
    li $t0, 10
    sb $t0, 0($sp)
    sb $zero, 1($sp)
    li $v0, 4
    move $a0, $sp
    syscall
    jr $ra

ord:		#myself
	lb	$v0 0($sp)
	jr $ra

chr: 		#myself
	lb	$v0 0($sp)
	jr $ra

	.data
_L2:
	.asciiz ""
_L0:
	.asciiz "
"
_L1:
	.asciiz "end"
