
class Game
    
   
    attr_accessor :title, :genre, :short_description, :release_date, :game_url, :cli
   
    @@all_games = []

    
    def initialize(title = nil, genre = nil, short_description = nil, release_date = nil, game_url = nil)
        @title = title
        @genre = genre
        @short_description = short_description
        @release_date = release_date
        @game_url = game_url
        @@all_games << self
    end

    def self.all_games
        @@all_games
    end
    
    def self.save
        @@all_games << self
    end

    def self.find_by_genre  
        @@game_menu = []
        Game.all_games.each do |game|  
            if game.genre == CLI.choice
                @@game_menu << game.title
            end
        end
        @@game_menu
    end

    def self.info
        @genre
        @short_description
        @release_date
        @game_url 
    end

    


    
end