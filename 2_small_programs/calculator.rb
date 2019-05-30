require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def integer?(number)
  number.to_i.to_s == number
end 

def float?(number)
  number.to_f.to_s == number
end 

def valid_number?(number)
  integer?(number) || float?(number)
end

def operation_to_message(op)
  words = case op
          when '1' then'Adding'
          when '2' then 'Subtracting'
          when '3' then 'Multiplying'
          when '4' then 'Dividing'
          end
  words
end

prompt(MESSAGES['en']['welcome'])

name = ''
loop do
  name = gets.chomp
  break unless name.strip.empty?
  prompt(MESSAGES['en']['invalid_name'])
end

prompt("Hi #{name}!")

loop do # main loop
  num1 = ''
  loop do
    prompt(MESSAGES['en']['first_number'])
    num1 = gets.chomp
    break if valid_number?(num1)
    prompt(MESSAGES['en']['invalid_number'])
  end

  num2 = ''
  loop do
    prompt(MESSAGES['en']['second_number'])
    num2 = gets.chomp
    break if valid_number?(num2)
    prompt(MESSAGES['en']['invalid_number'])
  end

  prompt(MESSAGES['en']['operation'])

  operator = ''
  loop do
    operator = gets.chomp
    break if %w(1 2 3 4).include?(operator)
    prompt(MESSAGES['en']['invalid_operator'])
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              num1.to_i + num2.to_i
            when '2'
              num1.to_i - num2.to_i
            when '3'
              num1.to_i * num2.to_i
            when '4'
              num1.to_f / num2.to_f
            end
  prompt("The result is #{result}!")

  prompt(MESSAGES['en']['another_calc'])
  answer = ''

  loop do 
    answer = gets.chomp
    if answer.downcase == 'y'
      break
    elsif answer.downcase == 'n'
      prompt(MESSAGES['en']['goodbye'])
    else 
      prompt(MESSAGES['en']['invalid_calc'])
      next 
    end 
  end 

  system('clear') || system('cls')
  
end


