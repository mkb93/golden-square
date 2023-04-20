
  # File: lib/diary_entry.rb
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
  
    def count_wordz
      return 0 if @contents.empty?
      return @contents.count(" ") + 1
    end
  
    def reading_time(wpm) 
      return (count_wordz.to_f / wpm).ceil
    end
  
    def reading_chunk(wpm, minutes)
      fail "enter input higher than zero" if wpm <= 0 || minutes <= 0
      words_read = wpm *minutes
      start_at = @position
      end_at = words_read
      chunk = @contents.split(' ')[start_at, end_at]
      if end_at >= count_wordz
        @position = 0
      else
        @position = end_at
      end
      return chunk.join(' ')
    end
  end