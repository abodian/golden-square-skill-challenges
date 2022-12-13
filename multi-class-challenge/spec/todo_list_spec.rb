require_relative "../lib/todo_list"

describe "TodoList class" do
  it "constructs the class" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end

  it "returns nothing when complete is called" do
    todo_list = TodoList.new
    expect(todo_list.complete).to eq []
  end

  it "returns nothing when give_up! is called" do
    todo_list = TodoList.new
    expect(todo_list.give_up!).to eq []
  end

  it "returns nothing when incomplete is called" do
    todo_list = TodoList.new
    expect(todo_list.incomplete).to eq []
  end
end