arr = ['10', '11', '9', '7', '8']

arr.sort do |a, b|
  b.to_i <=> a.to_i
end


# Inputs: array
# Outputs: array
# Rules: transform array by descending numeric value
# i.e. 11, 10, 9, 8, 7
# elements should remain strings

# Data Structure: array

# iterate through original array using desctructive sort method
# call sort method with a block and a and b as local variables
# for each element a and b, convert string to integer using to_i method
# compare b to a in order to indicate descending order
# the block will return the value that the array elements should be sorted by.