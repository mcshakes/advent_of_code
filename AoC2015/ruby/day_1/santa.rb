require_relative "./directions"
require "pry"

class Santa
    attr_accessor :current_floor, :directions

    MOVE_UP = "("
    MOVE_DOWN = ")"

    def initialize()
        @current_floor = 0
        @directions=[]
    end

    def set_directions
        @directions = Directions.new.data.split("")        
    end

    def follow_directions(dir_arr)
        dir_arr.each do |thing|
            move(thing)
        end
    end

    def move(step)
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
santa.set_directions
santa.follow_directions(santa.directions)
santa.to_s



