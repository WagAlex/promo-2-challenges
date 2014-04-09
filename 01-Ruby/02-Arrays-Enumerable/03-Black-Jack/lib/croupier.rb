require_relative 'black_jack'

def play_game
  #TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card
score = 0

while asking_for_card?(score)
  score += pick_card
end

end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  "Player your score is #{score} "
  "Biatch Bank your score is #{bank}"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  if score <= 21
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    answer = gets.chomp
    decision = (answer == "yes" || answer == "Y")? true : false
else
end
end

def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)

end
