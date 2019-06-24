arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

ordered_array = arr.map do |subarray|
                  subarray = subarray.sort {|a, b| b <=> a}
                end

p ordered_array

