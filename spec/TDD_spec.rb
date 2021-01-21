require "rspec"
require "TDD"

describe Array do 
    describe '#uniq' do
        it "should return unique elements " do
            expect([1, 2, 1, 3, 3].uniq).to eq([1,2,3])
        end

        it "should return in the order which they first appear" do
            expect([1, 2, 1, 3, 3].uniq).to_not eq([2,1,3])
        end
    end

    describe '#two_sum' do 
        it "find all pairs of positions where elements sum to 0"

        

    end


end