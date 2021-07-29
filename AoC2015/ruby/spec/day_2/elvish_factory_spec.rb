require_relative "../../day_2/elvish_factory"
require_relative "../../day_2/present"

describe ElvishFactory do
    describe "can parse orders" do
        let(:factory) { ElvishFactory.new }

        it "transcribes one order to generate hash based on present dimensions" do
            input = "4x23x21"
            expect(factory.parse_order(input)).to eq({l: 4, w: 23, h: 21})
        end
    end

    # describe "can create orders based on unit dimensions" do
    #     let(:factory) { ElvishFactory.new }

    #     it "transcribes one order to generate hash based on present dimensions" do
    #         input = {l: 4, w: 23, h: 21}
            
    #         Present = Struct.new(:length, :width, :height) 

    #         new_present = factory.build_order(input)
    #         expect(new_present).to have_attributes(:length => 4, :width => 23, :height => 21)
    #     end
    # end
end
