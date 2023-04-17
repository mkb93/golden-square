require "./lib/task_tracker.rb"

RSpec.describe TaskTracker do
  context "#add_task and #show_tasks" do
    it "passes when add a task and return that one task in string format" do
      tasks = TaskTracker.new
      tasks.add_task('buy a car')
      result = tasks.show_tasks
      expect(result).to eq 'buy a car'
    end
  end
end
