require 'diary_entry'
require 'diary'

RSpec.describe 'integration' do
  context "checks if both the classes work" do
    it "passes if all methods run" do
      diary = Diary.new()
      diary_entry = DiaryEntry.new('words', 'words made by me')
      diary.add(diary_entry.contents)
      expect(diary.all).to eq ['words made by me']
    end
    it "passes if all methods run" do
        diary = Diary.new()
        diary_entry1 = DiaryEntry.new('words', 'words not made by me')
        diary_entry2 = DiaryEntry.new('words', 'words made by me')
        diary.add(diary_entry1.contents)
        diary.add(diary_entry2.contents)
        expect(diary.all).to eq ['words not made by me', 'words made by me']
      end
    it "counts the words of all the entries" do
        diary = Diary.new()
        diary_entry1 = DiaryEntry.new('words', 'words not made by me')
        diary_entry2 = DiaryEntry.new('words', 'words made by me')
        diary.add(diary_entry1.contents)
        diary.add(diary_entry2.contents)
        expect(diary.count_words).to eq 9
    end
    it "counts the words of all the entries" do
        diary = Diary.new()
        diary_entry1 = DiaryEntry.new('words', 'words not made by me')
        diary_entry2 = DiaryEntry.new('words', 'words made by me')
        diary.add(diary_entry1.contents)
        diary.add(diary_entry2.contents)
        expect(diary.count_words).to eq 9
    end
    it "counts the words of all the entries" do
        diary = Diary.new()
        diary_entry1 = DiaryEntry.new('words', 'words not by me')
        diary_entry2 = DiaryEntry.new('words', 'words made ')
        diary.add(diary_entry1.contents)
        diary.add(diary_entry2.contents)
        expect(diary.find_best_entry_for_reading_time(2,2)).to eq 'words not by me'
    end
  end
end