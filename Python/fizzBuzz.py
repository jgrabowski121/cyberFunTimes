# *Practical Exercise 0-2*

# FizzBuzz is an interview question that is said to filter out 99.5% of programming job candidates.

# *Deliverable*

# Modify deliverable.py so that it takes a number from the user and prints it 
# (the number) if it isn't divisible by 3 or 5. For multiples of 3 print
# 'fizz' instead. For multiples of 5 print 'buzz' instead. For multiples of
# 3 and 5 print 'fizzbuzz'.


#!/usr/bin/env python3

user_input = int(input("Please enter a number: "))

if not user_input % 3 and not user_input % 5:
    print("fizzbuzz")
elif not user_input % 3:
    print("fizz")
elif not user_input % 5:
    print("buzz")
else: 
    print(user_input)
