def repeater(string)
  repeated_chars = []
  string.chars.each do |char|
    repeated_chars << char * 2
  end
  repeated_chars.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''


#Solution without use of array
def repeater_2(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
def double_consonants(string)
  result = ''
  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result << char << char
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

