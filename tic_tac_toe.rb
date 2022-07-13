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

    # column checks (go through each column and check if it causes a win)

    # diagonal checks (check both diagonals and see if one causes a win)

    # if no row, column, or diagonal is a winning string,
    # and there are spaces on the board, then the game is unfinished
    return "unfinished"
    
    # if no row, column, or diagonal is a winning string, 
    # and there are only o's and x's on the board, then the game is a draw
    return "draw"
  end
end
