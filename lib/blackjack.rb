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
  (deal_card() + deal_card())
end

def hit?(current_total)
  prompt_user()
  get_user_input()
  if 'h'
    current_total += deal_card
  end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
