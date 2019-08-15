# input: 3 integers
# output: symbol
# algo:
# check if valid triangle
# sum of two shortest sides
# conditional statement to determine triangle type

def valid_triangle?(s1, s2, s3)
  sides = [s1, s2, s3].sort
  sides[0] + sides[1] > sides[2] && !sides.include?(0)
end


def triangle (side1, side2, side3)
  return :invalid if !valid_triangle?(side1, side2, side3)
  if side1 == side2 && side2 == side3
    :equilateral
  elsif side1 != side2 && side2 != side3
    :scalene
  else
    :isosceles
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid