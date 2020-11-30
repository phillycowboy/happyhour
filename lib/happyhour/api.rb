class API 

    def self.base_url 
        "https://api.punkapi.com/v2"
    end

    def self.load_data
        response = RestClient.get(base_url + '/beers')
        data = JSON.parse(response.body)
        binding.pry
    end
end 