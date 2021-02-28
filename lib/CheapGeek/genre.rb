require 'pry'
 
class Genre

attr_accessor :genre_name, :game_title

@@all_genres = []

    def initialize(genre, title)
        @genre_name = genre
        @game_title = title
        @@all_genres << self
    end

    def self.all_genres
        @@all_genres
    end

    def self.games
        Game.all_games.select {|game| game.genre == self}
    end

   def new_game(title, short_description, release_date, game_url)
    binding.pry
    game = Game.new(title, genre= self, short_description, release_date, game_url)
   end

   def self.find_game_by_genre(name)
    self.all_genres.detect{|genre| genre.genre_name == name}
   end

end