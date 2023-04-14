require './lib/diary_entry.rb'

RSpec.describe DiaryEntry do
  it "builds" do
  diary_entry = DiaryEntry.new("love", "word "*100)
  expect(diary_entry.title).to eq "love"
  expect(diary_entry.contents).to eq "word "*100
  end

  describe "count_words" do
    it "returns the amount of words put in" do
      diary_entry =DiaryEntry.new("love", "")
      expect(diary_entry.count_words).to eq 0
    end
  end
  describe "reading_time" do
    it "returns the speed in inutes it would take to finish the text" do
      diary_entry =DiaryEntry.new("love", "word "*200)
      result = diary_entry.reading_time(200)
      expect(result).to eq 1
    end
    it "fails if reading speed is 0" do
        diary_entry =DiaryEntry.new("love", "word "*200)
        expect{diary_entry.reading_time(0)}.to raise_error "reading speed has to be greater than 0"
    end
  end
end