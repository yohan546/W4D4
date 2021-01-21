require "rspec"
require "TDD"

describe Array do 
    let (:two_sum_array){[-1, 0, 2, -2, 1]}
    describe '#uniq' do
        it "should return unique elements " do
            expect([1, 2, 1, 3, 3].uniq).to eq([1,2,3])
        end

        it "should return in the order which they first appear" do
            expect([1, 2, 1, 3, 3].uniq).to_not eq([2,1,3])
        end
    end

    describe '#two_sum' do 
        it "find all pairs of positions where elements sum to 0" do
            expect(two_sum_array.two_sum).to eq([[0,4], [2,3]])
        end
        it "smaller elements come first, smaller second elements come first" do
            expect(two_sum_array.two_sum).to_not eq([[4,0], [3,2]])
        end
    end
    describe "#transpose" do
        it "should convert between row oriented and col oriented 2D array" do
            
        end
    end
end