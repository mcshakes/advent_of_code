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

    context "single floor movement without external directions" do
        let(:single_santa) { Santa.new }

        describe "go up single floor" do
            it "takes him to first floor" do
                single_santa.move("(")                        
                expect(single_santa.current_floor).to eq(1)
            end
        end
    
        describe "go down single floor" do
            it "takes him to first floor" do
                single_santa.move(")")                        
                expect(single_santa.current_floor).to eq(-1)
            end
        end
    end
    
    context "multiple floor movements" do
        describe "with multiple directions" do
            let(:santa) { Santa.new }

            it "takes him to third floor" do
                floors = ["(", "(", "("]
                santa.follow_directions(floors)                        
                expect(santa.current_floor).to eq(3)
            end

            it "takes him to third floor" do
                floors = ["(", "(", ")"]
                santa.follow_directions(floors)                        
                expect(santa.current_floor).to eq(1)
            end

            it "takes him to third floor in circuitous manner" do
                floors = ["(","(",")","(","(",")", "("]
                santa.follow_directions(floors)                        
                expect(santa.current_floor).to eq(3)
            end

            it "takes him to first basement level" do
                floors = [")",")","("]
                santa.follow_directions(floors)                        
                expect(santa.current_floor).to eq(-1)
            end
        end
    end

    context "entering the dreaded basement" do
        let(:santa) { Santa.new }

        describe "Santa knows at what position he enters the basement" do

            it "returns the correct instruction position when it's simple" do
                floors = [")"]
                santa.follow_directions(floors)                                    
                expect(santa.basement_character).to eq(1)
            end

            it "returns the correct instruction position when it's complicated" do
                floors = ["(",")","(",")",")"]
                santa.follow_directions(floors)                                    
                expect(santa.basement_character).to eq(5)
            end
        end
    end
end