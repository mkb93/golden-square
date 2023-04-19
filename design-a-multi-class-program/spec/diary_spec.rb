require 'diary'

RSpec.describe Diary do
  context 'testing failures' do
    it 'fails if wpm is too slow' do
      diary = Diary.new
      diary.add_diary('words words words')
      expect{ diary.find_entry(0,4)}.to raise_error 'wpm needs to be greater than 0'
    end
    it 'fails if no dairy entry' do
        diary = Diary.new
        expect{ diary.find_entry(1,4)}.to raise_error 'no diary entries'
      end
  end
end