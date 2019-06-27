
# CONSTANTS
INITIAL_MARKER = ' '
HUMAN_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
FIRST_MOVE = 'choose' # (options: 'choose', 'human', 'computer')
VALID_ANSWERS = %w(y n)
MATCH_WIN = 5
BEST_INITIAL_SQUARE = 5

# METHODS:
def prompt(msg)
  puts "=> #{msg}"
end

def display_welcome_message
  prompt "Welecome to the Tic Tac Toe game."
  prompt "The first to win #{MATCH_WIN} games is the Grand Champion."
  prompt "Best of luck!"
  puts "========================================"
end

def display_board_key
  system('clear') || system('cls')
  puts "BOARD KEY:"
  puts "1|2|3"
  puts "-+-+-      You're #{HUMAN_MARKER}."
  puts "4|5|6      Computer is #{COMPUTER_MARKER}."
  puts "-+-+-"
  puts "7|8|9"
  puts ''
  puts "========================================"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  puts " "
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  (1..9).each_with_object({}) do |num, new_board|
    new_board[num] = INITIAL_MARKER
  end
end

def ask_go_first
  choice = ''
  loop do
    prompt "Do you want to go first? ('y' or 'n')"
    choice = gets.chomp.downcase
    break if VALID_ANSWERS.include?(choice)
    prompt "That is not a valid choice."
  end
  choice
end

def choose_first_player
  ask_go_first == 'y' ? 'human' : 'computer'
end

def set_current_player
  if FIRST_MOVE == 'choose'
    choose_first_player
  else
    FIRST_MOVE
  end
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(array, delimiter = ', ', conjunction = 'or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{conjunction} ")
  else
    last_item = "#{delimiter}#{conjunction} " + array.pop.to_s
    array.join(delimiter) + last_item
  end
end

def alternate_player(current_player)
  return 'computer' if current_player == 'human'
  return 'human'    if current_player == 'computer'
end

def valid_integer?(number)
  number.to_i.to_s == number
end

def human_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose an open square: #{joinor(empty_squares(brd))}."
    square = gets.chomp
    break if empty_squares(brd).include?(square.to_i) && valid_integer?(square)
    prompt "Sorry, that's not a valid choice!"
  end
  brd[square.to_i] = HUMAN_MARKER
end

def find_third_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def offensive_move(brd, square)
  WINNING_LINES.each do |line|
    square = find_third_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  square
end

def defensive_move(brd, square)
  WINNING_LINES.each do |line|
    square = find_third_square(line, brd, HUMAN_MARKER)
    break if square
  end
  square
end

def computer_places_piece!(brd)
  square = nil

  square = offensive_move(brd, square)
  if !square
    square = defensive_move(brd, square)
  end
  if !square && empty_squares(brd).include?(BEST_INITIAL_SQUARE)
    square = BEST_INITIAL_SQUARE
  end
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def place_piece!(brd, current_player)
  if current_player == 'human'
    human_places_piece!(brd)
  elsif current_player == 'computer'
    computer_places_piece!(brd)
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(HUMAN_MARKER) == 3
      return 'You'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def tally_wins!(brd, wins)
  if detect_winner(brd) == 'You'
    wins[:human] += 1
  elsif detect_winner(brd) == 'Computer'
    wins[:computer] += 1
  end
  wins
end

def display_tally(wins)
  prompt "First to win #{MATCH_WIN} games wins the match!"
  prompt "You: #{wins[:human]} win(s) v. Computer: #{wins[:computer]} win(s)"
end

require 'io/console'
def continue_game
  print "Press any key to continue."
  STDIN.getch
end

def ask_human_player_continue
  loop do
    puts '========================================'
    break if continue_game
  end
end

def match_over?(wins)
  wins[:human] == MATCH_WIN || wins[:computer] == MATCH_WIN
end

def display_grand_champion(wins)
  if wins[:human] == MATCH_WIN
    prompt "You are the Grand Champion! Time to go pro!"
  elsif wins[:computer] == MATCH_WIN
    prompt "The computer is the Grand Champion. Better luck next time!"
  end
end

def ask_play_again
  answer = ''
  loop do
    prompt "Play again? ('y' or 'n')"
    answer = gets.chomp.downcase
    break if VALID_ANSWERS.include?(answer)
    prompt "That is not a valid response."
  end
  answer
end

def play_again?(answer)
answer == 'y'
end

def display_goodbye_message
  prompt "Thanks for playing Tic Tac Toe! Goodbye!"
end

# MAIN GAME

loop do
  display_welcome_message
  wins = { human: 0, computer: 0 }
  choice = ''
  current_player = set_current_player
  loop do
    board = initialize_board
    loop do
      display_board_key
      display_board(board)
      place_piece!(board, current_player)
      break if someone_won?(board) || board_full?(board)
      current_player = alternate_player(current_player)
    end

    system('clear') || system('cls')
    display_board(board)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      tally_wins!(board, wins)
    else
      prompt "It's a tie!"
    end

    display_tally(wins)
    if match_over?(wins)
      display_grand_champion(wins)
      break
    end

    ask_human_player_continue
  end

  answer = ask_play_again
  break unless play_again?(answer)
  system('clear') || system('cls')
end

display_goodbye_message
