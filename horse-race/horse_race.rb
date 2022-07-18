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







#ALE
# runner = gets.chomp.capitalize
# puts 'how much would you like to bet?'

# bet = gets.chomp.to_i

# puts "You runner is #{runner}, confirm [y|n]"
# puts 

# 8. display horse name (by index) with bet (optinal)
# 9. sample to randomly display a horse winner
# 10. compute win or loss
# 11. play an end game msg

# puts sample_horse('Black Stallion')