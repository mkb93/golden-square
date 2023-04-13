require './lib/reading_time.rb'

RSpec.describe "reading_time" do
  special_string = 'word '* 200
  it "returns 1 if string is equal to 200 words" do 
    expect(reading_time(special_string)).to eq 1
  end
  it "returns 200 when there 40000 words in string" do
    expect(reading_time(special_string*200)).to eq 200
  end
  context "testing failure in parameter" do
    it "fails when no input is given as text" do
      expect{reading_time(nil)}.to raise_error "needs an argument to run code"
    end
    it "fails if you input an integer instead a string" do
      expect{reading_time(20)}.to raise_error "please enter a string"
    end
  end
end