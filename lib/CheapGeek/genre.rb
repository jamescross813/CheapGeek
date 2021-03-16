class Genre
    


@@all_genres = []

    def self.find_or_create_by_name(genre)
      self.find_by_name(genre) || self.create(genre)
    end

    def self.create(genre)
        @genre_name = genre
        @@all_genres << self.genre_name
    end

    def self.find_by_name(genre)
        self.all_genres.detect{|genre_name| genre_name == genre.strip}
    end

    def self.all_genres
        @@all_genres
    end

    def self.genre_name
        @genre_name
    end

end
