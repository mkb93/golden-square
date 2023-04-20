require 'mobile_numbers'
require 'diary'

RSpec.describe MobileNumbers do
  context 'testing failures' do
    it 'fails if there are no numbers' do
      mobile_numbers = MobileNumbers.new
      diary = Diary.new
      expect{ mobile_numbers.list_numbers(diary)}.to raise_error 'no input in diary'
    end
  end
end