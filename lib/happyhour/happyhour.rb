class HappyHour 
    @@all = []
    attr_accessor :name, :tagline
    
    def initialize(name, tagline)
        @name = name 
        @tagline = tagline
       @@all << self 
    end

    def self.all 
        @@all 
    end
end