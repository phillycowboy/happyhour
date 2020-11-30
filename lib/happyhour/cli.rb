class CLI 

    def start 
        puts "Hello! Welcome to Happy Hour!"
        puts "Would you like to see a drink menu?"
        API.load_data     #all info loaded and models created at this point 
        input = gets.strip
    end

end 