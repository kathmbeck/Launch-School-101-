# Original Question

SQM_TO_SQFT = 10.7639
SQFT_TO_SQIN = 144
SQFT_TO_SQCM = 929.03

puts "Enter the length of the room in meters:"
length_meters = gets.to_f

puts "Enter the width of the room in meters:"
width_meters = gets.to_f

square_meters = (length_meters * width_meters).round(2)
square_feet = (square_meters * SQM_TO_SQFT).round(2)

puts "The area of the room is #{square_meters}" + \
     " square meters (#{square_feet} square feet)."


# Further Exploration

puts "Enter the length of the room in feet:"
length_feet = gets.to_f

puts "Enter the width of the room in feet:"
width_feet = gets.to_f

square_feet = (length_feet * width_feet).round(2)
square_inches = (square_feet * SQFT_TO_SQIN).round(2)
square_cm = (square_feet * SQFT_TO_SQCM).round(2)

puts  "The area of the room is #{square_feet} square feet " + \
      "(#{square_inches} square inches or #{square_cm} square centimeters)."