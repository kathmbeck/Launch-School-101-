def ascii_value(string)
  return 0 if string.empty?
  string.chars.map {|character| character.ord}.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Algorithim
# Create an array of the string's characters using chars method.
# Map ASCII values onto array
# reduce array to sum of values
# return result