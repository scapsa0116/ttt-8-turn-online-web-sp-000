# def display_board(board)
#  def valid_move?(board, index)
#   def position_taken?(board, index)
#    def input_to_index(user_input)
#     def move(board, index, first_player = "X")
#     end
def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    puts display_board(board)
  else
    puts "invalid entry"
    turn(board)
  end
end
