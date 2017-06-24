f = open('MKK_22.dosage.txt', 'r')
file = open ('MKK_22.dosage2.txt', 'w')
for line in f:
    a = str(line)
    b = a.replace("chr", "")
    file.write(b)
file.close()
