require "pry"
require_relative "./present"
require_relative "./ribbon"

class ElvishFactory

    def parse_order(input)
        length, width, height = input.split("x").map(&:to_i)
        {l: length, w: width, h: height}
    end

    def build_order(input)
        Present.new(input[:l], input[:w], input[:h])
    end

    def read_intake_orders # Returns an array of intake orders looking like "26x20x24\n"
        file =  File.new("AoC2015/ruby/day_2/input.txt")      
        file.readlines
    end

    def create_order_flow
        orders = read_intake_orders
        needed_sq_footage = []
        needed_ribbon = []

        orders.map do |order|
            cleaned = order.strip
            gift_hash = parse_order(cleaned)
            pres_obj = build_order(gift_hash)

            ribbon = Ribbon.new(pres_obj)
            ribbon_reqs = ribbon.total_required_ribbon

            needed_ribbon << ribbon_reqs
            needed_sq_footage << pres_obj.total_required_paper
        end

        r = needed_ribbon.inject(0, &:+)
        paper = needed_sq_footage.inject(0, &:+)
        p "Needed Ribbons: #{r} and Needed paper: #{paper}"
        
    end
end

ev = ElvishFactory.new
ev.create_order_flow