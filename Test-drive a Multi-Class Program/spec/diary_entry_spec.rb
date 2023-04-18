require 'diary_entry'

RSpec.describe DiaryEntry do
  it "returns a title and a contents string" do
    diary_entry = DiaryEntry.new("word", "word "*100)
    result = diary_entry.title
    expect(result).to eq "word"
    expect(diary_entry.contents).to eq "word "*100
  end
  context "#count_wordz" do
    it 'returns the amount of words in a diary entry' do
      diary_entry = DiaryEntry.new('word', 'my favourite words live in the dungeon')
      expect(diary_entry.count_wordz).to eq 7
    end
  end
  context "#reading_time" do
    it 'returns an upper estimate on how long it will take a user to finish reading this text' do
      diary_entry = DiaryEntry.new('word', 'my favourite words live in the dungeon')
      expect(diary_entry.reading_time(2)).to eq 4
    end
  end
  context "#reading_chunk" do
    it "returns a chunk of text that you've read" do
        diary_entry = DiaryEntry.new('word', 'my favourite words live in the dungeon')
        expect(diary_entry.reading_chunk(2,1)).to eq 'my favourite'
    end
    it "returns a chunk of text that you've read" do
        diary_entry = DiaryEntry.new('word', 'my favourite words live in the dungeon')
        diary_entry.reading_chunk(2,1)
        expect(diary_entry.reading_chunk(2,1)).to eq 'words live'
    end
  end
end