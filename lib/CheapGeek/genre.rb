require 'pry'
 
class Category

attr_accessor :genre_name, :game_title

@@all = []

    def initialize(genre, title)
        @genre_name = genre
        @game_title = title
        @@all << self
    end

    def self.all
        @@all
    end

end