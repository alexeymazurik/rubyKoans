# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
	

	# fail TriangleError if (a+b) <=c
	
	# case [a, b, c].uniq.size
	# when 1 then :equilateral
	# when 2 then :isosceles
	# else		:scalene

	# 	nil

sizes = [a, b, c].sort

raise TriangleError if sizes[0] + sizes[1] <= sizes[2] 
raise TriangleError if sizes[0] <= 0

case sizes.uniq.size
when 1 then :equilateral
when 2 then :isosceles
else		:scalene
end

 #  abc = [a, b, c].sort!

 #  raise TriangleError if abc[0] <= 0 
 #  raise TriangleError if abc[0] + abc[1] <= abc[2] 

	# if abc.uniq.length == 1
	# 	:equilateral
	# 	elsif abc.uniq.length == 2
	# 		:isosceles
	# 	else
	# 		:scalene
	# end	
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
