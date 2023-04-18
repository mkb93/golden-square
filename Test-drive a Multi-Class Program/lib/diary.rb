require 'diary_entry'
class Diary
    def initialize
      @entries = [] 
    end
  
    def add(entry) 
      @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
     return @entries.map do |entry|
      DiaryEntry.new('sd',entry).count_wordz
     end.sum
    end
  
    def reading_time(wpm) 
      return @entries.map do |entry|
        DiaryEntry.new('sd',entry).reading_time(wpm)
       end.sum
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
      reading_times = @entries.filter do |entry|
        DiaryEntry.new('sd',entry).reading_time(wpm) <= minutes
       end 
       return reading_times.sort_by do |entry|
         DiaryEntry.new('asds',entry).count_wordz
       end.last
        
      
      

          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
    end
  end
  