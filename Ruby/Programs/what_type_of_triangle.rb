puts "Enter the sides of triangle:"
sides = gets.chomp.split().map{|e| e.to_i}

def triangle(sides)
	if(sides.length > 3 or (sides[0]+sides[1]) <= sides[2] or (sides[1] + sides[2]) <= sides[0] or (sides[2] + sides[0]) <= sides[1])
		return "Not a triangle"
	elsif(sides[0] == sides[1] and sides[1] == sides[2])
		return "Equilateral Triangle"
	elsif(sides[0] == sides[1] or sides[1] == sides[2] or sides[2] == sides[0])
		return "Isoceles Triangle"
	else
		return "Scalene Triangle"
	end
end 

puts "#{triangle(sides)}"