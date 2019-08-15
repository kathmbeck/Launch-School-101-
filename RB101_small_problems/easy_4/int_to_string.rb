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

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

