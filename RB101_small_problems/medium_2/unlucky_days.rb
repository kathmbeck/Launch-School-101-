#input: year represented as an integer
#output: number of Friday the 13ths rep. as an integer
#Algorithim
  # Iterate through the 13th day of every month and check if its a friday
  # If it is add 1 to a count
  # return the count total

require 'date'

def friday_13th(year)
  friday_13th_count = 0
  1.upto(12).each do |month|
    friday_13th_count += 1 if Date.new(year, month, 13).friday?
  end
  friday_13th_count
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2