class Directions
    attr_reader :data

    def initialize 
        @data = read_file
    end

    def read_file
        file =  File.new("AoC2015/ruby/day_1/input.txt")      
        file.readlines[0]
    end
end
