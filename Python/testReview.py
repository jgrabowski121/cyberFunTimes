# valid IP Address
myIp = '192.168.28.50'
range = 62

if int(myIP.split('.')[-1]) < = range:
    print("This IP falls within that range")
    
# list sslicing/range

#list slicing
myList[start:stop:step]

myOctets[0:3] #first items in the list

myOctets[-2:] # last two items in a list

myString[::-1] # returns the list in reverse

myString[3::] # returns from 3 on to the end

myString[::3] # starts at index 0 and returns every third item

#range
range(start,stop,step)

for i in range(0,10):
    print(i)
>0
>1
>2...
>9

list(range(50,0,-10))
[50,40,30,20,10]

list(range(51,0,-10))
[51,41,31,21,11,1]


#format

first = 'aaron'
middle = 'andrew'
last = 'anderson'
domain = 'cornetto'

f'{first}.{middle[0]}.{last}@[domain}.com'






