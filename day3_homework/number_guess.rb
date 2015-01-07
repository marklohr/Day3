puts "Player 1, what is your name?"
name1 = gets.chomp
puts "Player 1 is #{name1}!"
puts "Player 2, what is your name?"
name2 = gets.chomp
puts "Player 2 is #{name2}!"

puts "Let's play Tic Tac Toe."


# Draw a board
# Asks for user to pick a location
# Draws an X in said location
# Asks next user to pick a location
# Draws an O in said location
# Repeat until 3 in a row/diagonal

board = [
	[0,0,0],
	[0,0,0],
	[0,0,0]
]

def draw_board board, playername
	# board[0][0] == 0 ? "" : "X"
	puts playername
	puts "#{draw_space(board[0][0])}|#{draw_space(board[0][1])}|#{draw_space(board[0][2])}"
	puts '-----'
	puts "#{draw_space(board[1][0])}|#{draw_space(board[1][1])}|#{draw_space(board[1][2])}"
	puts '-----'
	puts "#{draw_space(board[2][0])}|#{draw_space(board[2][1])}|#{draw_space(board[2][2])}"

end

def draw_space board_space
	if board_space == 0
		' '
	elsif board_space == 1
		'X'
	elsif board_space == 2
		'O'
	end

	# return "hey Ryan!"
	# "hey Ryan!" - you do not need the return!
	# puts "Hey"
	# board_space + " you're cool! "
end

def pick_location board, player
	puts "Pick a location (1-9):"
	location = gets.chomp.to_i
	if location == 1
		board[0][0] = player
	elsif location == 2
		board[0][1] = player
	elsif location == 3
		board[0][2] = player
	elsif location == 4
		board[1][0] = player
	elsif location == 5
		board[1][1] = player
	elsif location == 6
		board[1][2] = player
	elsif location == 7
		board[2][0] = player
	elsif location == 8
		board[2][1] = player
	elsif location == 9
		board[2][2] = player
	end
end

# puts draw_space(board[0][1])
# 10.times do
# 	draw_board
# end
while true
	player = 1
	draw_board(board, name1)
	pick_location(board, player)
	
	player = 2
	draw_board(board, name2)
	pick_location(board, player)
	# parenthesis are not necessary
end

# [12,3,4,5].each do |number|
# 	puts number
# end


