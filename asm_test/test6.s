	.data
var:	.word 5

	.macro PUSH reg		#
	addi sp, sp, �4
	stw \reg, 0(sp)
	.endm

	.macro POP reg
	ldw \reg, 0(sp)
	addi sp, sp, 4
	.endm

	.global main

	.text
main:	movia	r8, var		# Flyttar adressen till variabeln var till r8
	ldw	r9, 0(r8)	# Flyttar v�rdet p� variabeln var till r9
	addi	r9, r9, 2	# Adderar 2 till v�rdet p� r9
	stw	r9, 0(r8)	# Flyttar v�rdet p� r8 till variabeln var

	PUSH r9			# l�gger r9 p� stacken
	POP r10			# poppar v�rdet i stacken till r10
				# Om r9 = r10 s� fungerar operationen
				# Kontrollera �ven att sp har samma v�rde innan PUSH som efter POP
