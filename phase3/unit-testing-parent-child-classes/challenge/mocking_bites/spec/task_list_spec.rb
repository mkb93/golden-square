require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end
  
  describe '#all' do
    it "returns both tracks" do 
    task_list = TaskList.new
    task1 = double :task, title: 'task1'
    task2 = double :task, title: 'task2'
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all).to eq [task1, task2]
    end
  end
  describe '#all_complete?' do
  it "returns both tracks" do 
    task_list = TaskList.new
    task1 = double :task, title: 'task1', complete?: false
    task2 = double :task, title: 'task2', complete?: false
    task_list.add(task1)
    task_list.add(task2)
    expect(task_list.all_complete?).to eq false
    end
  end
  # Unit test `#all` and `#all_complete?` behaviour
end
