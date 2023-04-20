
class Track
    def initialize(title, artist) # title and artist are both strings
      @title = title
      @artist = artist
    end
    def show_artist
      return @artist
    end

    def show_title
      return @title
    end
    def matches?(keyword) 
      return true if @title.include?(keyword) || @artist.include?(keyword)
      return false
    end
  end