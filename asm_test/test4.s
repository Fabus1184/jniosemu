#####################################################################
# test4.s: T�nder tv� led
#####################################################################

	.data
	.global main
	
	.text

main:	
	movia		r8, 0x850		# Flytta dipswitch adressen till register r8
	ldw			r9, 0(r8)		# L�s in fr�n minnet till r9
	movia		r8, 0x810		# Flytta led adressen till register r8
	stw			r9, 0(r8)		# Skriv det bin�ra v�rdet till minnet (t�nd lampor)
	
	
