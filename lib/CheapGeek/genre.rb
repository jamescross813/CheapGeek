require 'pry'
 
class Category

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

end