# PSEUDO CODE
# 1. perguntar ao usuario qual numero ele quer inputar
# 2. guardar esse numbero em uma variavel (gets.chomp)
# 3. perguntar ao usuario qual numero ele quer inputar
# 4. salva esse numero
# 5. pergunta qual tipo de operação ele quer executar
# 6. retornar o resultado

require_relative 'calculator'

answer = 'y'

# until answer!= 'y'
# while answer == 'y'
# while answer != 'n'
until answer == 'n'
    puts 'Enter a first number'
    first_number = gets.chomp.to_i

    puts 'Enter a second number'
    second_number = gets.chomp.to_i

    puts 'what operator would you like to use?'
    operator = gets.chomp

    puts "Your result is: #{calculate(first_number, second_number, operator)}"

    puts 'would you like to calculate again? [y|n]'
    answer = gets.chomp
end