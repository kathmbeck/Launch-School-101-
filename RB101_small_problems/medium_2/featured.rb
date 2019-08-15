#input: integer
#output: integer that is next "featured number" greater than that argument
# Rules:
  # Featured Number (1) odd (2) multiple of 7 (3) each digit only occurs once
# #Algo:
# create a loop that checks adds 1 to input number
# check if that number meets featured number requirements
# break and return that number if so
# otherwise continue increasing by 1


def featured(num)
  loop do
    num += 1
    return num if num.odd? &&
                  num % 7 == 0 &&
                  num.to_s.chars.uniq.size == num.to_s.size
    break if num > 9_876_543_210
  end
  puts 'There is no possible number that fulfills those requirements'
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

featured(9_999_999_999)