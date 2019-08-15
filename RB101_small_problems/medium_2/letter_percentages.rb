def letter_percentages(string)
  letter_case = {lowercase: 0, uppercase: 0, neither: 0}
    string.chars.each do |char|
      if char.downcase == char && ('a'..'z').include?(char)
        letter_case[:lowercase] += 1
      elsif char.upcase == char && ('A'..'Z').include?(char)
        letter_case[:uppercase] += 1
      else
        letter_case[:neither] += 1
      end
    end
   letter_case.each do |category, num|
      total = string.size
      letter_case[category] = ((num*100).to_f/total).round(2)
    end
  p letter_case
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percentages('abcdefGHI')

#solve using count

def letter_percent(string)
  letter_case = Hash.new
  length = string.length
  letter_case[:lowercase] = (string.count('a-z').to_f/length*100).round(2)
  letter_case[:uppercase] = (string.count('A-Z').to_f/length*100).round(2)
  letter_case[:neither] = (string.count('^A-Za-z').to_f/length*100).round(2)
  p letter_case
end

p letter_percent('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percent('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percent('123') == { lowercase: 0, uppercase: 0, neither: 100 }
p letter_percent('abcdefGHI')
