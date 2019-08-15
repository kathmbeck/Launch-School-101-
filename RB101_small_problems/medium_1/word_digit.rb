#input: string
# Algo:
  # split the string into an array of words
  #iterate through the array using map
  #use hash to convert number words to digits
  #use join to convert array to string
#output : modified string

NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five',
          'six', 'seven', 'eight', 'nine']

def word_to_digit(string)
  NUMBERS.each do |number|
  string.gsub!(/\b#{number}\b/, NUMBERS.index(number).to_s)
end
string
end




p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
