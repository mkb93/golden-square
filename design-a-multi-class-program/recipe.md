# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries



## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

Diary class
-add/stores diary entry Class
-find_an_entry_that_is closest_to_the _free_time_I_have
-add todo to todo_list
-show_todo_list_incomplete
DiaryEntry class
- you can input a entry string with title
-word_count
-reading_time 

todo class
-complete
mobile_numbers class
-list numbers




_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
  todolist
  diary = []
  end

  def add_diary(entry)
  end

  def find_entry(wpm,minutes)
  end
  
  def add_todo(todo)
  end

  def show_todo_list
  end
end
  
class diary_entry
  def initialize(title, string)
  
  end
  
  def word_count
  end

  def reading_time
  end
end
class todo
  def initialize(task)
  @task=task
  end
  def complete(task)
  end
end
class MobileNumbers
  def initialize
    @numbers = []
  end
  def list_numbers(diary)

  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

diary = Diary.new
entry = DiaryEntry.new('numbers',' 3434 34342 23423423 23432432')
diary.add(entry)
todo = Todo.new('get the numbers from the diary')
diary.show_todo_list
diary.find_entry(4,1)
numbers = MobileNumbers.new
numbers.list_numbers(diary)
todo.complete
diary.show_todo_list => []



## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fmulti_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->