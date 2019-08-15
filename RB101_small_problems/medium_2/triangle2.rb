def valid_triangle?(angles)
  angles.reduce(:+) == 180 && !angles.include?(0)
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if valid_triangle?(angles) == false
  if angles.include?(90)
    :right
  elsif angles.all? { |ang| ang < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
