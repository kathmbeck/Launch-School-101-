VOWELS = "AEIOUaeiou"

def remove_vowels(array)
  array.map do |string|
    string.delete(VOWELS)
  end
end

#alternative solution
def remove_vowels_alt(array)
  array.map do |string|
    string.chars.select do |letter|
      !['a', 'e', 'i', 'o', 'u'].include?(letter.downcase)
    end.join
  end
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

puts remove_vowels_alt(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels_alt(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels_alt(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# input: array
# output: modified array
# data structure: array, mpa  method

# Algorthim
# create a VOWELS constant
# create a method called remove_vowels with paramater array
# iterate through array using map method,
#   for each string, delete vowel characters using contant
  # return transformed array
