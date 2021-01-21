class Board 
    attr_reader :board, :num_of_disc
    def initialize
        @board = Array.new(1){Array.new(5)}
        @num_of_disc = 5
        fill_board
    end
    def fill_board()
        i = @num_of_disc
        while i > 0
        @board[0] << i
            i -= 1
        end
    end
    def won?
        if @board[-1] ==[1..@num_of_disc].reverse!
            print "you won"
        end
    end
    def get_input
        print "Enter 2 numbers (disc), and 1 number(row) Ex: 0 3, 2"
        input = gets.chomp.to_a
    end
end