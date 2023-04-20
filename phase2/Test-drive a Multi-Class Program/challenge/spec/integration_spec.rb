require 'todo_list'
require 'todo'

RSpec.describe 'integration' do
  context 'todo_list functioning in conjuction with todo' do
    it 'adds a todo to todo_list ' do
      todo_list = TodoList.new
      todo = Todo.new('todo')
      todo_list.add(todo)
      expect(todo_list.incomplete).to eq ['todo']
    end
    it 'adds a todo to todo_list ' do
      todo_list = TodoList.new
      todo = Todo.new('todo')
      todo_list.add(todo)
      todo2 = Todo.new('todo2')
      todo_list.add(todo2)
      todo2.mark_done!
      todo.mark_done!
      expect(todo_list.complete).to eq ['todo', 'todo2']
    end
    it 'adds a todo to todo_list ' do
      todo_list = TodoList.new
      todo = Todo.new('todo')
      todo_list.add(todo)
      todo2 = Todo.new('todo2')
      todo_list.add(todo2)
      todo_list.give_up!
      expect(todo_list.complete).to eq ['todo', 'todo2']
    end
    it 'fails if list is empty' do
      todo_list = TodoList.new
      expect{todo_list.give_up!}.to raise_error 'no items in list'
    end
  end
end