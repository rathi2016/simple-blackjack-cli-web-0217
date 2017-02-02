def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  # code #deal_card here
  Random.rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  value = gets.chomp
  return value
  # code #get_user_input here
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"

end

def initial_round
  sum = 0
  2.times do
    sum += deal_card

  end

 display_card_total(sum)
  return sum
  # code #initial_round here
end


def hit?(total)
  prompt_user
  ans  = get_user_input
  if ans == 's'
    return total
  elsif ans == 'h'
    total += deal_card
    return total
  else
    invalid_command
  end

  # code hit? here
end

def invalid_command
  puts  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  card_sum = initial_round
 until card_sum > 21 do
   hit = hit?(card_sum)

    if  hit.is_a?(Integer)
      card_sum = hit
      puts "Your cards add up to #{card_sum}"
    end
    return end_game(card_sum) if card_sum > 21

  end

end
