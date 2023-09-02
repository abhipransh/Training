# Create a function that takes two lists of numbers sorted in ascending order and returns an array of numbers which are common to both the input arrays.
# common_elements([-1, 3, 4, 6, 7, 9], [1, 3]) ➞ [3]
# common_elements([1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10]) ➞ [1, 3, 4, 7]
# common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 4, 5]) ➞ [1, 2, 4, 5]
# common_elements([1, 2, 3, 4, 5], [10, 12, 13, 15]) ➞ []
# Lists are sorted.Try doing this problem with O(n + m) time complexity.

def common_elements(arr1, arr2)
	ans = []
	idx1 = 0
	idx2 = 0
	while idx1 < arr1.size and idx2 < arr2.size
		if arr1[idx1] < arr2[idx2]
			idx1 += 1
		elsif arr1[idx1] > arr2[idx2]
			idx2 += 1
		else
			ans.push(arr1[idx1])
			idx1 += 1
			idx2 += 1
		end
	end
	return ans
end

puts "Enter first array:"
arr1 = gets.chomp.split().map{|e| e.to_i}
puts "Enter second array:"
arr2 = gets.chomp.split().map{|e| e.to_i}

puts "The common elements are #{common_elements(arr1, arr2)}"