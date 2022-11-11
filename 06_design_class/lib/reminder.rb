class TodoList
  def initialize
    @list = []
  end

  def add(task)
    @list << task
  end

  def list
    @list
  end

  def complete(task)
    @list.delete(task)
  end
end
