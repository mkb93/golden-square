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
end
