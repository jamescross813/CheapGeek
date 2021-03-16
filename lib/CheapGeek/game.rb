class Game
   
    attr_reader :title, :genre, :short_description, :release_date, :game_url
   
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
    
    def self.games
        @games = []
        self.all_games.each do |game|  
            if game.genre == CLI.choice_genre
                @games << game.title
            end
        end
        @games
    end
    
    def self.genres
        @genres = []
        self.all_games.each do |game|  
            unless @genres.include?(game.genre.strip)
                @genres << game.genre
            end
        end
        @genres
    end

end