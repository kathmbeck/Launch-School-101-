def sequence(length, num)
 array = []
 1.upto(length) do |count|
  array << num * count
end
  array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []