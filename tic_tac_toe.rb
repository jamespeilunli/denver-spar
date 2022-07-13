class TicTacToe
  def initialize(board)
    @board = board
    @size = board.length
    # strings that cause a win (e.g. if @o_win is found with one of the checks, o wins)
    @o_win = "o"*@size
    @x_win = "x"*@size
  end

  def winner
    # row checks (go through each row and check if it causes a win)

    # column checks (go through each column and check if it causes a win)

    # diagonal checks (check both diagonals and see if one causes a win)
    
    # if no row, column, or diagonal is a winning string, then the game is unfinished and it's a draw
    return "unfinished"
  end
end
