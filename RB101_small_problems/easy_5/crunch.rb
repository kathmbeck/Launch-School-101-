def crunch(string)
  crunched_characters = []
  string.chars.each do |char|
    crunched_characters << char unless crunched_characters.last == char
  end
  crunched_characters.join
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''


# Input: string
# Output: new string
# Rules: remove consecutive duplicate characters without using squeeze method
# Data Structure: array

# Algorithim:
#   define a method named crunch that takes paramater string
#   create empty "crunched_characters" array
#   convert original string into an array of characters
#   iterate over array(each), using if/else statement
#     add each character to crunched characters array,
#     unless that charcter equals the last character of the array.
#   join crunched_characters together to form string.

# #Solution Note:
# can also use index to track position in string
# adding to new string unless string[index] = string[index + 1]

