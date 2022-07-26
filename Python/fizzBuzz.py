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
