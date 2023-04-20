class SecretDiary
    def initialize(diary) # diary is an instance of Diary
      @contents = diary.read
      @access = "locked"
    end
  
    def read
    fail "Go away!" if @access == "locked"
    return @contents
    end
  
    def lock
      @access = "locked"
    end
  
    def unlock
      @access = "open"
    end
  end