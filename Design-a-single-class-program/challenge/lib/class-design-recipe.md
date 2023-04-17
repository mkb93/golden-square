# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

the Class needs to have a method that collects inputted task and then outputs them in readable format
have a method that allows you to change the status of a class from incomplete to complete

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class TaskTracker 
  def init
  @task_array = []
  end

  def add_task (str)
  end
  
  def show_tasks
  end

  def task_update(str, status)

  end
end


## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
tasks = TaskTracker.new
tasks.add_task('buy a car')
expect(tasks.show_tasks()).to eq 'buy a car
# 2
tasks = TaskTracker.new
tasks.add_task('buy a car')
tasks.add_task('buy a car')
tasks.add_task('buy a car')
expect(tasks.show_tasks()).to eq buy a car, buy a car, buy a car
# 3
tasks = TaskTracker.new
tasks.add_task('buy a car')
tasks.add_task('buy a dress')
tasks.add_task('buy some fruit')
tasks.task_update('buy a car', true)
expect(tasks.show_tasks()).to eq 'buy a dress, buy some fruit'

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->