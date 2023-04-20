require 'secret_diary'

RSpec.describe SecretDiary do
  it "constructs and raises error when you try read" do
    diary = double(:diary, read: 'contents')
    secret_diary = SecretDiary.new(diary)
    expect{secret_diary.read}.to raise_error "Go away!"
    secret_diary.unlock
    expect(secret_diary.read).to eq 'contents'
  end
end