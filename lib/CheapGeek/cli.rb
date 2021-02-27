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
        puts "there will be a list here"
    end
# ask for selection of genre
    def genre_menu 
        input = nil
        while input != "exit"
            puts "What do  you seek?"
            input= gets.strip
            case input
            when "1"
                puts "What do you desire?"
                game_list
            when "list"
                genre_list
            else
                puts "Button mashing error! Try again!"
            end
        end
    end
# return list of games with that catagory
    def game_list
    puts "there will be a list here"
    end
# chose game from returned list
    def game_menu
        input = nil
        while input != "exit"
            puts "There is no Earthly way of knowing...Unless you select the game."
            input= gets.strip
            case input
            when "1"
                puts "After very careful consideration, sir, you've come to a decision about #{game_name}"
                game_info.name(1)
            when "list"
                genre_list
            else
                puts "Button mashing error! Try again!"
            end
        end
    end
# return information about requested game
    def game_info

    end

    def end_app
        puts "If I don't see you around, I'll see you square."
    end

end