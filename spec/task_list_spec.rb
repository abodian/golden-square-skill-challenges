require_relative "../lib/task_list"

describe "tasklist class" do
  it "adds task to task list" do
  tasklist = TaskList.new
  tasklist.add_task("Clean the kitchen")
  expect(tasklist.list).to eq "Clean the kitchen"
  end


end