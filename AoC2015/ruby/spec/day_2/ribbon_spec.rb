# require_relative "../../day_2/elvish_factory"
require_relative "../../day_2/ribbon"
require_relative "../../day_2/present"

describe Ribbon do
    # describe "has same width" do
    #     it "so only cares about the length which depends on present" do
    #         present = Present.new(2,3,4)
    #         # ribbon = Ribbon.new(present.,3,4)
    #         expect(ribbon.length).to eq(10)
    #         # expect(present.width).to eq(3)
    #         # expect(present.height).to eq(4)
    #     end
    # end
    let(:present) { Present.new(2,3,4) }

    describe "calculate the bow" do

        it 'can calculate the bow length needed from present dimensioons' do
            ribbon = Ribbon.new(present)
            expect(ribbon.bow).to eq(24)
        end
        
    end

    describe "calculate the ribbon needed" do

        it 'can calculate the ribbon length needed to wrap present' do
            ribbon = Ribbon.new(present)
            expect(ribbon.length_needed).to eq(10)
        end
        
    end

    describe "calculate the total required ribbon" do

        it 'can calculate the ribbon length needed to wrap present' do
            ribbon = Ribbon.new(present)
            expect(ribbon.total_required_ribbon).to eq(34)
        end
        
    end
end
