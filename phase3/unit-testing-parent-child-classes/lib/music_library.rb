class MusicLibrary
    def initialize
      @library = []
    end
  
    def add(track) 
      return @library << track
    end
  
    def all
      return @library.map { |track| 
        [track.show_title, track.show_artist]
      }
    end
    
    def search(keyword) 
      matches = @library.filter do |track|
      track.matches?(keyword)
      end
      matches.map do |track|
        
        "#{track.show_title} by #{track.show_artist}"
      end
    end
  end