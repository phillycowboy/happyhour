class CLI 

    def start 
        puts "Hello! Welcome to Happy Hour!"
        # puts "Would you like to see a drink menu?"
        API.load_data
        beer_menu_options
        
    end
    
    
    def load_beer    
    HappyHour.all.each.with_index(1) do |beer, index|
        puts "#{index}. #{beer.name} - '#{beer.tagline}'"
     end
    end

    def beer_menu_options
        puts "If you would like to see a menu type 'yes'."
        puts "If you would like to leave type 'no'."
        
        beer_menu
    end

    def beer_menu 
        input = gets_answer

        if input == "yes"
            load_beer
        elsif input == "no"
            puts "Thanks for stopping by!"
            exit
        end
    end

    def gets_answer
        input = gets.strip
    end


end 