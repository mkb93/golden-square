require 'diary'

RSpec.describe Diary do
  it "should create an empty array when created" do
    diary = Diary.new
    expect(diary.all).to eq []
  end
  it "should output a title and diary entry" do
    diary = Diary.new
    diary.add('words made by me')
    expect(diary.all).to eq ['words made by me']
  end
  it "should tell me the reading time for the whole diary" do
    diary = Diary.new
    diary.add('words made by me')
    expect(diary.all).to eq ['words made by me']
    expect(diary.reading_time(2)).to eq 2
  end
  it "should tell me the reading time for the whole diary" do
    diary = Diary.new
    diary.add('words made by me er')
    diary.add('words made by me er')
    expect(diary.all).to eq ['words made by me er','words made by me er']
    expect(diary.reading_time(2)).to eq 6
  end
end
