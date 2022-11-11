require 'reminder'

# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

# As a user
# So that I can focus on tasks to complete
# I want to mark tasks as complete and have them disappear from the list.

RSpec.describe TodoList do

  describe "#list" do
    it "returns empty list" do
      todo = TodoList.new
      expect(todo.list).to eq []
    end

    it "returns a one item list" do
      todo = TodoList.new
      todo.add("Wash car")
      expect(todo.list).to eq ["Wash car"]
    end

    it "returns a multi item list" do
      todo = TodoList.new
      todo.add("Wash car")
      todo.add("Feed cat")
      expect(todo.list).to eq ["Wash car", "Feed cat"]
    end
  

    it "removes completed item from list and returns new list" do
      todo = TodoList.new
      todo.add("Wash car")
      todo.add("Feed cat")
      todo.complete("Wash car")
      expect(todo.list).to eq ["Feed cat"]
    end
  end

end