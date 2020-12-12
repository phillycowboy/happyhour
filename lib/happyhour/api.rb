class API    

    def self.base_url 
        "https://api.punkapi.com/v2"
    end

    def self.load_data
        response = RestClient.get(base_url + '/beers')
        data = JSON.parse(response.body)
            data.each do |beer|
             name = beer["name"]
             tagline = beer["tagline"]
             description = beer["description"]
             food_pairing = beer["food_pairing"].join(", ")
             abv = beer["abv"]
             HappyHour.new(name, tagline, description, food_pairing, abv)
            end
    end




end 