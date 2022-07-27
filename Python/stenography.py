#!/usr/bin/env python3

char = 'h' 
cover = ['34','67','68','78','98','36','12','135']
#stringList = []
char_bin = format(ord(char), '0>8b')
print(char_bin)
for i, c in enumerate(char_bin):

    stringList = list(format(int(cover[i]), '0>8b'))
    print(stringList)

    stringList[-1] = char_bin[i]
    print(char_bin[i])
    print(stringList)
    cover[i] = int(''.join(stringList),2) 

print(cover)
print(format(ord(char), '0>8b'))
