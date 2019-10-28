
def display_board(board)
  puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  board

   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
puts "Welcome to Tic Tac Toe"
puts display_board(board)
turn(board)

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

def turn_count(board)
   counter = 0
   board.each do |spaces|
      if spaces == "X" || spaces == "O"
         counter += 1
      end
   end
   counter
end
def current_player(board)
   turn_count(board) % 2 == 0 ? "X" : "O"
end
