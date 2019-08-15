=begin
  input: string
  output: same string with 'number words' converted to digits
  algo:
  create a constant that is an array of word numbers
  split the string into an array of words, iterate through the array using map
  if the word is included in the constant array, return the index # .to_s, else return the word
  join the mutated string together
=end

NUMBERS = %w(zero one two three four five six seven eight nine)

def word_to_digit(str)
 NUMBERS.each do |num|
  str.gsub!(/\b#{num}\b/, NUMBERS.index(num).to_s)
end
str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'