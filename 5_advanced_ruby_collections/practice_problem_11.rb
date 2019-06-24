arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

result = arr.map do |subarr|
          subarr.select do |integer|
            integer % 3 == 0
          end
        end

p result