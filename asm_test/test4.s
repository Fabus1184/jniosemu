#####################################################################
# test4.s: L�ser av dipswitchar och t�nder motsvarande led
#####################################################################

	.data
	.equ DIPSWITCHADDRESS, 0x850
	.equ LEDADDRESS, 0x810
	.global main

	.text

main:
	movia	r8, DIPSWITCHADDRESS	# Flytta dipswitch adressen till register r8
	ldw	r9, 0(r8)		# L�s in fr�n minnet till r9
	movia	r8, LEDADDRESS		# Flytta led adressen till register r8
	stw	r9, 0(r8)		# Skriv det bin�ra v�rdet till minnet (t�nd lampor)
