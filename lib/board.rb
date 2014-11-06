module Connect4
  class Board
    attr_reader :board
  
    ROWS = 5
    COLS = 7
    EMPTY_SPACE = 'o'

    def initialize
      # 5 rows, 7 columns
      @board = Array.new(COLS){ Array.new(ROWS, EMPTY_SPACE) }
      @veto = -1
    end

    def to_s
      #@board.reverse.each { |x| print "#{x} #{x.size}\n" }
      (ROWS - 1).downto(0) do |i|
        print '[ '
        for j in 0...COLS
          print "#{@board[j][i]} " 
        end
        print "]\n"
      end
      print "\n"
    end

    def play(col, player)
      return 1 unless @board[col].include?(EMPTY_SPACE)
      return 2 if col == @veto

      first_empty_space = @board[col].index(EMPTY_SPACE)
      @board[col][first_empty_space] = player

      return 0
    end

    def veto(col)

    end
  end
end

b = Connect4::Board.new
b.to_s
b.play(3, "R")
b.to_s
b.play(3, "Y")
b.to_s
b.play(3, "R")
b.to_s
b.play(3, "Y")
b.to_s
b.play(3, "R")
b.to_s
b.play(3, "Y")
b.to_s