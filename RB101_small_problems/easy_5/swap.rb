def swap(string)
  word_array = string.split.map do |word|
    word[0], word [-1] = word[-1], word[0]
    end
  word_array.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'



# Problem
#   Take a string and swap the first and last letters of each word.
#   Assumptions--every word contains at least one letters
#             --string will always contain at least one word
#             --each string only includes words and spaces
# inputs: string
# outputs: string
# data structure: array

# Algorithim:
# define method that takes a string as an argument
#   split words and transform string into an array
#   transform array using map, for each word swap the letter at the first position with the last position
#   join the result together to form a new string.