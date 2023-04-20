require 'task_formatter'

RSpec.describe TaskFormatter do
  it 'constructs' do
  task = double(:task, title: "title", complete?: false )
  task_formatter = TaskFormatter.new(task)
  expect(task_formatter.format).to eq "[ ] title"
  task1 = double(:task, title: "blab", complete?: true)
  task_formatter1 = TaskFormatter.new(task1)
  expect(task_formatter1.format).to eq "[x] blab"
  end
end