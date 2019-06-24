arr = [ {a: [1, 2, 3]},
        {b: [2, 4, 6], c: [3, 6], d: [4]},
        {e: [8], f: [6, 10]}
      ]

# return an array which contains only the hashes where all the integers are even
# result is going to be
# [{e: [8], f:[6, 10]}]

# iterate through the array using select in order to select hashes for which the criteria is true
# iterate through hash values, use all method to select for hashes that contain all even integers.

result =  arr.select do |hash|
            hash.all? do |_, value|
              value.all? {|num| num.even?}
          end
        end

p result
