	.data
	.global main
	
	.text

main:	movia 	r8, 0x810	# Flytta adressen till register r8
	movi	r9, 0b1010	# Best�m vilka leds som ska vara t�nda
	stw	r9, 0(r8)	# Skriv det bin�ra v�rdet till minnet (t�nd lampor)
	
	
