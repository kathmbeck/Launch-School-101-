require 'pry'

STRING_NUMBERS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
  integer_array = []
  string = ''
  loop do
    string.prepend(STRING_NUMBERS[integer % 10])
    integer = (integer - integer % 10) / 10
    break if integer == 0
  end
  string
end

def signed_integer_to_string(integer)
  if integer > 0
    integer_to_string(integer).prepend('+')
  elsif integer < 0
    integer_to_string(integer.abs).prepend('-')
  else
    integer_to_string(integer)
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# Solution

def signed_integer_to_string_solution(integer)
  case integer <=> 0
    when -1 then  "-#{integer_to_string(-integer)}"
    when +1 then  "+#{integer_to_string(integer)}"
    else           integer_to_string(integer)
  end
end

p signed_integer_to_string_solution(4321) == '+4321'
p signed_integer_to_string_solution(-123) == '-123'
p signed_integer_to_string_solution(0) == '0'

# Refactored to shorter method

def signed_integer_to_string_alt(integer)
  sign = ['', '+', '-'][num <=> 0]
  sign + integer_to_string(integer.abs)
end