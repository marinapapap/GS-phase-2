require 'todo_list'

RSpec.describe TodoList do
  it "returns empty list" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end
end