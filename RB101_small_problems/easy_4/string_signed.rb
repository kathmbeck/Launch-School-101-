NUMBERS = {'1'=> 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
           '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0, "-" => -1
          }
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

def string_to_signed_integer(str)
  if str[0] == '-'
    string_to_integer(str.delete('-')) * -1
  else
    string_to_integer(str.delete('+'))
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

###########

# Solution
def string_to_integer_solution(string)
  integer_array = string.chars.map {|character| NUMBERS[character]}
  value = 0
  integer_array.each{|integer| value = 10 * value + integer}
  value
end

def string_to_signed_integer_solution(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

p string_to_signed_integer_solution('4321') == 4321
p string_to_signed_integer_solution('-570') == -570
p string_to_signed_integer_solution('+100') == 100