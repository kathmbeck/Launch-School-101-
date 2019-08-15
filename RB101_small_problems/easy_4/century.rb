def century_number(year)
  if year % 100 == 0
    year/100
  else
    (year/100) + 1
  end
end

def century_suffix(century)

  return 'th' if [11, 12, 13].include?(century.to_i %  100)
  number = century.to_i % 10
  case number
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def century(year)
  century = century_number(year).to_s
  suffix = century_suffix(century)
  century + suffix
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'


# Problem:
#   defentition of century: new century begins in years that end with 01
#   1901- 2000 is the 20th century
#   only after the year 0, should we be concerned with BC time
#   -no, not according to test cases
#   concerned about empty input?
#   returning a different object

# INput: integer
# Output String --century number plus ending
# Rules: new centuries begin in years that end with 01

# Test Cases
#above

# Data Structure
# Use formula to determine century number
#   Use case statement to determine ending based on century number

# Algorthim
# Define method named century that takes a year as an argument.
# Create a formula to determine century number.
# Create case statement to determine ending for number.
# Output string that combines century number and ending.



