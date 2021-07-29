require "pry"

class Ribbon
    def initialize(present)
        @present = present
    end
    
    def bow
        @present.length * @present.width * @present.height
    end

    def length_needed
        attrs = [@present.length, @present.width, @present.height].sort
        lowest, low = attrs
        (2 * lowest) + (2 * low)
    end

    def total_required_ribbon
        bow + length_needed
    end    
end