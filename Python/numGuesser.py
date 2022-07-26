#!/usr/bin/env python3

def guess_number(n):

    while(True):
        guess = int(input("Please enter your guess (0-100): "))
        if guess < n:
            print("too low")
        elif guess > n:
            print("too high")
        else:
           print("WIN")
           break

guess_number(23)          
