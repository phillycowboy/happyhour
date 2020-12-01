class CLI 

    def start 
        puts "Hello! Welcome to Happy Hour!"
        puts "Would you like to see a drink menu?"
        input = gets.strip 
        if input == "yes"
            API.load_data
        elsif input == ""
            puts "Sorry type 'yes' or 'no'"
            input = gets.strip
        elsif input == "no"
            puts "Thanks for stopping by!"
            exit
        end     
    end

end 