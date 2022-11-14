class Todo
  def initialize(task) 
    @task = task
  end

  def task
    @task
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @task = @task + ": Done"
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @task.include?(": Done")
  end
end
