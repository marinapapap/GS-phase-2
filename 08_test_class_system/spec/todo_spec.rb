require 'todo'

RSpec.describe Todo do
  it "returns task as a string" do
    todo = Todo.new("Feed dog")
    expect(todo.task).to eq "Feed dog"
  end

  it "marks task as complete" do
    todo = Todo.new("Feed dog")
    todo.task
    expect(todo.mark_done!).to eq "Feed dog: Done"
  end

  it "returns true if tasks has been done" do
    todo = Todo.new("Feed dog")
    todo.task
    todo.mark_done!
    expect(todo.done?).to eq true
  end

  it "returns false if tasks has not been marked done" do
    todo = Todo.new("Feed dog")
    todo.task
    expect(todo.done?).to eq false
  end
end