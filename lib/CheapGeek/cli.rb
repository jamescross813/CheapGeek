
class CLI

    
    attr_accessor :genre, :game
    
    #  start with welcome
    def call 
        API.get_info
        puts "It's dangerous to go alone!"
        genre_list
        genre_menu
        game_list
        game_menu
        end_app
    end

    def genre_list
        binding.pry
    
        Genre.genre_name
        
    end


# ask for selection of genre
    def genre_menu 
        genre_list = Genre.all_genres
        prompt = TTY::Prompt.new
            prompt.select("What do you seek?", genre_list, cycle: true, symbols: { marker: ">" }, filter: true)
    end
# return list of games with that catagory
    def game_list
        #binding.pry
    @game_list = Game.find_by_genre
    end
# chose game from returned list
    def game_menu
        @game_list = ["Game A", "Game B", "Game C", "Game D"]
        prompt = TTY::Prompt.new
        prompt.select("What do you desire?", game_list, cycle: true, symbols: { marker: ">" }, filter: true)
    end
# return information about requested game
    def game_info

    end

    def end_app
        puts "If I don't see you around, I'll see you square."
    end

end