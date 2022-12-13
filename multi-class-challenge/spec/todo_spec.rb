require_relative "../lib/todo"

describe "todo class" do
  it "initializes and returns the task as a string" do
    todo = Todo.new("Clean the kitchen")
    expect(todo.task).to eq "Clean the kitchen"
  end

  it "returns nil if passed nothing" do
    todo = Todo.new(nil)
    expect(todo.task).to eq nil
  end

  it "initializes and marks the task as done, returning true" do
    todo = Todo.new("Clean the kitchen")
    todo.mark_done!
    expect(todo.done?).to eq true
  end

  it "initializes and returns false as the task is not done" do
    todo = Todo.new("Clean the kitchen")
    expect(todo.done?).to eq false
  end

  it "completes several tasks and adds it to a completed list array" do
    todo_1 = Todo.new("Clean the kitchen")
    todo_2 = Todo.new("Tidy the bedroom")
    todo_2.mark_done!
    expect(todo_2.done?).to eq true 
  end
  
  it "completes several tasks and adds it to a completed list array" do
    todo_1 = Todo.new("Clean the kitchen")
    todo_2 = Todo.new("Tidy the bedroom")
    todo_3 = Todo.new("tidy the kitchen")
    todo_2.mark_done!
    expect(todo_3.done?).to eq false
  end
end