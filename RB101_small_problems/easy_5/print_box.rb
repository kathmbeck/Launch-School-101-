def print_in_box(string)
  string.slice!(string[76..-1]) if string.length > 76
  length = string.length
  lines = '-'* length
  spaces = ' ' * length
  puts "+-#{lines}-+"
  puts "| #{spaces} |"
  puts "| #{string} |"
  puts "| #{spaces} |"
  puts "+-#{lines}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before. This is a longer string with many many words. So crazy!')


#FURTHER EXPLORATION
def horizontal_rule(string)
  if string.length <= 76
    "+ '-' *#{string.size + 2)} +"
  else
    '-' * (76)
end

def empty_line(string)
  if string.length <= 76
    "|#{' ' * (string.size + 2)}|"


def print_in_box_alt(string)
  empty_line = "|#{' ' * (string.size + 2)}|"
  MAX_WIDTH = 80

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box_alt('To boldly go where no one has gone before.')