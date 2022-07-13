class TicTacToe
  def initialize(board)
    @board = board
    @size = board.length
    # sequences of o and x that cause a win (e.g. if @o_win is found with one of the checks, o wins)
    @o_win = ["o"]*@size
    @x_win = ["x"]*@size
  end

  def winner
    # row checks (go through each row and check if it causes a win)
    @board.each do |row|
      return "o" if row == @o_win
      return "x" if row == @x_win
    end

    # column checks (go through each column and check if it causes a win)
    @board.transpose.each do |column| # transpose switches rows with columns
      return "o" if column == @o_win
      return "x" if column == @x_win
    end

    # diagonal checks (check both diagonals and see if one causes a win)
    diagonals = [[], []]
    @size.times do |i|
      diagonals[0].push @board[i][i] # forward diagonal (top to bottom, left to right)
      diagonals[1].push @board[i][@size-i-1] # backward diagonal (top to bottom, right to left)
    end

    diagonals.each do |diagonal|
      return "o" if diagonal == @o_win
      return "x" if diagonal == @x_win
    end

    # if no row, column, or diagonal is a winning string,
    # and there are spaces on the board, then the game is unfinished
    @board.each do |row|
      return "unfinished" if row.include? " "
    end
    
    # if no row, column, or diagonal is a winning string, 
    # and there are only o's and x's on the board, then the game is a draw
    return "draw"
  end
end
