def substrings_at_start(string)
  substrings = []
  1.upto(string.size) do |length|
    substrings << string.slice(0, length)
  end
 substrings
end

def substrings(string)
  all_substrings = []
  string.size.times do |n|
    all_substrings << substrings_at_start(string[n..(string.size-1)])
  end
  all_substrings.flatten
end

def palindromes(string)
  substrings(string).select do |substring|
    substring.reverse == substring && substring.size > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]