require_relative "../../day_2/elvish_factory"

describe ElvishFactory do
    describe "can parse orders" do
        let(:factory) { ElvishFactory.new }

        it "transcribes one order to generate hash based on present dimensions" do
            input = "4x23x21"
            expect(factory.parse_order(input)).to eq({l: 4, w: 23, h: 21})
        end

        # context "multiple orders" do
        #     it "transcribes multiple orders to match present unit dimensions" do
        #         input = ["4x23x21", "22x29x19", "11x4x11"]
        #         expect(factory.parse_order(input)).to eq([4,23,21])
        #     end
        # end
    end
end
