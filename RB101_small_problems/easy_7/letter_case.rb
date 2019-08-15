UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def letter_case_count(string)
  hsh = { lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |char|
    if UPPERCASE.include?(char)
      hsh[:uppercase] += 1
    elsif LOWERCASE.include?(char)
      hsh[:lowercase] += 1
    else
      hsh[:neither] += 1
    end
  end
  hsh
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }



#ALT Solution

def letter_case_count_alt(str)
  { lowercase: str.count('a-z'),
    uppercase: str.count('A-Z'),
    neither: str.count('^A-z')}
end

p letter_case_count_alt('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count_alt('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count_alt('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count_alt('') == { lowercase: 0, uppercase: 0, neither: 0 }


