# File: lib/todo.rb
require_relative "todo_list.rb"

class Todo
  def initialize(task) 
    @task = task
    @complete = false
  end

  def task
    @task
  end

  def mark_done!
    @complete = true
  end

  def done?
    return @complete
  end
end
