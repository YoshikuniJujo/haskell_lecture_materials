def myIf(b, t, e); if b then t else e end end

def div2(n)
	if n.even? then n / 2 else n end
end

def myDiv2(n)
	myIf(n.even?, n / 2, n)
end

def divdiv2(n)
	if n.even? then divdiv2(n / 2) else n end
end

def myDivdiv2(n)
	myIf(n.even?, myDivdiv2(n / 2), n)
end

puts divdiv2(12)

print("div2(12)     : ", div2(12), "\n")
print("div2(7)      : ",div2(7), "\n")

print("myDiv2(12)   : ", myDiv2(12), "\n")
print("myDiv2(7)    : ", myDiv2(7), "\n")

print("divdiv2(12)  : ", divdiv2(12), "\n")

print("myDivdiv2(12): ", myDivdiv2(12), "\n")
