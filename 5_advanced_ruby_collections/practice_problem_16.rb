HEXADECIMALS = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f']

def gen_HD(length)
  HEXADECIMALS.sample(length).join
end



def generate_UUID
  puts "#{gen_HD(8)}-#{gen_HD(4)}-#{gen_HD(4)}-#{gen_HD(4)}#{gen_HD(12)}"
end

generate_UUID
