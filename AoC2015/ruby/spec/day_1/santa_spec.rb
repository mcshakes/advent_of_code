require_relative "../../day_1/santa"

describe Santa do
    describe "current floor" do
        context "without moving" do
            it "returns 0 to signify the ground floor" do
                santa = Santa.new
                expect(santa.current_floor).to eq(0)
            end
        end
    end

    describe "go up a floor" do
        it "takes him to first floor" do
            santa = Santa.new
            # read direction to go up
            # santa goes up
            santa.go_up
            expect(santa.current_floor).to eq(0)
        end
    end
end