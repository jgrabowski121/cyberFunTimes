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

f'{first[0]}.{middle[0]}.{last[:5]}@[domain}.com'


#dictionary

myDict = {}
myDict['Pvt'] = 'E-1'
>>myDict
{'Pvt': 'E-1'}
for i in myDict:
    print(myDict[i]) #returns the values
    print(i) #returns the key
    
myDict = {}
myRoster = ['PFC", 'LCpl', 'LCpl']
for i in myRoster:
    if i in myDict:
        myDict[i] += 1
    else:
        myDict[i] = 1


with open(infile, 'r') as fp:
    print(fp.readlines()[:3])
#>> prints first 3 lines

with open(infile, 'r') as fp:
    print(fp.read()[:3])
#>> prints first 3 chars of the file          

#copy from one file to another
infile = 'myfile.txt'
outfile = 'outfile.txt'
with open(infile, 'r') as fp0:
    lines0 = fp0.readlines()
            
with open(outfile, 'w') as fp1:
    fp1.writelines(lines0)
            
myEmail = 'aaron.a.anderson@gmail.com'
            
_list = []
_list2 = []
_list = myEmail.split('@')
_list = '.'.join(_list)
_list2 = _list.split('.')
final = _list2[:-1]

 
            



