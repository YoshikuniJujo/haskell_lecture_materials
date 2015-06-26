fa = [
	Proc.new { |x| x * 2 },
	Proc.new { |x| x / 2 },
	Proc.new { |x| x ** 2 } ]

ns = fa.map do |f|
	f.call(5)
end

puts ns
