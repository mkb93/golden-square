require './lib/diary_entry.rb'

RSpec.describe DiaryEntry do
  it 'outputs the title of the variable' do
    title = DiaryEntry.new('Love','it all began when we went to the moon the low lights were wonderous.')
    result = title.title
    expect(result).to eq 'Love' 
  end
  it 'outputs the contents of the variable' do
    contents =  DiaryEntry.new('Love','it all began when we went to the moon the low lights were wonderous.')
    result = contents.contents
    expect(result).to eq 'it all began when we went to the moon the low lights were wonderous.'
  end 
end 