#!/usr/bin/python

# make-simple calculator............
def add():
        print "Enter the two numbers to Add"
        A=int(raw_input("First  Number: "))
        B=int(raw_input("Second Number: "))
        return A + B 

def sub():
        print "Enter the two numbers to Subtract"
        A=int(raw_input("First  Number: "))
        B=int(raw_input("Second Number: "))
        return A - B

def mul():
        print "Enter the two numbers to Multiply"
        A=int(raw_input("First  Number: "))
        B=int(raw_input("Second Number: "))
        return A * B

def div():
        print "Enter the two number to Divide"
        A=float(raw_input("First  Number: "))
        B=float(raw_input("Second Number: "))
        return A / B

print "WELCOME TO MY CALCULATOR"
print "1: ADDITION"
print "2: SUBTRACTION"
print "3: MULTIPLICATION"
print "4: DIVITION"
print "0: QUIT"

while True:

    CHOICE = int(raw_input("ENTER THE CORRESPONDING NUMBER FOR CALCULATION : ")) 

    if CHOICE == 1: 
        print 'ADDING TWO NUMBERS:'
        print add()

    elif CHOICE == 2:
        print 'SUBTRACTING TWO NUMBERS'
        print sub()

    elif CHOICE == 3:
        print 'MULTIPLYING TWO NUMBERS'
        print mul()

    elif CHOICE == 4:
        print "DIVIDEING TWO NUMBERS"
        print div()

    elif CHOICE == 0:
        exit()
    else:
        print "The value Enter value from 1-4"