require 'pry'
 
class CLI


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

    end
# ask for selection of genre
    def genre_menu
        puts "What do you what do you seek?"
        if input != "exit"
            input= gets.strip
            case input
            when "1"
                puts "What do you desire?"
                game_list.genre(1)
            end
        end
    end

    def game_list

    end

    def game_menu
        puts "There is no Earthly way of knowing...Unless you select the game."
        if input != "exit"
            input= gets.strip
            case input
            when "1"
                puts "After very careful consideration, sir, you've come to a decision about #{game_name}"
                game.name(1)
            end
        end
    end

    def end_app
        puts "If I don't see you around, I'll see you square."
    end



# return list of games with that catagory
# chose game from returned list
# return information about requested game

end