#A Simple integer calculator programmed in MIPS Assembly.
#By Aditya Joshi
.data
	prompt: .asciiz "Please enter your first number:\n"
	prompt2: .asciiz "Please enter your second number: \n"
	displayConfirmation: .asciiz "You have entered: \n"
	confirmationFillerWord: .asciiz " and "
	addition: .asciiz "\nThe addition result is: \n"
	subtraction: .asciiz "\nThe subtraction result is: \n"
	division: .asciiz "\nThe division result is: \n"
	multiplication: .asciiz "\nThe multiplication result is: \n"
	number1: .word 5
	number2: .word 10
	
.text
	#Prompt user to enter first number
	li $v0, 4 #printing a string
	la $a0, prompt
	syscall
	
	#get the first number
	li $v0, 5 #getting an integer from user
	syscall
	
	#store what the user inputted into t0
	move $t0, $v0
	move $v0, $zero #clearing the v0 register for future use.
	#Prompt user to enter second number
	li $v0, 4
	la $a0, prompt2
	syscall
	
	#get the second number
	li $v0, 5 #getting the second integer from user
	syscall
	
	#store what the user inputted as the second number into t1
	move $t1, $v0
	move $v0, $zero #clearing the v0 register for future use.
	#Display back to the user what they have entered.
	li $v0, 4
	la $a0, displayConfirmation #We show the string.
	syscall
	li $v0, 1 #display an integer
	move $a0, $t0 #move the number into argument
	syscall
	li $v0, 4
	la $a0, confirmationFillerWord
	syscall
	
	move $v0, $zero #clear the values
	move $a0, $zero #clear the values
	li $v0, 1 #display it again
	move $a0, $t1 #move the second number into argument
	syscall
	
	#ADDITION:
	
	add $s0, $t0, $t1 # t2 = t0 + t1
	
	#Display the addition message to the user
	li $v0, 4
	la $a0, addition
	syscall
	
	move $v0, $zero #clear the values
	move $a0, $zero #clear the values	
	li $v0, 1
	move $a0, $s0 #This is our addition result.
	syscall
	
	#SUBTRACTION:
	
	sub $s1, $t0, $t1 #t3 = t0 - t1
	
	#Display the subtraction message to the user
	li $v0, 4
	la $a0, subtraction
	syscall
	
	move $v0, $zero #clear the values
	move $a0, $zero #clear the values	
	li $v0, 1
	move $a0, $s1 #This is our subtraction result.
	syscall
	
	#MULTIPLICATION:
	
	mul $s2, $t0, $t1 #t4 = t0 * t1
	
	#Display the multiplication message to the user
	li $v0, 4
	la $a0, multiplication
	syscall
	
	move $v0, $zero #clear the values
	move $a0, $zero #clear the values	
	li $v0, 1
	move $a0, $s2 #This is our multiplication result.
	syscall
	
	#DIVISION:
	
	div $s3, $t0, $t1 #t5 = t0/t1
	
	#Display the division message to the user
	li $v0, 4
	la $a0, division
	syscall
	
	move $v0, $zero #clear the values
	move $a0, $zero #clear the values	
	li $v0, 1
	move $a0, $s3 #This is our divisions result.
	syscall
	
	