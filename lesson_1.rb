# num1 = 3
#
# num2 = '5'.to_i
#
# num2 += 8.1056
#
# puts num2

# puts 'Enter miles'
# miles = gets.to_i
# kilos = miles * 1.5
# puts "Distance in kilometers: #{kilos.to_i}"

# puts "Guess a number"
# guessed_number = (rand * 10).to_i
#
# counter = 3
#
# while counter > 0
#     puts "Enter your guess"
#     guess = gets.to_i
#     if guess == guessed_number
#         puts "Got it!"
#         break
#     else
#         puts "Guessed #{guessed_number}"
#         counter -= 1
#         puts "Try again"
#         puts "Tries left #{counter}"
#     end
#     if counter == 0
#         puts "game over"
#     end
# end

str = 'asdfghjkl;'

str.each_char do |sym|
    puts sym
end
