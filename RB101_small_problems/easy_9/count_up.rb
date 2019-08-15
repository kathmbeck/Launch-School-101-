def sequence(integer)
  array = []
  if integer > 0
    integer.times do |n|
      array << n + 1
    end
  else integer < 0
    integer.abs.times do |n|
      array << (n - 1)
    end
  end
  array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

# Further Exploration
p sequence(-5) == [-1, -2, -3, -4, -5]
p sequence(-3) == [-1, -2, -3]
p sequence(-1) == [-1]
p sequence(0) == []