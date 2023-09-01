#Create a function that takes two numbers as arguments (num, length) and returns an array of multiples of num until the array length reaches length.
#array_of_multiples(7, 5) ➞ [7, 14, 21, 28, 35]
#array_of_multiples(12, 10) ➞ [12, 24, 36, 48, 60, 72, 84, 96, 108, 120]
#array_of_multiples(17, 6) ➞ [17, 34, 51, 68, 85, 102]

puts "Enter a number:"
num = gets.chomp.to_i

puts "Enter the length:"
length = gets.chomp.to_i

def array_of_multiples(num, length) 
    arr = Array.new
    i = 1
    while i <= 5
        arr.push(num*i)
        i =+ 1
    end
end

array_of_multiples(num, length)

arr.each {|n| puts "The number is: #{n}"}