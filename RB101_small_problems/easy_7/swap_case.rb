def swapcase(str)
  char_array = str.chars.map do |char|
    char.downcase == char ? char.upcase : char.downcase
  end
  char_array.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'




