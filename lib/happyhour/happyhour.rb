require 'pry'

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
 
    #CODE CHALLENGE NEW METHOD 
    #going to return all beer instances with an abv below 5. 
    def self.print_abvs
        # new_array = []
        @@all.map do |beer| 
            if beer.abv < 5.0
            # new_array << beer
            end
        end
        # new_array
    end

   
   
end

