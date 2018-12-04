def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index input
  input = input.to_i
  if input >= 1 && input <= 9
    return input - 1
  else
    return -1
  end
end

def valid_move? board,index
  if index <= 8 and index >= 0
    board[index] == " " || board[index] == "" || board[index] == nil ? true : false
  else
    false
  end
end

def move board,index,value='X'
  board[index] = value
end

def turn board
  while true
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index user_input
    flat = valid_move? board,index
    if flat
      move board,index
      display_board board
    else
      next
    end
  end
end
