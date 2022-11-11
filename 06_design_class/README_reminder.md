# {{TODO_LIST}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TodoList
  def initialize
    # ...
  end

  def add(task) # task is a string
    # No return value
  end

  def list
    # returns a list of tasks added as strings
    # unless they've been complete
  end

  def complete(task)
    # Throws an exception if no task is set
    # Otherwise, returns nothing
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo = TodoList.new
todo.list => []

# 2
todo = TodoList.new
todo.add("Wash car")
todo.list => ["Wash car"]

# 3
todo = TodoList.new
todo.add("Wash car")
todo.add("Feed cat")
todo.list => ["Wash car", "Feed cat"]

# 4
todo = TodoList.new
todo.add("Wash car")
todo.add("Feed cat")
todo.complete("Wash car")
todo.list => ["Feed cat"]
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
