require_relative "./directions"
require "pry"

class Santa
    attr_accessor :current_floor
    MOVE_UP = "("
    MOVE_DOWN = ")"

    def initialize()
        @current_floor = 0
    end

    def parse_directions
        directions = Directions.new.data.split("")
        directions.each do |thing|
            follow_direction(thing)
        end
    end

    def follow_direction(step)
        if step == MOVE_UP
            go_up
        elsif step == MOVE_DOWN
            go_down
        end
    end
 
    def go_up
        @current_floor += 1
    end

    def go_down
        @current_floor -= 1
    end

    def to_s
        p "Santa is at this floor now: #{current_floor}"
    end
end

santa = Santa.new
santa.parse_directions
santa.to_s



