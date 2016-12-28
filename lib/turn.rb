require_relative '../../ttt-4-display-board-rb-ruby-intro-kwk/lib/display_board'
require_relative '../../ttt-5-move-rb-ruby-intro-kwk/lib/move'
require_relative '../../ttt-7-valid-move-ruby-intro-kwk/lib/valid_move'

def turn(board)
  index = 0

  puts "Please enter 1-9:"
  index = input_to_index(gets.strip.to_i)

  if !valid_move?(board, index)
    turn(board)
  else # move was valid
    move(board, index, "X")
    display_board(board)
  end
end
