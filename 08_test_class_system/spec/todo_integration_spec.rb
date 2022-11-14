require 'todo_list'
require 'todo'

RSpec.describe TodoList do
  it "returns todo list" do
    todo_list = TodoList.new
    item = Todo.new("Feed dog")
    todo_list.add(item)
    expect(todo_list.incomplete).to eq [item]
  end

  it "returns list of completed tasks" do
    
  end
end
