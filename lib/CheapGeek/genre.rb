require 'pry'
 
class Genre

attr_accessor :genre_name, :game_title

@@all_genres = []

    def initialize(genre, title)
        @genre_name = genre
        @game_title = title
        self.save
    end

    def self.all_genres
        @@all_genres
    end

    def self.save
        @@all_genres << self
    end

    def self.games
        Game.all_games.select {|game| game.genre == self}
    end

   def new_game(name)
    binding.pry
    game = Game.new(name)
   end

end