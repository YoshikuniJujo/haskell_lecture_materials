def recip(x)
	case x
	when Numeric
		1 / x
	when String
		x.reverse
	when TrueClass
		not x
	when FalseClass
		not x
	end
end

puts recip(8)
puts recip("hello")
puts recip(true)
