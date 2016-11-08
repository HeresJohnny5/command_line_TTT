require_relative 'tic_tac_toe_functions.rb'
require 'minitest/autorun'

class TestBoard < Minitest::Test
	def test_update_new_board_with_X_at_first_position_top_left
		board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
		assert_equal(["X", " ", " ", " ", " ", " ", " ", " ", " "], update_board(board, 0, "X"))
	end

	def test_update_new_board_with_O_at_third_position_top_right
		board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
		assert_equal(["X", " ", "O", " ", " ", " ", " ", " ", " "], update_board(board, 2, "O"))
	end

	def test_update_new_board_with_X_at_sixth_position_middle_right
		board = ["X", " ", "O", " ", " ", " ", " ", " ", " "]
		assert_equal(["X", " ", "O", " ", " ", "X", " ", " ", " "], update_board(board, 5, "X"))
	end

	def test_update_new_board_with_O_at_seventh_position_lower_left
		board = ["X", " ", "O", " ", " ", "X", " ", " ", " "]
		assert_equal(["X", " ", "O", " ", " ", "X", "O", " ", " "], update_board(board, 6, "O"))
	end

	def test_lower_middle_is_empty_and_valid
		board = ["X", " ", "O", " ", " ", "X", "O", " ", " "]
		assert_equal(["X", " ", "O", " ", " ", "X", "O", " ", " "], update_board(board, 7, " "))
	end
end

class TestValidSpace < Minitest::Test
	def test_top_left_is_valid_and_empty_returns_false
		board = ["X", "X", "O", " ", " ", " ", "O", " ", " "]
		assert_equal(false, valid_space?(board, 0))
	end

	def test_middle_left_is_valid_and_empty_returns_true
		board = ["X", "X", "O", " ", " ", " ", "O", " ", " "]
		assert_equal(true, valid_space?(board, 4))
	end

	def test_top_middle_is_valid_and_empty_returns_false
		board = [" ", "O", " ", " ", "X", "X", "O", " ", " "]
		assert_equal(false, valid_space?(board, 1))
	end

	def test_top_right_is_valid_and_empty_returns_true
		board = [" ", "O", " ", " ", "X", "X", "O", " ", " "]
		assert_equal(true, valid_space?(board, 2))
	end
end

class TestGameWon < Minitest::Test
	def test_top_row_all_Xs_returns_true
		board = ["X", "X", "X", " ", " ", " ", " ", " ", " "]
		assert_equal(true, game_won?(board))
	end

	def test_top_row_O_O_X_returns_false
		board = ["O", "O", "X", "X", "X", "O", "O", "O", "X"]
		assert_equal(false, game_won?(board))
	end

	def test_middle_row_all_Os_returns_true
		board = [" ", " ", " ", "O", "O", "O", " ", " ", " "]
		assert_equal(true, game_won?(board))
	end

	def test_middle_row_returns_false
		board = ["X", "O", "X", "X", "O", "O", "O", "X", "X"]
		assert_equal(false, game_won?(board))
	end

	def test_bottom_row_all_Xs_returns_true
		board = [" ", " ", " ", " ", " ", " ", "X", "X", "X"]
		assert_equal(true, game_won?(board))
	end

	def test_left_column_all_Os_returns_true
		board = ["O", " ", " ", "O", " ", " ", "O", " ", " "]
		assert_equal(true, game_won?(board))
	end

	def test_middle_column_all_Xs_returns_true
		board = [" ", "X", " ", " ", "X", " ", " ", "X", " "]
		assert_equal(true, game_won?(board))
	end

	def test_right_column_all_Os_returns_true
		board = [" ", " ", "O", " ", " ", "O", " ", " ", "O"]
		assert_equal(true, game_won?(board))
	end

	def test_diagonal_top_left_to_bottom_right_all_Xs_returns_true
		board = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
		assert_equal(true, game_won?(board))
	end

	def test_diagonal_top_right_to_bottom_left_all_Os_returns_true
		board = [" ", " ", "O", " ", "O", " ", "O", " ", " "]
		assert_equal(true, game_won?(board))
	end
end