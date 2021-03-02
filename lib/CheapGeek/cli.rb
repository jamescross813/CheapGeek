
class CLI

    attr_accessor :genre, :game
    #  start with welcome
    def call 
        API.get_info
        puts "It's dangerous to go alone! Help us, help you to help yourself!"
        genre_menu

    end

    def prompt
        @prompt = TTY::Prompt.new
    end

# ask for selection of genre
    def genre_menu 
        prompt 
        @choice =  prompt.select("What do you seek?", Genre.genre_list, cycle: true, symbols: { marker: ">" }, filter: true)
            sleep (1)
            game_list
    end
# return list of games with that catagory

    def game_list
        @game_list = Game.all_games  
         @game_menu = []
         @game_list.each do |game|  
            if game.genre == @choice
                @game_menu << game.title
             #binding.pry
            end
         end
         sleep (1)
         puts "Search and ye shall find...."
         sleep (1)
         game_menu
    end

# choose game from returned list
    def game_menu
        prompt 
        @choice = prompt.select("What do you desire?", @game_menu, cycle: true, symbols: { marker: ">" }, filter: true)
        sleep (1)
        game_info
    end

# return information about requested game
    def game_info
        @game_list.each do |game| 
            if game.title == @choice
               @info = "#{game.short_description} #{game.release_date} #{game.game_url}" 
               puts @info
               sleep (3)
               waiting_menu
            end
        end
    end

    def waiting_menu
        @waiting_menu = ["Return to genres.", "Return to games.", "Exit, pursued by bear."]
        prompt
        @choice = prompt.select("Try and try again, right?!", @waiting_menu, cycle: true, symbols: { marker: ">" })
        if @choice == @waiting_menu[0]
            genre_menu
        elsif @choice == @waiting_menu[1]
            game_menu
        else
            end_app
        end
    end

    def end_app
        puts "If I don't see you around, I'll see you square."
    end

end

