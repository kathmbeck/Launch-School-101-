def palindrome?(element)
  element == element.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?(['a', 'b', 'b', 'a']) == true
puts palindrome?(['a', 'b', 'c', 'd']) == false
p palindrome?([1, 2, 3]) == false
p palindrome?([1, 2, 2, 1]) == true

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false
