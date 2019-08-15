def get_grade(grade_1, grade_2, grade_3)
  average = (grade_1 + grade_2 + grade_3) / 3
  if average >= 90
    'A'
  elsif average >= 80
    'B'
  elsif average >= 70
    'C'
  elsif average >= 60
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

 # #Algorithim
# #   find the average of the three grades
#   if/else statement with ranges to return letter grade