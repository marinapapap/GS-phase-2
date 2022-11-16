require 'todo_list'
require 'todo'

# As a user
# So that I can keep track of my tasks
# I want to keep a todo list along with my diary

RSpec.describe "Integration" do
  
  it "returns array with one todo" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Walk dog")
    result = todo_list.add(todo_1)
    expect(result).to eq [todo_1]
  end

  it "returns list of multiple todo tasks" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Walk dog")
    todo_2 = Todo.new("Walk cat")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    expect(todo_list.list).to eq [todo_1, todo_2]
  end


end