class TaskList
  def initialize
    @task_list = []
  end
  
  def add_task(task) # task is a string representing a todo task
    @task_list.push(task)
  end
  
  def list
    return @task_list.join(", ")
    # returns list of todo tasks as strings
  end
  
  def complete(task) # task is a string reprenting a todo task to be completed and removed
    # returns nothing
  end
end

tasklist = TaskList.new
tasklist.add_task("Clean the kitchen")
p tasklist.list
