require 'grammar_stats.rb'

RSpec.describe GrammarStats do
  context "check method fails" do
    it "when argument is not a string" do
      stat = GrammarStats.new()
      expect{stat.check(54)}.to raise_error 'please enter a string'
    end
  end
end