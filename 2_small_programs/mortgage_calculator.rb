require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_messages.yml')

# methods
def prompt(message_key)
  message = MESSAGES[message_key]
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

def valid_loan?(loan_amount)
  valid_number?(loan_amount) && loan_amount.to_f > 0
end

def valid_apr?(apr)
  valid_number?(apr) && apr.to_f > 0
end

def valid_duration?(duration)
  integer?(duration) && duration.to_i > 0
end

def calculate_monthly_interest_rate(apr)
  apr.to_f / 1200
end

def calculate_months(years)
  years.to_i * 12
end

def retrieve_loan_amount
  loan_amount = ''
  loop do
    prompt('obtain_amount')
    loan_amount = gets.chomp.delete('$').delete(',')
    break if valid_loan?(loan_amount)
    prompt('invalid_loan_amount')
  end
  loan_amount
end

def retrieve_apr
  apr = ''
  loop do
    prompt('obtain_apr')
    apr = gets.chomp.delete('%')
    break if valid_apr?(apr)
    prompt('invalid_apr')
  end
  apr
end

def retrieve_years
  years = ''
  loop do
    prompt('obtain_duration')
    years = gets.chomp
    break if valid_duration?(years)
    prompt('invalid_duration')
  end
  years
end

def calculate_monthly_payment(loan_amount, apr, years)
  loan_amount = loan_amount.to_f
  monthly_interest_rate = calculate_monthly_interest_rate(apr)
  months = calculate_months(years)
  divisor = (1 - (1 + monthly_interest_rate)**-months)
  loan_amount * (monthly_interest_rate / divisor).round(2)
end

def valid_new_calc_answer?
  answer.downcase == 'y' || answer.downcase == 'n'
end 

def retrieve_new_calc
  prompt('calculate_again')
  answer = ''
  loop do
    answer = gets.chomp
    break if valid_new_calc_answer? 
    prompt('invalid_y_n')
  end
  answer
end

def play_again?(answer)
  answer == 'y'
end 

# Main Code
prompt('welcome')

loop do
  loan_amount = retrieve_loan_amount
  apr = retrieve_apr
  years = retrieve_years

  monthly_payment = calculate_monthly_payment(loan_amount, apr, years)
  puts "Your monthly payment is $#{monthly_payment}!"

  answer = retrieve_new_calc
  break unless play_again?(answer)
  system('clear') || system('cls')
end

prompt('goodbye')
