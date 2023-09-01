puts "Enter the number to find the factorial:"
num = gets.chomp.to_i

fact = 1

if (num == 0)
	puts "Error! Could not find the factorial"
else
	i=1
	while(i<=num)
		fact=fact*i
		i+=1
	end
end
		puts "factorial of #{num} is #{fact}"