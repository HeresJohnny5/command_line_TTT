def would_you_like_to_play?()
	puts "Would you like to play Tic Tac Toe? "
	user_input = gets.strip.upcase

	if user_input == "YES" || user_input == "Y"
	elsif user_input == "NO" || user_input =="N"
		puts "Maybe next time...Goodbye."
		exit
	else
		puts "Please enter a valid response, 'Yes' or 'No'."
		would_you_like_to_play?()
	end
end

def marker_choice()
	puts "Which character would you like to be, 'X' or 'O'? "
	user_input = gets.strip.upcase

	if user_input == "X"
		puts "Player one is #{user_input} and Player two is O."
	elsif user_input == "O"
		puts "Player one is #{user_input} and Player two is X."
	else
		puts "Please enter a valid character."
		marker_choice()
	end
	user_input
end

def player_two(player_one_marker)
	# player_one_marker is the result of function marker_choice
	if player_one_marker == "X"
		"O"
	else
		"X"
	end
end

def display_board(board)
	# board is ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def player_one_move(board, player_one_marker)
	# board is ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	# player_one_marker is the result of function marker_choice
	puts "Please enter a valid move between the numbers one and nine."
	player_input = gets.strip
	user_input = (player_input.to_i) - 1

	if user_input.between?(0, 8) && board[user_input] == "#{player_input}"
		board[user_input] = "#{player_one_marker}"
		display_board(board)
		# this method call updates the board 
	else
		puts "#{user_input + 1} is a invalid option."
		player_one_move(board, player_one_marker)
		# this method call repeats the function player_one_move
	end
end

def player_two_move(board, player_two_marker)
	# board is ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	# player_two_marker is the result of function player_two
	puts "Please enter a valid move between the numbers one and nine."
	player_input = gets.strip
	user_input = (player_input.to_i) - 1

	if user_input.between?(0, 8) && board[user_input] == "#{player_input}"
		board[user_input] = "#{player_two_marker}"
		display_board(board)
		# this method call updates the board
	else
		puts "#{user_input + 1} is a invalid option."
		player_two_move(board, player_two_marker)
		# this method call repeats the function player_one_move
	end
end

def game_won?(board, marker)
	# board is ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	# marker is either player_one_marker or player_two_marker depending on which player is being passed
	result = false
	winning_combo = [[board[0],board[1],board[2]],
						[board[3],board[4],board[5]],
                        [board[6],board[7],board[8]],
                        [board[0],board[3],board[6]],
                        [board[1],board[4],board[7]],
                        [board[2],board[5],board[8]],
                        [board[0],board[4],board[8]],
                        [board[2],board[4],board[6]]]

    winning_combo.each do |winner|
        if winner.count(marker) == 3
        	puts "#{marker} is the winner"
        	exit
        end
    end
    result
 end

def game_tied?(board)
	# board is ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
	if board.count(" ") == 0
	# !(ttt_board.include?(" "))
		puts "The game is a tie!"
	end
end