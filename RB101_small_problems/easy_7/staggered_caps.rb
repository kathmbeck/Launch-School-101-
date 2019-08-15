def staggered_case(string)
  staggered_string = ''
  string.chars.each_with_index do |char, index|
    staggered_string << (index.even? ? char.upcase : char.downcase)
  end
  staggered_string
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# #Algorithim
# initialize empty string to store characters
# split string into an array using characters method
# iterate over each character and index
# if the index is even, push an uppercase letter to the new string
#   if odd, push a lowercase letter
# return new string

#FURTHER EXPLORATION

def staggered_case_alt(string, even_odd)
  staggered_string = ''
  if even_odd == 'odd'
    string.chars.each_with_index do |char, index|
      staggered_string << (index.odd? ? char.downcase : char.upcase)
    end
  else
    string.chars.each_with_index do |char, index|
      staggered_string << (index.even? ? char.downcase : char.upcase)
    end
  end
  staggered_string
end

puts staggered_case_alt('I Love Launch School!', 'odd') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case_alt('ALL_CAPS', 'even') == 'aLl_cApS'
puts staggered_case_alt('ALL_CAPS', 'odd') == 'AlL_CaPs'
puts staggered_case_alt('ignore 77 the 444 numbers', 'odd') == 'IgNoRe 77 ThE 444 NuMbErS'

#Staggered Case Part 2

def staggered_case_2(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if !('a'..'z').include?(char.downcase)
      result += char
    elsif need_upper
      result += char.upcase
      need_upper = !need_upper
    else
      result += char.downcase
      need_upper = !need_upper
    end
  end
  result
end

puts staggered_case_2('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case_2('ALL CAPS') == 'AlL cApS'
puts staggered_case_2('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
