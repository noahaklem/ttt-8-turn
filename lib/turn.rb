#  helper methods

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
    user_input = user_input.to_i - 1
end

def position_taken?(board, index)
    (board[index] == nil || board[index] == "" || board[index] == " ") ? true : false
end

def valid_move?(board, index)
    position_taken?(board, index) & index.between?(0, 8) ? true : false
end

def move(board, index, player = 'X')
    board[index] = player
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = input_to_index(gets.strip)
    if valid_move?(board, user_input)
        move(board, user_input)
        display_board(board)
    else
        turn(board)
    end
end