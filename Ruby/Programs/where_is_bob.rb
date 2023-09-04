# Write a function that searches an array of names (unsorted) for the name "Bob" and returns the location in the array. 
# If Bob is not in the array, return -1.
# find_bob(["Jimmy", "Layla", "Bob"]) ➞ 2
# find_bob(["Bob", "Layla", "Kaitlyn", "Patricia"]) ➞ 0
# find_bob(["Jimmy", "Layla", "James"]) ➞ -1
# Assume all names start with a capital letter and are lowercase thereafter (i.e. don't worry about finding "BOB" or "bob").

def find_bob(names)
	if names.include?("Bob")
		return names.find_index("Bob")
	else 
		return -1
	end
end

names = gets.chomp.split()

puts "#{find_bob(names)}"