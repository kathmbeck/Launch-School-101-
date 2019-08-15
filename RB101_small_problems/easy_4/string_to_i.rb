NUMBERS = {'1'=> 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}
def string_to_integer(string)
  integer_array = string.chars.map {|character| NUMBERS[character]}
  place_value = 1
  number = 0
  loop do
    number += (integer_array.pop * place_value)
    place_value *= 10
    break if integer_array.empty?
  end
  number
end

#Solution for computation of numeric value
# value = 0
# integer_array.each{|integer| value = 10 * value + integer}

p string_to_integer('4593')
p string_to_integer('4321')
p string_to_integer('234081209348')
p string_to_integer('570')

# FURTHER EXPLORATION

DIGITS = {'0' => 0, '1'=> 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
                'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15}

def hexadecimal_to_integer(string)
  integer_array = string.chars.map {|character| DIGITS[character.upcase]}
  value = 0
  integer_array.each {|integer| value = 16 * value + integer}
  value
end

p hexadecimal_to_integer('4D9f')

