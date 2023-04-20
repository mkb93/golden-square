require 'diary'
require 'secret_diary'
RSpec.describe 'diary integration' do
  it "runs smoothly" do
    diary = Diary.new("contents")
    secret_diary = SecretDiary.new(diary)
    expect(diary.read).to eq "contents"
    expect{secret_diary.read}.to raise_error "Go away!"
    secret_diary.unlock
    expect(secret_diary.read).to eq "contents"
  end
end