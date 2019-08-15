vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

vehicles_2 = [
  'car', 'CAR', 'TRUCK', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurences(arr)
  hsh = {}
  arr.each do |element|
    hsh[element] = arr.count(element)
  end
  hsh.each {|key, value| puts "#{key} => #{value}" }
end

def count_occurences_no_case(arr)
  hsh = {}
  arr = arr.map(&:downcase)
  arr.each do |element|
    hsh[element] = arr.count(element)
  end
  hsh.each {|key, value| puts "#{key} => #{value}" }
end

def count_occurrences_alt(arr)
  arr.uniq.each do |element|
    puts "#{element} => #{arr.count(element)}"
  end
end



count_occurences(vehicles)
count_occurrences_alt(vehicles)
count_occurences_no_case(vehicles_2)


# input : array of strings
# output : printed hash with the vehicle as a key,
# and the occurences as a value

#Algorithim
 # initialize and empty vehicles hash
 # count the occurences
 # hash[vehicle] = count
 # print the hash to the screen
