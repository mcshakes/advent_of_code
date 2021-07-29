class Present
    attr_reader :length, :width, :height

    def initialize(length, width, height)
        @length = length
        @width = width
        @height = height
    end

    def surface_area
        (2 * (@length * @width)) + (2 * (@width * @height)) + (2 * (@height * @length))
    end

    def slack_paper
        attrs = [@length, @width, @height]
        attrs.delete_at(attrs.index(attrs.max))
        attrs.inject(:*)            
    end

    def total_required_paper
        surface_area + slack_paper
    end
end