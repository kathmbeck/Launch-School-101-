#input : integer n, always odd
#output : display diamond in a n * n grid

# output lines of odd number of stars from 1...n until you reach n
# then output lines of odd number of stars from n...1 until you reach 1
#center output

def diamond(grid_size)
  1.upto(grid_size) do |number|
    puts ('*' * number).center(grid_size) if number.odd?
  end
  (grid_size-1).downto(1) do |number|
    puts ('*' * number).center(grid_size) if number.odd?
  end
end

diamond(1)
diamond(3)
diamond(9)