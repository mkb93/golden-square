require 'diary'

RSpec.describe Diary do
  it "constructs a diary and returns text" do
    diary = Diary.new('contents')
    expect(diary.read).to eq 'contents' 
  end
end