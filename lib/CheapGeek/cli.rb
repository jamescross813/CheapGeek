
class CLI

    attr_accessor :genre, :game
    #  start with welcome
    def call 
        API.get_info
        puts "It's dangerous to go alone!"
        # genre_list
        # genre_menu
        game_list
        game_menu
        game_info
        # end_app
    end

    # def genre_list
    #     binding.pry
    
    #     Genre.all_genres
        
    # end

# ask for selection of genre
    # def genre_menu 
    #     genre_list = Genre.all_genres
    #     prompt = TTY::Prompt.new
    #         prompt.select("What do you seek?", genre_list, cycle: true, symbols: { marker: ">" }, filter: true)
    # end
# return list of games with that catagory

    def game_list
        @game_list = Game.all_games
    end

# chose game from returned list
    def game_menu
        @game_menu = []  
        @game_list.each {|game| @game_menu << game.title}
        prompt = TTY::Prompt.new
        @choice = prompt.select("What do you desire?", @game_menu, cycle: true, symbols: { marker: ">" }, filter: true)
    end

# return information about requested game
    def game_info
        @game_list.each do |game| 
            if game.title == @choice
               
               @info = "#{game.short_description} #{game.release_date} #{game.game_url}" 
               #binding.pry
               puts @info
            end
            
        end
            
        
     
    end

    def end_app
        puts "If I don't see you around, I'll see you square."
    end

end

