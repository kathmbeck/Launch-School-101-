def sum(int)
  char_array = int.to_s.chars
  char_array.map {|char| char.to_i}.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
