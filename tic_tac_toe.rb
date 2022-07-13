class TicTacToe
  def initialize(board)
    @board = board
    @size = board.length
    # sequences of o and x that cause a win (e.g. if @o_win is found with one of the checks, o wins)
    @o_win = ["o"]*@size
    @x_win = ["x"]*@size
  end

  def winner
    # row checks (go through each row and check if it causes a win; return accordingly)
    @board.each do |row|
      return "o" if row == @o_win
      return "x" if row == @x_win
    end

    # column checks (go through each column and check if it causes a win; return accordingly)
    @board.transpose.each do |column| # transpose switches rows with columns
      return "o" if column == @o_win
      return "x" if column == @x_win
    end

    # diagonal checks
    forward_diagonal = []
    backward_diagonal = []
    @size.times do |i| # generate diagonals
      forward_diagonal.push @board[i][i] # diagonal goes from top to bottom, left to right; so both indexes increase 
      backward_diagonal.push @board[i][@size-i-1] # diagonal goes from top to bottom, right to left; so first index increases, second index decreases
    end
    # check both diagonals and see if one causes a win; return accordingly
    return "o" if forward_diagonal == @o_win || backward_diagonal == @o_win
    return "x" if forward_diagonal == @x_win || backward_diagonal == @x_win

    # if no row, column, or diagonal is a winning sequence,
    # and there are spaces on the board, then the game is unfinished
    @board.each do |row|
      return "unfinished" if row.include? " "
    end
    
    # if no row, column, or diagonal is a winning sequence, 
    # and there are only o's and x's on the board, then the game is a draw
    return "draw"
  end
end
