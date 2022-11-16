require 'todo'

RSpec.describe Todo do

  describe "#task" do
    it "returns todo" do
      todo_1 = Todo.new("Walk dog")
      expect(todo_1.task).to eq "Walk dog"
    end
  end
  
end