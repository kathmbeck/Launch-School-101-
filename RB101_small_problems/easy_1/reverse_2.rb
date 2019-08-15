 # Algorithim:
# 1. split up the string into an array of words
# 2. transform(map) the words in the array reversing those words that are  >=5 characters
# 3. join together the new array to convert into a string

def reverse_words(sentence)
  words = Array.new
  sentence.split.each do |word|
    word.reverse! if word.length >= 5
    words << word
  end
  words.join(' ')
end

def reverse_words_alt(str)
  arr = str.split.map do |word|
      if word.size >= 5
        word.reverse
      else
        word
      end
    end
  arr.join(' ')
end

#refactored alt solution#

def reverse_words_alt_2(str)
  str.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


puts reverse_words_alt('Professional')          # => lanoisseforP
puts reverse_words_alt('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words_alt('Launch School')         # => hcnuaL loohcS


puts reverse_words_alt_2('Professional')          # => lanoisseforP
puts reverse_words_alt_2('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words_alt_2('Launch School')         # => hcnuaL loohcS
