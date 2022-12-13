require_relative "../lib/task_list"

describe "tasklist class" do
  it "adds task to task list and returns list" do
    tasklist = TaskList.new
    tasklist.add_task("Clean the kitchen")
    expect(tasklist.list).to eq "Clean the kitchen"
  end

  it "adds two tasks to list and returns list" do
    tasklist = TaskList.new
    tasklist.add_task("Clean the kitchen")
    tasklist.add_task("Tidy my bedroom")
    expect(tasklist.list).to eq "Clean the kitchen - Tidy my bedroom"
  end

  it "adds three tasks to list and then removes one, returns the list" do
    tasklist = TaskList.new
    tasklist.add_task("Clean the kitchen")
    tasklist.add_task("Tidy my bedroom")
    tasklist.add_task("Walk the dog")
    tasklist.complete("Tidy my bedroom")
    expect(tasklist.list).to eq "Clean the kitchen - Walk the dog" 
  end

  it "adds two tasks to list then tries to add duplicate but does not succes, returns the list" do
    tasklist = TaskList.new
    tasklist.add_task("Clean the kitchen")
    tasklist.add_task("Tidy my bedroom")
    tasklist.add_task("Tidy my bedroom") 
    expect(tasklist.list).to eq "Clean the kitchen - Tidy my bedroom"
  end

  it "fails if you try to complete a task that was not on the list" do
    tasklist = TaskList.new
    tasklist.add_task("Clean the kitchen")
    expect { tasklist.complete("Tidy my bedroom") }.to raise_error "Error: that task is not in the list"
  end
end