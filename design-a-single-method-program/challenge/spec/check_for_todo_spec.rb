require 'check_for_todo.rb'

RSpec.describe "check_for_todo method" do
  context "checking failures" do
    it "fails because does not contain 'todo'" do
      result = check_for_todo("")
      expect(result).to eq false
      end
    it "fails because individual inputs nil or integer" do
      expect{check_for_todo(nil)}.to raise_error "please input a string for argument"
    end
  end
  context "checking for todo" do
    it "passes because it contains todo" do
      result = check_for_todo("todo")
      expect(result).to eq true
    end
    it "passes because it contains 'TODO'" do
      result = check_for_todo("TODO")
      expect(result).to eq true
    end
    it "passes because it contains 'TODO' in multiple different cases" do
      result = check_for_todo("ToDo")
      expect(result).to eq true
    end
  end
end
