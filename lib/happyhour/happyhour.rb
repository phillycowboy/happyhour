class HappyHour 
    @@all = []

    
    def initialize(beer_data)
         
        @@all << self 
    end

    def self.all 
        @@all 
    end
end