require "./lib/task_tracker.rb"

RSpec.describe TaskTracker do
  context "#add_task and #show_tasks" do
    it "passes when add a task and return that one task in string format" do
      tasks = TaskTracker.new
      tasks.add_task('buy a car')
      result = tasks.show_tasks
      expect(result).to eq 'buy a car'
    end
    it "passes when add a task and return that one task in string format" do
      tasks = TaskTracker.new
      tasks.add_task('buy a car')
      tasks.add_task('buy a car')
      tasks.add_task('buy a car')
      result = tasks.show_tasks
      expect(result).to eq 'buy a car, buy a car, buy a car'
    end
  end
  context "#task_complete" do
    it "pass when list is updated removing one of the tasks" do
    tasks = TaskTracker.new
    tasks.add_task('buy a car')
    tasks.add_task('buy a dress')
    tasks.add_task('buy some fruit')
    tasks.task_complete('buy a car')
    expect(tasks.show_tasks()).to eq 'buy a dress, buy some fruit'
    end
    it "fail when list is empty and we try complete a task removing one of the tasks" do
      tasks = TaskTracker.new
      expect{tasks.task_complete('buy a car')}.to raise_error "no tasks added"
    end
  end
end
