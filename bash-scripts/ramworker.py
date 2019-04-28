import os

def workit():
    filepath = 'ram.txt'
    counter = 0.0
    avg = 0 
    with open(filepath) as fp:  
        line = fp.readline()
    cnt = 0
    while line:
        conv_int = float(line)
        line = fp.readline()
        #print("Line {}: {}".format(cnt, line.strip()))
        counter = counter + conv_int
        cnt += 1
    total = (cnt)
    #print (total)
    avg = (counter)/total
    print (avg)
