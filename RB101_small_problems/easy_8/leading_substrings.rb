def substrings_at_start(string)
  substrings = []
  1.upto(string.size) do |length|
    substrings << string.slice(0, length)
  end
 p substrings
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

#Inputs: string
#Output Array
#Data Structure: loop

#Algorithim
# define a method named "substrings at start" with paramater "string"
# initialize an empty array to fill with substrings
# iterate over a range the size of 0 up to string.size
# => for each iteration slice the string from index 0 and with current iteration
#representing length
# and push to substrings array
#return substrings array


def substrings_at_start_alt(str)
  substrings = []
  str.size.times { |i| substrings << str[0..i] }
  substrings
end

puts substrings_at_start_alt('abc') == ['a', 'ab', 'abc']