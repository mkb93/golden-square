class Diary
    def initialize
    @todo_list =[]
    @diary = []
    end
    def show_diary
      return @diary
    end
    def add_diary(entry)
      @diary << entry
    end
  
    def find_entry(wpm,minutes)
      fail 'no diary entries' unless @diary.length > 0
      fail 'wpm needs to be greater than 0' unless wpm > 0
      words = wpm * minutes
      @diary.filter{ |entry| 
      entry.word_count <= wpm * minutes
    }.sort_by do |entry| 
        entry.word_count
      end.last.contents
    end
    def add_todo(todo)
        @todo_list << todo
    end
  
    def show_todo_list
        return @todo_list.map do |todo|
          todo.show_task
        end
    end
  end
    