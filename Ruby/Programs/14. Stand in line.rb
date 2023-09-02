# Write a function that takes an array and a number as arguments. 
# Add the number to the end of the array, then remove the first element of the array. 
# The function should then return the updated array.

# next_in_line([5, 6, 7, 8, 9], 1) ➞ [6, 7, 8, 9, 1]
# next_in_line([7, 6, 3, 23, 17], 10) ➞ [6, 3, 23, 17, 10]
# next_in_line([1, 10, 20, 42 ], 6) ➞ [10, 20, 42, 6]
# next_in_line([], 6) ➞ "No array has been selected"

# For an empty array input, return: "No array has been selected"

def next_in_line(arr, num)
	if(arr.length == 0)
		return "No array has been selected"
	else
		arr.push(num)
		arr.delete_at(0)
		return arr
	end
end

puts "Enter array values:"
arr = gets.chomp.split().map{|e| e.to_i}

puts "Enter num:"
num = gets.chomp.to_i

puts "#{next_in_line(arr, num)}"