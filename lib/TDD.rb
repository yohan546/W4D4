require 'rspec'

class Array 

    def uniq
        array = []

        self.each do |num|
            
            if !array.include?(num)
                array << num 
            end 
        end
        array 
    end

    def two_sum
        arr = []
        (0...self.length).each do |i|
            ((i+1)...self.length).each do |j|
                pairs = [i,j]
                if self[i] + self[j] == 0
                    arr << pairs
                end
            end
        end
        arr
    end

    def my_transpose 
        arr = []

        (0...self.length).each do |i| 
            sub = []
            self.each do |rows|
                sub << rows[i]
            end
            arr << sub
        end

        arr
    end

    def stock_picker
        current_profit = 0
        greatest_profit = 0
        greatest_profit_pair = []
        (0...self.length).each do |buy_date|
            ((buy_date+1)...self.length).each do |sell_date|
                pair = [buy_date,sell_date]
                profit_of_pair = self[sell_date] - self[buy_date]
                current_profit = profit_of_pair
                if current_profit > greatest_profit
                    greatest_profit = current_profit
                    current_profit = 0
                    greatest_profit_pair = pair
                end
            end
        end
        greatest_profit_pair
    end
end