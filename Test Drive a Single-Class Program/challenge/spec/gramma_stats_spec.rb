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
  describe "#percentage_good method" do
    it "returns 100 when no check tests have been done" do
      stat = GrammarStats.new
      expect(stat.percentage_good()).to eq 100
    end
    it "returns 50 when 1 check passed and 1 check failed" do
        stat = GrammarStats.new
        stat.check('Who are you!')
        stat.check('Who are you')
        expect(stat.percentage_good()).to eq 50
      end
    it "returns 20 if 4 checks failed and 1 passed" do
        stat = GrammarStats.new
        stat.check('Who are you')
        stat.check('Who are you')
        stat.check('Who are you')
        stat.check('Who are you')
        stat.check('Who are you!')
        expect(stat.percentage_good()).to eq 20
    end
    it "returns 80 if 4 checks passed and 1 fails" do
        stat = GrammarStats.new
        stat.check('Who are you!')
        stat.check('Who are you!')
        stat.check('Who are you!')
        stat.check('Who are you!')
        stat.check('Who are you')
        expect(stat.percentage_good()).to eq 80
    end
    it "returns 0 if check has 1 fails" do
        stat = GrammarStats.new
        stat.check('Who are you')
        expect(stat.percentage_good()).to eq 0
    end
  end
end