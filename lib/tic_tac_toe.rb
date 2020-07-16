<<<<<<< HEAD
WIN_COMBINATIONS=[
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,6,4],
]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, character)
  board[index]=character
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  end
end

def turn_count(board)
counter =0
board.each do |position|
  if position == "O" || position == "X"
    counter +=1
  end
end
return counter
end

def current_player(board)
  turn_count(board).odd? == true ? "O" : "X"
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  until valid_move?(board, index)==true
    puts "Please enter 1-9:"
    input=gets.strip
    index=input_to_index(input)
  end
  character=current_player(board)
  move(board,index,character)
  display_board(board)
end

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if
      win_combination.all? do |win_index|
        board[win_index]=="X"
      end
      true
    elsif
      win_combination.all? do |win_index|
        board[win_index]=="O"
      end
      true
    else
      false
    end
  end
end

def full?(board)
  board.all? do |index|
    index=="X"||index=="O"
  end
end

def draw?(board)
  if full?(board)==true && won?(board)==nil
    true
  end
end

def over?(board)
  if won?(board)!=nil || full?(board)==true || draw?(board)==true
    true
  else
    false
  end
end

def winner(board)
  if won?(board)!=nil
    board[won?(board).detect {|index| board[index]=="X" || board[index]=="O"}]
  else
    nil
  end
end

def play(board)
  until over?(board)==true
    turn(board)
  end
  if won?(board)!=nil
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)==true
    puts "Cat's Game!"
  end
  won?(board)
  won?(board)
=======
def greeting(name)
  puts "Hello #{name}. It's nice to meet you."
end 
  
def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, value="X")
  board[index] = value
end 

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end  
end

def play(board)
  turn = 0
  until turn == 9
    turn += 1
  turn (board)
end
end

def turn_count(board)
  counter = 0
  board.each do |turn|
    if turn == "X" || turn == "O"
      counter += 1
    end
  end
  return counter
end

def current_player(board)
  if turn_count(board) % 2 == 0
    return 'X'
  else
    return 'O'
  end
end

WIN_COMBINATIONS = [
  [0,1,2], # Top Row
  [3,4,5], # Middle Row
  [6,7,8], # Bottom Row
  [0,3,6], # Left Row
  [1,4,7], # Center Row
  [2,5,8], # Right Row
  [0,4,8], # Right Diagonal
  [2,4,6]  # Left Diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    if
      win_combination.all? do |win_index|
        board[win_index]=="X"
      end
      true
    elsif
      win_combination.all? do |win_index|
        board[win_index]=="O"
      end
      true
    else
      false
    end
  end
end

def full?(board)
  board.all? do |index|
    index=="X"||index=="O"
  end
end

def draw?(board)
  if full?(board)==true && won?(board)==nil
    true
  end
end

def over?(board)
  if won?(board)!=nil || full?(board)==true || draw?(board)==true
    true
  else
    false
  end
end

def winner(board)
  if won?(board)!=nil
    board[won?(board).detect {|index| board[index]=="X" || board[index]=="O"}]
  else
    nil
  end
>>>>>>> 9440a084e6b096685b173f636065b91b49d5ecec
end