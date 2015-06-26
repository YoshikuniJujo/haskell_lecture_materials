def div23 n
	if n.even? then div23 (n / 2)
	elsif n % 3 == 0 then div23 (n / 3)
	else n end
end

puts div23(666)

def not23(a, b, c)
	if a.even? then b
	elsif n % 3 then c
	else a end
end

def div23_2 n
	not23(n, div23_2(n / 2), div23_2(n / 3))
end

puts div23_2(666)

def pickOdd(a, b)
	if a.even? then b else a end
end

def div2(n)
	pickOdd(n, div2(n))
end
