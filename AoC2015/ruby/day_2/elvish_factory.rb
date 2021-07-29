class ElvishFactory
    
    def parse_order(input)
        l,w,h = input.split("x").map(&:to_i)
        {l: l, w: w, h: h}
    end
end