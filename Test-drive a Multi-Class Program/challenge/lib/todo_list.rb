class TodoList
  def initialize
    @list = []
  end

  def add(todo) 
    return @list << todo
  end

  def incomplete
    return @list.map{ |item| 
    if !item.done?
      item.task
    end 
    }
  end

  def complete
    return @list.map{ |item| 
    if item.done?
      item.task
    end 
    }
  end

  def give_up!
    fail 'no items in list' unless @list.length>0
    @list.each{ |item|
      item.mark_done!
    }
  end
end
