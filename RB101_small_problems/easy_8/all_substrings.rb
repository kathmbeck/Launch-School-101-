def substrings_at_start(string)
  substrings_array = []
  1.upto(string.size - 1) do |index|
    substrings << string[0..index]
  end
  substrings_array
end

def substrings(string)
  all_substrings = []
  string.size.times do |i|
    all_substrings << substrings_at_start(string[i..-1])
  end
  p all_substrings
end

# #Algorithim
#   define method substrings that takes a string as an argument
#   apply substrings at start method to string
#   slice/delete character at index 0
#   loop until string is empty
#   return new array of substrings

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
