class Song

    #keep track of all existing artists, genres, songs, 
    #genre_count
    #num songs each artist is responsible for (Song.artist_count)
    # => {"Beyonce" => 17, "Jay-Z" => 40}

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist 
        @genre = genre 
        @@count +=1
        @@genres << self.genre
        @@artists << self.artist

    end

    def self.count
        @@count
    end

    def self.genres
         #control for duplicates .uniq ?
        @@genres

    end

    def self.artists
        #control for duplicates
        @@artists
    end

    def self.genre_count 
        #returns hash in which keys are the names of each genre 
        #each genre name key should point to a value that is the number of songs in the genre
    
        #iterate over the @@genres arrat and populate a hash with the key/value pairs
        #you will need to check if the has already contains a key of particular genre
        #if so increment the value of that key by one, otherwise create new key value pair
        #hash.key?("key")

        genre_histogram = {}
        @@genres.each do |g|
            if !genre_histogram[g] 
                genre_histogram[g] = 1
            else 
                genre_histogram[g]+= 1
            end
        end
        genre_histogram
    end

    def self.artist_count
        #returns histogram for artists
        artist_histogram = {}
        @@artists.each do |a|
            if !artist_histogram[a]
                artist_histogram[a] = 1
            else 
                artist_histogram[a] += 1
            end
        end
        
        artist_histogram
    end 

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "Rap")

dior = Song.new("Dior", "Pop Smoke", "Rap")
got_it_on_me = Song.new("Got it on me", "Pop Smoke", "Rap")

carmen = Song.new("Carmen", "Stromae", "French Rap")
formidable = Song.new("Formidable", "Stromae", "French Rap")

brother_keeper = Song.new("Brother's Keeper", "Anderson Paak", "Rap")

filamen = Song.new("Filamen", "Balti", "Tunisian Rap")

puts Song.artist_count
puts Song.genre_count
