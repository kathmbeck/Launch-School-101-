def buy_fruit(array)
  fruit_list = []
  array.each do |fruit, quantity|
    quantity.times {fruit_list << fruit }
  end
  fruit_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


#Algorithim
# create a new empty array
# iterate through each subarray using each
#for each subarray add the item at index 1, the number of times listed at index 2
# return new array