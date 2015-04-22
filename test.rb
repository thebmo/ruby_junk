x = { turkey: "Large Bird"}

y = { turkey: "Bird"}

combined = {}



x.each {|k, _|

	if x[k] == y[k]
		puts "#{x[k]} == #{y[k]}"
	else
		puts "#{x[k]} != #{y[k]}"
		combined[k] = [x[k], y[k]]
	end

}

puts combined