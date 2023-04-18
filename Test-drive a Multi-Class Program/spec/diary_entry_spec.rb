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
end