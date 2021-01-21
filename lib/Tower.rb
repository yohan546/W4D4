class Board 
    attr_reader :board, :num_of_disc
    def initialize(num = 5)
        @board = Array.new(3){Array.new}
        @num_of_disc = num
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
        if @board[-1] ==(1..self.num_of_disc).to_a.reverse
            puts "you won"
            return true
        end
    end
    def get_input
        print "Enter 2 numbers for a start and end position of disc, Ex. 0 2"
        input = gets.chomp.split(" ") 
        input.map!{ |num| num.to_i}

        input.each do |pos|
            if pos < 0 || pos > 2
            puts "invalid move"
            get_input
            end
        end
    end

    def move
        until won?
            pos = get_input 
            valid_move?(pos)

            ele = @board[pos[0]].pop()
            @board[pos[1]] << ele  
            p self.board
        end
    end

    def valid_move?(pos)
        start_pos, end_pos = pos

        if @board[end_pos].empty? || @board[end_pos][-1] > @board[start_pos][-1]
            return true 
        else
            return false
        end
    end

end