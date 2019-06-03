# constants
VALID_CHOICES = %w(rock paper scissors lizard spock)
VALID_ABBREVIATIONS = %w(ro pa sc li sp)
WINNERS = { rock: ['scissors', 'lizard'],
            paper: ['rock', 'spock'],
            scissors: ['paper', 'lizard'],
            lizard: ['paper', 'spock'],
            spock: ['rock', 'scissors'] }
MATCH_WIN = 5
VALID_ANSWERS = %w(yes no y n)

# methods
def prompt(message)
  puts("=> #{message}")
end

def display_welcome
prompt <<-MSG
  Welecome to Rock Paper Scissors Lizard Spock.
  The first to win #{MATCH_WIN} games wins the match!
  ========================================
  MSG
end

def transform_abbreviation(choice)
  if choice == 'ro'
    choice = 'rock'
  elsif choice == 'pa'
    choice = 'paper'
  elsif choice == 'sc'
    choice = 'scissors'
  elsif choice == 'li'
    choice = 'lizard'
  elsif choice == 'sp'
    choice = 'spock'
  end
  choice
end

def valid_choice?(choice)
  VALID_CHOICES.include?(choice) || VALID_ABBREVIATIONS.include?(choice)
end

def display_invalid_choice
prompt <<-MSG
  That's not a valid choice.
  Enter the whole word or the following abbreviations:
  "#{VALID_ABBREVIATIONS.join(', ')}"
  MSG
end

def retrieve_player_choice
  choice = ''
  loop do
    prompt("Chose one: #{VALID_CHOICES.join(', ')}.")
    prompt("You may enter the first two letters.")
    choice = gets.chomp.downcase
    if valid_choice?(choice)
      break
    else
      display_invalid_choice
    end
  end
  choice = transform_abbreviation(choice)
end

def win?(first, second)
  WINNERS[first.to_sym].include?(second)
end

def display_choices(choice, computer_choice)
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won! :)")
  elsif win?(computer, player)
    prompt("Computer won! :(")
  else
    prompt("It's a tie!")
  end
end

def tally_wins(player, computer, wins)
  if win?(player, computer)
    wins[:player] += 1
  elsif win?(computer, player)
    wins[:computer] += 1
  end
  wins
end

def display_tally(wins)
  prompt("Player: #{wins[:player]} wins v. Computer: #{wins[:computer]} wins")
end

def player_continue_response
  loop do
    prompt('========================================')
    prompt("Press return to play the next round.")
    continue = gets
    break if continue == "\n"
  end
end

def game_over?(wins)
  wins[:player] == MATCH_WIN || wins[:computer] == MATCH_WIN
end

def display_match_winner(wins)
  prompt('========================================')
  if wins[:player] == MATCH_WIN
    prompt("You won the match! You are the champion!")
    prompt("You won  #{wins[:player]} to #{wins[:computer]}.")
  elsif wins[:computer] == MATCH_WIN
    prompt("The computer won the match. So sad, too bad.")
    prompt("The computer won  #{wins[:computer]} to #{wins[:player]}.")
  end
end

def valid_play_again_answer?(answer)
  VALID_ANSWERS.include?(answer)
end

def display_invalid_answer
  prompt('That is not a valid response.')
  prompt("Please enter 'yes,' 'no,' 'y,' or 'n' only.")
end

def retrieve_play_again
  answer = ''
  prompt('Do you want to play again?')
  loop do
    answer = gets.chomp.downcase
    if valid_play_again_answer?(answer)
      break
    else
      display_invalid_answer
    end
  end
  answer
end

def play_again?(answer)
  answer == 'no' || answer == 'n'
end


def display_goodbye
  prompt("Thanks for playing Rock Paper Scissors Lizard Spock! Goodbye!")
end

# main code
display_welcome

loop do
  wins = { player: 0, computer: 0 }

  loop do
    choice = retrieve_player_choice
    computer_choice = VALID_CHOICES.sample

    display_choices(choice, computer_choice)
    display_result(choice, computer_choice)

    tally_wins(choice, computer_choice, wins)
    display_tally(wins)

    break if game_over?(wins)
    player_continue_response
    system('clear') || system('cls')
  end

  display_match_winner(wins)

  play_again_answer = retrieve_play_again
  break if play_again?(play_again_answer)
  system('clear') || system('cls')
end

display_goodbye
