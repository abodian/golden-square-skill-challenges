class TaskList
  def initialize
    @task_list = []
  end
  
  def add_task(task)
    unless @task_list.include?(task)
      @task_list.push(task)
    end
  end
  
  def list
    return @task_list.join(" - ")
  end
  
  def complete(task) 
    fail "Error: that task is not in the list" unless @task_list.include? task
    @task_list.delete(task)
  end
end