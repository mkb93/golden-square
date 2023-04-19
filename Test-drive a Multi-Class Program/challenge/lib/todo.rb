
class Todo
    def initialize(task) # task is a string
      @task = task
      @status = 'incomplete'
    end
  
    def task
      return @task
    end
  
    def mark_done!
      @status = 'complete!'
    end
  
    def done?
      @status == 'complete!' ? true : false
    end
  end