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


end