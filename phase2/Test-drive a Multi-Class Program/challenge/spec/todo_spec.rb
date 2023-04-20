require 'todo'

RSpec.describe Todo do
  it 'constructs' do
    todo = Todo.new('walk the dog')
    expect(todo.task).to eq 'walk the dog'
    todo.mark_done!
    expect(todo.done?).to eq true
  end
  
end