require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1...11).to_i
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp()
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
  return first_round
end

def hit?(current_total)
  prompt_user()
  user_input = get_user_input
  if user_input == 's'
  return current_total
  elsif user_input == 'h'
  current_total += deal_card
else
    invalid_command
    hit?(current_total)
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
  hit?(card_total)
end
end
    
