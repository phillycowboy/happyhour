class HappyHour 
    @@all = []
    attr_accessor :name, :tagline, :description, :food_pairing, :abv
    
    def initialize(name, tagline, description, food_pairing, abv)
        @name = name 
        @tagline = tagline
        @description = description
        @food_pairing = food_pairing
        @abv = abv
       @@all << self 
    end

    def self.all 
        @@all 
    end
end