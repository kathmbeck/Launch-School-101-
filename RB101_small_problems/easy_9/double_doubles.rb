def double_number?(num)
  string_number = num.to_s
  return false if string_number.size == 1
  center = string_number.size / 2
  string_number[0..center - 1] == string_number[center..-1]
end

def twice(num)
  if double_number?(num)
    num
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10


#Algorithim
#if double number
#   return number
# else
# #   return number * 2

#   How to check if double number?
#   write a boolean method
#   convert number to string
#   find the center, then use this to compare whether the first half
#   and second half are equal