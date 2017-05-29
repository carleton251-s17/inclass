class Thing:
   pass 

def cow(b):
    b = 7

def moo(t):
   t.x = 6;
   t = Thing()
   t.x = 7

def main():
    z = 9
    print(z)
    cow(z)
    print(z)

    print()

    a = Thing()
    a.x = 5
    print(a.x)
    moo(a)
    print(a.x)

main()
