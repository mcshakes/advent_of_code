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
