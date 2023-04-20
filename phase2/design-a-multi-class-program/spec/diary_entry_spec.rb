require 'diary_entry'
require 'diary'

RSpec.describe DiaryEntry do
  context 'testing failures' do
    it 'fails if wpm is 0' do
      diary_entry = DiaryEntry.new('word', 'Words')
      diary = Diary.new
      expect{ diary_entry.reading_time(0)}.to raise_error 'wpm needs to be greater than 0'
    end
  end
end