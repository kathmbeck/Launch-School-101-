# You are given an array (with a length of at least 3 elements) containing integers.
# The array is either entirely comprised of odd integers
# or entirely comprised of even integers except for a single outlier.
# Write a method that takes the array as an argument
# and returns a string with this outlier integer and whether it is even or odd.
def outlier_integer(arr)
  if arr.count(&:odd?) == 1
    outlier = 'odd'
    num = arr.find(&:odd?)

  else
    outlier = 'even'
    num = arr.find(&:even?)
  end
  "#{num} is the only #{outlier} number."
end

def outlier_integer(array)
  even, odd = array.partition { |num| num.even? }
  return "#{even[0]} is the only even number." if even.size == 1
  return "#{odd[0]} is the only odd number." if odd.size == 1
end

p outlier_integer([2, 4, 0, 100, 4, 11, 2602, 36]) == "11 is the only odd number."
p outlier_integer([160, 3, 1719, 19, 11, 13, -21]) == "160 is the only even number."


# You are going to be given an array of integers. Find the index where the sum
# of the integers to the left of that index is equal to the sum of the integers
# to the right of that index.
# If there is no index where this is true, return -1. If there are multiple
# indices where this is true, return the first one

def equal_split(array)
  array.each_with_index do |num, idx|
    left_sum = array.slice(0..idx).reduce(:+) - num
    right_sum = array.slice(idx..-1).reduce(:+) - num
    left_sum = 0 if left_sum == nil
    right_sum = 0 if right_sum == nil
    return idx if left_sum == right_side_sum
  end
  -1
end

p equal_split([1,2,3,4,3,2,1]) == 3
p equal_split([1,100,50,-51,1,1]) == 1
p equal_split([20,10,-80,10,10,15,35]) == 0
p equal_split([3, 5, 6, 7, 19]) == -1

#Given an integer n, find the maximal number you can obtain by
#deleting exactly one digit of the given number.

def delete_number(n)
  all_digits = n.to_s.chars
  possible_numbers = []
  all_digits.each_with_index do |_, idx|
    digits_copy = all_digits.clone
    digits_copy.slice!(idx)
    possible_numbers << digits_copy.join.to_i
  end
  possible_numbers.max
end


def delete_number_alt(n)
  all_digits = n.to_s.chars
  possible_numbers = all_digits.combination(all_digits.size - 1).to_a
  possible_numbers.max.join.to_i
end

p delete_number(152) == 52
p delete_number(1001) == 101
p delete_number_alt(152) == 52
p delete_number_alt(1001) == 101

# Write a method that takes in a number and returns a string, placing
# a dash in between odd digits.

# input: integer
# output: string of those integers with dashes b/w odd digits
# rule: dash inserted when two odd digits occur consecutively
# Algorithim
# Use digits method to convert to array of digits, call reverse method
# initalize an empty string to store return value
# Iterate through the array of digits, use a conditional statement:
  # even, append the string with that number.to_s
  # odd and previous number was even, append number.to_s
  # odd and the previous number was odd, append "-" and number.to_s
#return that string

def dasherizer(num)
  array = []
  num.digits.reverse.each do |digit|
    if digit.even?
      array << digit
    elsif digit.odd? && (array.last == nil || array.last.even? )
      array << digit
    elsif digit.odd? && array.last.odd?
      array << '-' << digit
    end
  end
  array.join
end

def dasherizer(num)
  arr = num.to_s.chars
  arr.map.with_index do |digit, i|
    digit << '-' if digit.to_i.odd? && arr[i + 1].to_i.odd?
    digit
  end.join
end


p dasherizer(2112) == '21-12'
p dasherizer(201105742) == '201-105-742'
p dasherizer(123456789) == '123456789'
p dasherizer(21121) == '21-121'


# Given an array of integers and a target, return indices of the two numbers such that they add up to the target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

#input: array of numbers, target number
#output: array of indices
#Rules: the two indices returne are those of the numbers that add up to the target
#iterate through the array using the each_with_index method
#for each number, add it together with each number, looping through
#the the rest of the array using the upto method
# compare each sum to the target number and break out of the loops if
# the sum is equal


def two_sum(arr, target)
  arr.each_with_index do |num, idx|
    (idx+1).upto(arr.size-1) do |index|
      return [idx, index] if num + arr[index] == target
    end
  end
end

def two_sum(arr, n)
  arr.each_with_object({}).with_index do |(num, hash), i|
    match = n - num
    return [hash[match], i] if hash[match]
    hash[num] = i
  end
end

p two_sum([2, 7], 9) == [0, 1]
p two_sum([4, 6, 3, 1, 4, 9], 8) == [0, 4]
p two_sum([0, 9, 10, 2, 7, 5], 15) == [2, 5]


ALPHABET_ARR = ('a'..'z').to_a

def count_score(word)
  word.chars.reduce(0) do |acc, char|
    letter_score = ALPHABET_ARR.index(char) + 1
    acc + letter_score
  end
end

def alphabet_score(str)
  highest_score = 0
  highest_scoring_word = ''
  str.split.each do |word|
    word_score = count_score(word)
    if word_score > highest_score
      highest_score = word_score
      highest_scoring_word = word
    end
  end
  highest_scoring_word
end

def alphabet_score(str)
  str.split.max_by { |word| count_score(word) }
end



