def triangle(num)
  spaces = num - 1
  stars = 1
  loop do
    puts "#{(' ') * spaces} #{('*') * stars}"
    spaces -= 1
    stars += 1
    break if stars > num
  end
end

def upside_down_triangle(num)
  spaces = 0
  stars = num
  loop do
    puts "#{('*') * stars}#{(' ') * spaces}"
    spaces += 1
    stars -= 1
    break if spaces > num
  end
end
puts triangle(5)
puts upside_down_triangle(5)
