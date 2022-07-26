  1 #!/usr/bin/env python3
  2 
  3 def guess_number(n):
  4 
  5     while(True):
  6         guess = int(input("Please enter your guess (0-100): "))
  7         if guess < n:
  8             print("too low")
  9         elif guess > n:
 10             print("too high")
 11         else:
 12            print("WIN")
 13            break
 14 
 15 guess_number(23)
~                       
