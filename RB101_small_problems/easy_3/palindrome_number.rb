def palindrome?(element)
  element == element.reverse
end

def palindromic_number?(integer)
  palindrome?(integer.to_s)
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

puts palindromic_number?(0550) == true
puts palindromic_number?(0121) == false