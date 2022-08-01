def move_zeros(lst):
    _lst = []
    count = 0
    print(lst)
    for i in lst:
        print(i)
        if i == 0:
            count += 1
        else:
            _lst.append(i)
   
    while count >= 1:
        _lst.append(0)
        count = count - 1
       
    print(_lst)
    
    return _lst
