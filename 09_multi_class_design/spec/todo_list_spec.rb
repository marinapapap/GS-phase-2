require 'todo_list'

RSpec.describe TodoList do

  context "initially" do
    it "returns empty array" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq "You have no tasks!"
    end
  end

end