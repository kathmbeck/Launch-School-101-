def short_long_short(string1, string2)
  new_string = ''
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

# # PEDAC

# Problem:
#   definition of shortest string
#   what if the strings are the same length--can assume different lengths
#   if one of the strings is       empty? print only string provided
#     ignore case?

# Inputs: two "strings"
# Output: one string

# Rules: Determine shorter string
# Combine two strings in following pattern: shorter, longer, shorter

# Data Structure/Algorthim
# string

# Algorithim
#   Define method named short_long_short
#   that takes two arguments string 1 and string 2
#   find length of string 1
#   find length of string 2
#   write if else statement comparing string length
#   write output based on result as final line to return


