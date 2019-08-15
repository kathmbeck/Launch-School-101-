def fizzbuzz(first, last)
  first.upto(last).each do |number|
    if number % 3 == 0 && number % 5 == 0
      print "FizzBuzz"
    elsif number % 3 == 0
      print "Fizz"
    elsif number % 5 == 0
      print "Buzz"
    else
      print number
    end
    print ", "
  end
end


fizzbuzz(1, 15)

# 1, 2, Fizz, 4, Buzz, Fizz, 7, 8,
# Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Algorithim
# #iterate through range
# if/else statment
#   if divisible by 3 and 5 --> FizzBuzz
#   elsif divisibile by 3 --Fizz
#   elsif divisble by 5 --Buzz
#   else print number

#Solution

def fizzbuzz_alt(start_number, end_number)
  result = []
  start_number.upto(end_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 3 == 0
    'Fizz'
  when number % 5 == 0
    'Buzz'
  else
    number
  end
end

fizzbuzz_alt(1, 15)