puts 'Rock Paper Scissors'

options = ['rock', 'paper', 'scissors']

if ARGV[0] == nil
    puts 'Your move?'
    player1 = gets.chomp.downcase
else
    player1 = ARGV[0].downcase
end

puts 'You chose ' + player1
if !options.include?(player1)
    abort 'Invalid option (please use rock, paper or scissors)'
end

player2 = options.sample
puts 'The computer chose ' + player2

if player1 == player2
    puts 'Draw'
elsif (player1 == 'rock' && player2 == 'paper') || (player1 == 'scissors' && player2 == 'rock') || (player1 == 'paper' && player2 == 'scissors')
    puts 'You lose...'
else
    puts 'You win!'
end
