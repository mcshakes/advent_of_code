# They have a list of the dimensions (length l, width w, and height h) of each present, be exact

# find the surface area of the box, which is 2*l*w + 2*w*h + 2*h*l. 
# The elves also need a little extra paper for each present: the area of the smallest side.


# A present with dimensions 2x3x4 requires 2*6 + 2*12 + 2*8 = 52 square feet of wrapping paper plus 6 square feet of slack, for a total of 58 square feet.

# A present with dimensions 1x1x10 requires 2*1 + 2*10 + 2*10 = 42 square feet of wrapping paper plus 1 square foot of slack, for a total of 43 square feet.
require_relative "../../day_2/present"

describe Present do
    describe "has length, width, and height" do
        it "has all three dimensions" do
            present = Present.new(2,3,4)
            expect(present.length).to eq(2)
            expect(present.width).to eq(3)
            expect(present.height).to eq(4)
        end
    end

    describe "can give surface area" do
        let(:present_one) { Present.new(2,3,4) }
        let(:present_two) { Present.new(1,1,10) }

        it "calculates wrapping paper for first present" do
            expect(present_one.surface_area).to eq(52)
        end

        it "calculates wrapping paper for second present" do
            expect(present_two.surface_area).to eq(42)
        end

        context "will also calculate leftover slack" do
            it "calculates slack paper needed for first present" do
                expect(present_one.slack_paper).to eq(6)
            end

            it "calculates slack paper needed for second present" do
                expect(present_two.slack_paper).to eq(1)
            end
        end
    end

    describe "can calculate needed wrapping paper per present" do
        let(:present_one) { Present.new(2,3,4) }

        it "calculates total needed wrapping paper for first present" do
            expect(present_one.total_required_paper).to eq(58)
        end
    end
end
