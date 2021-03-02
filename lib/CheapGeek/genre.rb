class Genre
    
attr_reader :genre_name, :game_title

@@all_genres = []
    def initialize(genre= nil, title= nil)
        @genre_name = genre
        @game_title = title
        @@all_genres << self
    end

    def self.genre_name
        @genre_name
    end

    def self.all_genres
        @@all_genres
    end

    def self.genre_list
        @@genres = []
        self.all_genres.each do |genre|
            unless @@genres.include?(genre.genre_name)
                @@genres << genre.genre_name
            end
        end
        @@genres
    end

end

