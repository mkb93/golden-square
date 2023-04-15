require 'grammar_stats.rb'

RSpec.describe GrammarStats do
  context "check method fails" do
    it "when argument is not a string" do
      stat = GrammarStats.new()
      expect{stat.check(54)}.to raise_error 'please enter a string'
    end
  end
  context "check method" do
    it "passes by returning true on a string starting with a capital letter and finishing with a question mark" do
      stat = GrammarStats.new()
      result = stat.check('Who are you?')
      expect(result).to eq true
    end
  end
  context "check method" do
    it "fails if there is no question mark at the end of the string" do
      stat = GrammarStats.new()
      result = stat.check('Who are you')
      expect(result).to eq false
    end
    it "fails if there is no capital at the start of the string" do
        stat = GrammarStats.new()
        result = stat.check('who are you.')
        expect(result).to eq false
      end
    it "passes if there is an exclamation mark and capital at the start" do
        stat = GrammarStats.new()
        result = stat.check('Who are you!')
        expect(result).to eq true
    end
  end
end