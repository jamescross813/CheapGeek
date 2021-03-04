class Genre
    
attr_reader :genre, :game_title, :games

@@all_genres = []
@@all_info = []

    def self.find_or_create_by_name(genre, title)
      self.find_by_name(genre) || self.create(genre, title)
    end

    def self.create(genre, title)
        @genre_name = genre
        @game_title = title
        @@all_genres << self.genre_name
        @@all_info << self
    end

    def self.find_by_name(genre)
        self.all_genres.detect{|genre_name| genre_name == genre.strip}
    end

    def self.all_genres
        @@all_genres
    end

    def self.all_info
        @@all_info
    end
    
    def self.genre_name
        @genre_name
    end

    def self.game_title
        @game_title
    end

end
