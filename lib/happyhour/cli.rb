class CLI 

    def start 
        puts "Hello! Welcome to Happy Hour!"
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
            puts ""
            puts "**BEER MENU**"
            puts ""
            load_beer
        elsif input == "no"
            puts ""
            puts "Thanks for stopping by!  :)"
            exit
        else
            try_again
            beer_menu_options
        end
        puts ""
        puts "Please make a selection between 1-25."
        choose_beer
    end

    def choose_beer
        input = gets_answer

        if input.to_i.between?(1, HappyHour.all.length)
            index = input.to_i - 1
            beer = HappyHour.all[index]
            display_beer_details(beer)
        elsif input == "no"
            puts ""
            puts "Thanks for stopping by! :)"
            exit
        else
            try_again
            beer_menu_options
         end
    end

    def display_beer_details(beer)
        puts ""
        puts "Selection: #{beer.name}"
        puts ""
        puts "Description: #{beer.description}"
        puts ""
        puts "ABV is : #{beer.abv}%"
        puts ""
        puts "Recommended Dishes: #{beer.food_pairing}"
        puts ""
        puts "Would you like to make another selection?"
        puts "Type 'yes' to see the menu again" 
        puts "Type 'no' to exit."
        make_another_selection
    end

    def make_another_selection
     beer_menu
    end

    def try_again
        puts ""
        puts "Sorry...I don't know that command"
    end

    def gets_answer
        input = gets.strip
    end


end 