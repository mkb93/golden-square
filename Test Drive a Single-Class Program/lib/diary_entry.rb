class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @position = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      return @contents.split.length
    end
  
    def reading_time(wpm) 
      fail "reading speed has to be greater than 0" if wpm <= 0
      return (count_words.to_f/wpm).ceil
    end
  
    def reading_chunk(wpm, minutes)
      words_read = wpm *minutes
      if words_read >= count_words
        return @contents
      end
       end_at = words_read
       start_at = 0
       return @contents.split(' ').slice(start_at,end_at).join('')
    end
  end