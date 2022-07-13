class TicTacToe
  def initialize(board)
    @board = board
    @size = board.length
    # arrays that cause a win (e.g. if @o_win is found with one of the checks, o wins)
    @o_win = ["o"]*@size
    @x_win = ["x"]*@size
  end

  def winner
    unfinished = false
    # row checks (go through each row and check if it causes a win)
    @board.each do |row|
      if row == @o_win
        return "o"
      elsif row == @x_win
        return "x"
      elsif row.include? " "
        unfinished = true
      end
    end

    # column checks (go through each column and check if it causes a win)
    @board.transpose.each do |column|
      if column == @o_win
        return "o"
      elsif column == @x_win
        return "x"
      elsif column.include? " "
        unfinished = true
      end
    end

    # diagonal checks (check both diagonals and see if one causes a win)
    diagonals = [[], []]
    @size.times do |i|
      diagonals[0].push @board[i][i]
      diagonals[1].push @board[i][@size-i-1]
    end
    diagonals.each do |diagonal|
      if diagonal == @o_win
        return "o"
      elsif diagonal == @x_win
        return "x"
      elsif diagonal.include? " "
        unfinished = true
      end
    end

    # if no row, column, or diagonal is a winning string,
    # and there are spaces on the board, then the game is unfinished
    return "unfinished" if unfinished
    
    # if no row, column, or diagonal is a winning string, 
    # and there are only o's and x's on the board, then the game is a draw
    return "draw"
  end
end
