
class Ribbon
    def initialize(present)
        @present = present
    end
    
    def bow
        @present.length * @present.width * @present.height
    end

    def length_needed
        @present.length + @present.length + @present.width + @present.width
    end

    def total_required_ribbon
        bow + length_needed
    end    
end