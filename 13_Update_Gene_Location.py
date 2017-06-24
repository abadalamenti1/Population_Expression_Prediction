# put # in header line manually and then removed manually for ease
f = open("/Users/a-bad0394/mount2/aly/Matrix_eQTL/Gene_Location/YRI_Location.txt", "r")

file = open("/Users/a-bad0394/mount2/aly/Matrix_eQTL/Gene_Location/YRI_Location2.txt", "w")

header = f.readline()
file.write(header)

data = [l for l in f if not l.startswith('#')]
for line in data:
    arr = line.strip().split()
    chrfix = arr[1]
    file.write(arr[0] + "\t" + "chr" + chrfix + "\t" + arr[2] + "\t" + arr[3] + "\n")
file.close()
