#!/usr/bin/env python3




def invert(l):
    x = 0 
    for num in l:
        l[x] = str(255 - int(num))
        x += 1
def inverted(l):
    y = []
    x = 0 
    for num in l:
        y.append(str(255 - int(num)))
        x += 1
    return y
   
if __name__ == '__main__':
    pass
