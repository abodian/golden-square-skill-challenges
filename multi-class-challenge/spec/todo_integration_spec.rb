require_relative "../lib/todo"
require_relative "../lib/todo_list"

describe "Todo Integration" do
  it "adds todos to the todo list and returns all incompleted tasks" do
    todo_list = TodoList.new
    task_1 = Todo.new("Clean the kitchen")
    todo_list.add(task_1)
    expect(todo_list.incomplete).to eq [task_1]
  end

  it "adds more than one todo to the todo list and returns all incompleted tasks" do
    todo_list = TodoList.new
    task_1 = Todo.new("Clean the kitchen")
    task_2 = Todo.new("Clean the bathroom")
    todo_list.add(task_1)
    todo_list.add(task_2)
    expect(todo_list.incomplete).to eq [task_1, task_2]
  end

  it "adds todos to the to do list and returns all completed tasks" do
    todo_list = TodoList.new
    task_1 = Todo.new("Walk the cat")
    task_2 = Todo.new("Walk the dog")
    todo_list.add(task_1)
    todo_list.add(task_2)
    task_2.mark_done!
    expect(todo_list.complete).to eq [task_2]
  end
  
  it "adds todos, completes some, returns incomplete task list and returns complete task list" do
    todo_list = TodoList.new
    task_1 = Todo.new("Walk the cat")
    task_2 = Todo.new("Walk the dog")
    task_3 = Todo.new("Clean the kitchen")
    task_4 = Todo.new("Clean the bedroom")
    todo_list.add(task_1)
    todo_list.add(task_2)
    todo_list.add(task_3)
    todo_list.add(task_4)
    task_2.mark_done!
    task_3.mark_done!
    expect(task_2.done?).to eq true
    expect(task_3.done?).to eq true
    expect(todo_list.complete).to eq [task_2, task_3]
    expect(todo_list.incomplete).to eq [task_1, task_4]
  end

  it "adds todos, completes all, returns incomplete task list and returns complete task list" do
    todo_list = TodoList.new
    task_1 = Todo.new("Walk the cat")
    task_2 = Todo.new("Walk the dog")
    task_3 = Todo.new("Clean the kitchen")
    task_4 = Todo.new("Clean the bedroom")
    todo_list.add(task_1)
    todo_list.add(task_2)
    todo_list.add(task_3)
    todo_list.add(task_4)
    todo_list.give_up!
    expect(todo_list.complete).to eq [task_1, task_2, task_3, task_4]
    expect(todo_list.incomplete).to eq []
  end
end 