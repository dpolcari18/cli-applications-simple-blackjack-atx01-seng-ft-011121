require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  player_hand=[]
  player_hand.push(deal_card)
  player_hand.push(deal_card)
  
  card_total=0
  player_hand.each do |card_value|
    card_total+=card_value
  end
  
  display_card_total(card_total)
  return card_total
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  final_total=current_card_total
  command=get_user_input
  if command=="h"
    final_total+=deal_card
  elsif command=="s"
    return current_card_total
  else
    invalid_command
    prompt_user
    get_user_input
  end
  return final_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  current_total=initial_round
  until final_total>21 do
    prompt_user
    final_total=current_total+hit?(current_total)
  end
end_game
end
    
