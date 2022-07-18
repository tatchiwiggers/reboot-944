# 1. Define the horses (array de cvalos)
HORSES = ["Joe the Brave", "Black Stalion", "Ronny the Rat", "Tony Macaroni"]
            #    0               1                2                 3
# 2. define user balance
balance = 100

# 3. Print welcome message
puts 'Welcome to tatchi\'s horse race'
puts '-------------------------------'
puts ""
#CYD
# 4. begin loop -: while balance >= 1, he can keep playing
# def sample_horse(horse)
#     winner = HORSES.sample
#     if winner == horse
#         return 'congrats!'
#     else
#         return 'sorry you lose!'
#     end
#     puts winner
# end

#GIOVANNA
# 5. list all running horses starting form 1
HORSES.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
end
# 6. ask user which horse to bet on
puts 'Which horse would you like to bet?'

user_choice_index = gets.chomp.to_i - 1

puts "your choise is #{HORSES[user_choice_index]}"

# p HORSES.length

winner_horse_index = rand(0..HORSES.length)

if user_choice_index == winner_horse_index
    balance += 50
    puts 'You won!!'
else
    balance -=10
    puts 'you lose :('
end
p HORSES[winner_horse_index]

puts "You lost!! SO sorry but the winner was #{HORSES[winner_horse_index]} and your balance is now #{balance}"


#=================================== CODIGO COMPLETO ======================================================

# Define the horses
horses = ["Joe the Brave", "Black Stalion", "Ronny the Rat", "Tony Macaroni"]

# Define the initial user balance
balance = 100

# Display a welcome message
puts "Welcome to the horse race!"
puts "--------------------------"

# Start the loop
# Condition to loop: the user has at least 10 in his balance
while balance >= 10

  # Display the names of the horses that are running, with a number starting from 1
  puts "---------------------"
  puts "Today our horses are:"
  horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end

  # Ask the user which horse he wants to bet on
  puts "Which horse do you want to bet on?"
  print "> "

  # Shift the user choice by -1 to get his horse index
  user_horse_index = gets.chomp.to_i - 1

  # Display the name of the horse that the user bet on
  puts "You chose: #{horses[user_horse_index]}"

  # Run the race: randomly select the winner horse index
  winner_horse_index = rand(0...horses.length)

  # Compute the result: compare the index of the horse of the user with the winner horse index
  if user_horse_index == winner_horse_index

    # If the user won, add 50 to his balance and display the winning message
    balance += 50
    puts "You won! Your balance is now #{balance}€"
  else

    # If the user lost, substract 10 to his balance and display the losing message
    balance -= 10
    puts "You lost! The winner was #{horses[winner_horse_index]} Your balance is now #{balance}€"
  end
end

# Display an exit message
puts "-----------------------------------------"
puts "Thank you for playing! See you next time!"
