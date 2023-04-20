class Todo
    def initialize(task)
    @task=task
    end
    def show_task
      return @task
    end

    def complete
      return @task = '@'
    end
  end