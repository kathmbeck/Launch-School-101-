def alter_string(string)
  string << " rutabaga"
end

def alter_array(array)
  array << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
alter_string(my_string)
alter_array(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
