def factorial(num)
	fact = 1

	if (num != 0)
		i=1
		while(i <= num)
			fact = fact*i
			i += 1
		end
	end

	return fact
end

puts "Enter the number to find the factorial:"
num = gets.chomp.to_i

puts "Factorial of #{num} is #{factorial(num)}"