class MobileNumbers
    def initialize
      @numbers = []
    end
    def list_numbers(diary)
    return diary.show_diary.map do |entry|
              entry.contents
           end.join(" ").split(" ")
    end
  end