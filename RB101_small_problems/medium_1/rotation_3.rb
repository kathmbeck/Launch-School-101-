require 'pry'

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end


def max_rotation(number)
  max_n = -number.to_s.size
  number.to_s.size.times do
    number = rotate_rightmost_digits(number, max_n)
    max_n += 1
  end
  p number
end

p max_rotation(735291) == 321579
# p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

