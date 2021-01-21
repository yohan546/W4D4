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
end