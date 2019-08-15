ENGLISH_NUMBERS = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
                    5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
                    10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen',
                    14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
                    18 => 'eighteen', 19 => 'nineteen' }

def alphabetic_number_sort(array)
  array.sort_by { |integer| ENGLISH_NUMBERS[integer]}
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

#solution
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort_alt(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end


# inputs = array of integers
# output = sorted array of integers
# data structure: Hash as table

# Algorithim:
# create a constant, hash that pairs integers with English word for each number
# create a method called alphabetic_number_sort that takes an array of integers
# call sort_by method on the array
# block that determines return value to be sorted will look up alphabetic values
# for each integer using contant table
# return sorted array.
