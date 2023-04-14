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
  it 'outputs the amount of words in the contents of the variable' do
    entry = DiaryEntry.new('Love','it all began when we went to the moon the low lights were wonderous. '*200)
    result = entry.count_words
    expect(result).to eq 2800
  end
  it 'outputs the time in minutes that it would take to read the diary entry' do
    entry = DiaryEntry.new('Love','it all began when we went to the moon the low lights were wonderous. '*200)
    result = entry.reading_time(100)
    expect(result).to eq 28
  end  
end 