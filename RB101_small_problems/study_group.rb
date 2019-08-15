#input: string
#output : integer (representing the character repeated most)
#Algorithim
#convert the string to an array of characters
# iterate through the string,
  # identify if the charcter is a number
  #using the count method to return the number of
  #times a particular character appears in the string
# store that value in variable "count" if it is greater than what is currently stored.


# def re_letter(str)
#   count = 0
#   num = nil
#   str.chars.each do |char|
#     if char.to_i.to_s == char && str.count(char) > count
#       count = str.count(char)
#       num = char.to_i
#     end
#   end
#     num
#   end

  def re_letter(str)
  arr = str.gsub(/\D/, '').chars
  return nil if arr.empty?
  hash = Hash.new(0)
  arr.each { |char| hash[char] += 1 }
  max_pair = hash.max_by { |_, v| v }
  max_pair[0].to_i
end


p re_letter('There isn\' any number here!') == nil
p re_letter('%^&*()!') == nil
p re_letter('111222333') == 1
p re_letter('1234335521444') == 4
p re_letter('') == nil
p re_letter('011-555-333-23') == 3
p re_letter('1') == 1
p re_letter('444352893599119') == 9


# Write method scramble(str1,str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
#
# Only lower case letters will be used (a-z). No punctuation or digits will be included.


#input: two strings
#output: boolean

#

# def scramble(str1,str2)
#   str1.count(str2) == str2.length
# end

# # def scramble(str1, str2)
# #   str_clone = str1.clone
# #   str2.chars.each do |char|
# #     return false unless str_clone.include?(char)
# #     str_clone.slice!(char)
# #   end
# #   true
# # end



# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true