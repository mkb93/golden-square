class DiaryEntry
    def initialize(title, string)
    @title = title
    @content = string
    end
    def contents
      return @content
    end
    def word_count
      return 0 if @content.empty?
      return @content.count(" ") + 1
    end
  
    def reading_time(wpm)
      fail "wpm needs to be greater than 0" unless wpm > 0
      return wpm * word_count
    end

  end