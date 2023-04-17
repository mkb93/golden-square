class TaskTracker 
  def initialize
    @task_array = []
  end
  
  def add_task (str)
    @task_array << str
  end
    
  def show_tasks
    return @task_array.join(', ')
  end
  
  def task_complete(str)
    fail "no tasks added" unless @task_array.length>0
    index = @task_array.find_index(str)
    @task_array.delete_at(index)
    return show_tasks
  end
end
  