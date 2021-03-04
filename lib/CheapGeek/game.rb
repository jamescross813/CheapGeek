class Game
   
    attr_reader :title, :genre, :short_description, :release_date, :game_url, :cli
   
    @@all_games = []
    
    def initialize(title = nil, genre = nil, short_description = nil, release_date = nil, game_url = nil)
        @title = title
        @genre = genre
        @short_description = short_description
        @release_date = release_date
        @game_url = game_url
        Genre.find_or_create_by_name(genre, title)
        @@all_games << self
    end

    def self.all_games
        @@all_games
    end

    def self.find_by_genre  
        @game_menu = []
        self.all_games.each do |game|  
            if game.genre == CLI.choice_genre
                @game_menu << game.title
            end
        end
        @game_menu
    end

    def self.info  #include labels
        self.all_games.collect do |game| 
            if game.title == CLI.choice_game
               sleep (1)
               puts "Game Description: #{game.short_description}" 
               sleep (1)
               puts "Release Date: #{game.release_date}"
               sleep (1)
               puts "URL: #{game.game_url}"
            end
        end
    end
    
end