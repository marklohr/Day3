random_num = rand(1..100)
counter = 0
@game_on = true


puts "Let's play Guess the Number!  You have 5 attempts."
puts "Please pick a number beteen 1 and 100."

def num_game random_num

puts "What is your guess?"
guess = gets.chomp.to_i


if guess == random_num
	puts "Congrats, you got it!"
	@game_on = false

	
elsif guess < random_num
	puts "You are too low."
elsif guess > random_num
	puts "You are too high."
end
end

while counter < 5 && @game_on
	num_game(random_num)
	counter += 1 



end
