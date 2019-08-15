def digit_list(num)
  array = num.to_s.chars
  array.map {|str| str.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


#Solution  "Brute Force"

def digit_list_alt(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

puts digit_list_alt(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_alt(7) == [7]                     # => true
puts digit_list_alt(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_alt(444) == [4, 4, 4]             # => true
puts digit_list_alt(404)

