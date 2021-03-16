class CLI

    def start 
        API.get_info
        puts "It's dangerous to go alone! Help us, help you to help yourself!"
        sleep (1)
        puts "...."
        sleep (1)
        genre_menu
    end

    def genre_menu 
        @@choice_genre = prompt.select("What do you seek? Scroll for more options...", Genre.all_genres, cycle: true, symbols: { marker: ">" }, filter: true)
        sleep (1)
        puts "Search and ye shall find...."
        sleep (1)
        game_menu
    end

    def game_menu    
        @@choice_game = prompt.select("What do you desire? Scroll for more choices...", Genre.games, cycle: true, symbols: { marker: ">" }, filter: true)
        sleep (1)
        game_info
    end

    def game_info
        Game.all_games.collect do |game| 
            if game.title == CLI.choice_game
               sleep (1)
               puts "Game Description: #{game.short_description}" 
               sleep (1)
               puts "Release Date: #{game.release_date}"
               sleep (1)
               puts "URL: #{game.game_url}"
            end
        end
        sleep (2)
        waiting_menu
    end

    def waiting_menu
        menu = ["Return to genres.", "Return to games.", "Exit, pursued by bear."]
        prompt
        @@choice_menu = prompt.select("Try and try again, right?!", menu, cycle: true, symbols: { marker: ">" })
        if CLI.choice_menu == menu[0]
            genre_menu
        elsif CLI.choice_menu == menu[1]
            game_menu
        else
            end_app
        end
    end

    def end_app
        sleep (1)
        puts "If I don't see you around, I'll see you square!"
        sleep(1)
    end

    def self.choice_genre
        @@choice_genre
    end

    def self.choice_game
        @@choice_game
    end

    def self.choice_menu
        @@choice_menu
    end

    def prompt
        @prompt = TTY::Prompt.new
    end

end

