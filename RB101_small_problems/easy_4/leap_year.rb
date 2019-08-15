def leap_year?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
end

def julian_leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

puts julian_leap_year?(2016) == true
puts julian_leap_year?(2015) == false
puts julian_leap_year?(2100) == false
puts julian_leap_year?(2400) == true
puts julian_leap_year?(240000) == true
puts julian_leap_year?(240001) == false
puts julian_leap_year?(2000) == true
puts julian_leap_year?(1900) == false
puts julian_leap_year?(1752) == true
puts julian_leap_year?(1700) == true
puts julian_leap_year?(1) == false
puts julian_leap_year?(100) == true
puts julian_leap_year?(400) == true

# leap year definition
#   years evenly divisble by 4 true
#     unless also divisible by 100  false
#       unless also divisible by 400 true
# true for any year greater than 0


# Problem
# Take a year greater than 0 and use a method to determine if its a leap year or not
# Don't worry about empty inputs or different types of input
# inputs: integer
# outputs: boolean
# rules see above

# Data Structure
# comparative statement

# Algorithim
# define method leap_year? that takes a positive integer.
#  return true if year is divisible by 400
#  OR return true if year is divisible by 4 and not by 100


