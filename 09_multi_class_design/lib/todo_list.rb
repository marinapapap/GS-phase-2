class TodoList

  def initialize
    @todo_list = []
  end
  
  def list

    if @todo_list == []
      "You have no tasks!"
    else
      @todo_list
    end
  end
  
  def add(task)
    @todo_list << task
  end

end
