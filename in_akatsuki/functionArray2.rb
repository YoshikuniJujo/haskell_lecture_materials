def mul2(x) x * 2 end
def div2(x) x / 2 end
def square(x) x * x end

fa = [
	lambda { |x| mul2(x) },
	lambda { |x| div2(x) },
	lambda { |x| square(x) } ]

ns = fa.map { |f| f.call(5) }

puts ns

fa2 = [ mul2, div2, square ]
