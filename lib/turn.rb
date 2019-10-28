def display_board
   puts row = ["   " "|" "   " "|" "   "]
   puts separator = "-----------"
   puts row
   puts separator
   puts row
   |    |
 -----------
   |    |
 -----------
   |    |
 end
def display_board(board)
  puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  board

   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)
def move(board, index, player = "X")
   board[index] = player
end
def position_taken?(board, index)
   if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
      return false
   else
      return true
   end
end
def input_to_index(input)
  input.to_i - 1
end
def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end
display_board(board)
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
