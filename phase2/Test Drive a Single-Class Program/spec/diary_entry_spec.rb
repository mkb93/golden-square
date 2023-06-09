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
  describe "reading_chunk" do
    context "when the contents is readable in a given time" do
      it "returns the full string" do
        diary_entry = DiaryEntry.new("word", "word word word")
        result = diary_entry.reading_chunk(10, 1)
        expect(result).to eq "word word word"
      end
    end
    context "when the contents is not readable in the given time" do
      it "returns a chunk of the content that can be read in the given time" do
        diary_entry = DiaryEntry.new("word", "word word word")
        result = diary_entry.reading_chunk(1, 1)
        expect(result).to eq "word"
      end
      it "returns a chunk of the content that can be read in the given time" do
        diary_entry = DiaryEntry.new("word", "word words word")
        diary_entry.reading_chunk(1, 1)
        result = diary_entry.reading_chunk(1, 2)
        expect(result).to eq "words word"
      end
      it "returns a chunk of the content that can be read in the given time" do
        diary_entry = DiaryEntry.new("word", "word words word")
        diary_entry.reading_chunk(2, 1)
        result = diary_entry.reading_chunk(1, 10)
        expect(result).to eq "word"
      end
      it "returns a chunk of the content that can be read in the given time" do
        diary_entry = DiaryEntry.new("word", "word words word")
        diary_entry.reading_chunk(100, 10)
        result = diary_entry.reading_chunk(2, 20)
        expect(result).to eq "word words word"
      end
    end  
    context 'when reading speed is less than or 0' do
      it 'fails with error' do
        diary_entry = DiaryEntry.new("w","w w ww w")
        expect{ diary_entry.reading_chunk(0,1)}.to raise_error "enter input higher than zero"
      end
    end
  end
end