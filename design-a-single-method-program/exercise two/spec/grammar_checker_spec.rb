require './lib/grammar_checker.rb'

RSpec.describe "grammar_checker" do
  context "testing fails" do
    it "fails if input is nil" do
      expect{grammar_checker(nil)}.to raise_error "please enter a string"
    end
    it "fails if input is an empty string" do
      expect{grammar_checker("")}.to raise_error "please enter a longer string"
    end
    it "fails if input is an integer" do
      expect{ grammar_checker(5)}.to raise_error "please enter a string"
    end
  end
end
