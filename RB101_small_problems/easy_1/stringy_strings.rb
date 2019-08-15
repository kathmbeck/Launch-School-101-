def stringy(int, first = 1)
  arr = []
  if first == 1
    int.times do |n|
      arr << (n.odd? ? '0' : '1')
    end
  elsif first == 0
    int.times do |n|
      arr << (n.even? ? '0' : '1')
    end
  end
  arr.join
end


puts stringy(6)
puts stringy(6,0)
puts stringy(6,1)
puts stringy(9, 0)
puts stringy(4, 1)
puts stringy(7)



