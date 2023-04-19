require 'diary'
require 'diary_entry'
require 'todo'
require 'mobile_numbers'

RSpec.describe 'Integration' do
  it 'shows the correct amount of the todo list' do
    diary = Diary.new
    entry = DiaryEntry.new('numbers','3434 34342 23423423 23432432')
    diary.add_diary(entry)
    todo = Todo.new('get the numbers from the diary')
    diary.add_todo(todo)
    expect(diary.show_todo_list).to eq ['get the numbers from the diary']
    expect(diary.find_entry(4,1)).to eq '3434 34342 23423423 23432432'
    numbers = MobileNumbers.new
    expect(numbers.list_numbers(diary)).to eq ['3434', '34342', '23423423', '23432432']
    todo.complete 
    expect(diary.show_todo_list).to eq ['@']
  end
end