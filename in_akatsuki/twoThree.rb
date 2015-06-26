i = 0; n = 0; nums = []

while (i < 100)
	n += 1
	if (n % 2 != 0 && n % 3 != 0) then nums.push n; i += 1 end
end

puts nums
