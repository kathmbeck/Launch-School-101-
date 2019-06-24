def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
    end
  return true
end

p dot_separated_ip_address?("234.34.219.12")
p dot_separated_ip_address?("234.34.219")
