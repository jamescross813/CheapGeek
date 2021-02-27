require 'pry'
 
class CLI
    attr_accessor :genre, :game

    #  start with welcome
    def call 
        puts "It's dangerous to go alone!"
        genre_list
        genre_menu
        game_list
        game_menu
        end_app
    end

    def genre_list
       # binding.pry
        @genre = Genre.all_genres
    end
# ask for selection of genre
    def genre_menu 
            prompt.select("What do  you seek?", genre_list)
    end
# return list of games with that catagory
    def game_list
    @game = Genre.games
    end
# chose game from returned list
    def game_menu
        prompt.select("What do you desire?", game_list)
    end
# return information about requested game
    def game_info

    end

    def end_app
        puts "If I don't see you around, I'll see you square."
    end

end