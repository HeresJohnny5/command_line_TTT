def update_board(board_array, position, marker)
	if board_array[position] = "X" || board_array[position] = "O" || board_array[position] = " "
		board_array[position] = marker
	end
		board_array
end

def valid_space?(board_array, position)
	if board_array[position] == "X" || board_array[position] == "O"
		false
	else
		true
	end
end

def game_won?(board_array)
	if [board_array[0], board_array[1], board_array[2]].uniq.length == 1
		true
	elsif [board_array[3], board_array[4], board_array[5]].uniq.length == 1
		true
	elsif [board_array[6], board_array[7], board_array[8]].uniq.length == 1
		true
	elsif [board_array[0], board_array[3], board_array[6]].uniq.length == 1
		true
	elsif [board_array[1], board_array[4], board_array[7]].uniq.length == 1
		true
	elsif [board_array[2], board_array[5], board_array[8]].uniq.length == 1
		true
	elsif [board_array[0], board_array[4], board_array[8]].uniq.length == 1
		true
	elsif [board_array[2], board_array[4], board_array[6]].uniq.length == 1
		true
	else
		false
	end
end