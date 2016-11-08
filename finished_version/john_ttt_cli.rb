require_relative "john_ttt_functions.rb"

would_you_like_to_play?()

player_one_marker = marker_choice()
player_two_marker = player_two(player_one_marker)

board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
display_board(board)

player_one_move(board, player_one_marker)
player_two_move(board, player_two_marker)

player_one_move(board, player_one_marker)
player_two_move(board, player_two_marker)

player_one_move(board, player_one_marker)
game_won?(board, player_one_marker)
player_two_move(board, player_two_marker)
game_won?(board, player_two_marker)

player_one_move(board, player_one_marker)
game_won?(board, player_one_marker)
player_two_move(board, player_two_marker)
game_won?(board, player_two_marker)

player_one_move(board, player_one_marker)
game_won?(board, player_one_marker)

game_tied?(board)