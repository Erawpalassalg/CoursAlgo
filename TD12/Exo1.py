def ecb(x):
    if x > 1:
        ecb(x//2)
    print ("1" if x%2 == 1 else "0", end="")

ecb(12)