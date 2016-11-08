=begin
	1. Board
	2. Players(X or O)
		If P1 == "X"(Think of case sensativity)
	3. Valid Marker(X or O)
	4. Valid Space
	5. Update board[0..8]
=end

def update_board(board_array, position, marker)
	# Takes the board (as an aray), the position (as an integer for the index position) and a marker (as a string). Conditional seeing if the position and marker equal string "X" or "O" or " ". If the conditional passes true return the marker.
	if board_array[position] = "X" || board_array[position] = "O" || board_array[position] = " "
		board_array[position] = marker
	end
		board_array
end

def valid_space?(board_array, position)
	# Takes the board (as an array), the position (as an integer for the index position). Conditional seeing  if the position equals string "X" or "O". If the conditional passes true return false indicating the spot is taken. If the conditinal is false, return true, indicating the spot is free.
	if board_array[position] == "X" || board_array[position] == "O"
		false
	else
		true
	end
end

def game_won?(board_array)
	# Takes the board (as an array). Conditional sees if what the value is for specific winning combinations. The '.uniq' method deletes any duplication and the '.length' method determines if the conditional passes true or false. The conditional will need to have either three "Xs" or "Os" in order to pass true.
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