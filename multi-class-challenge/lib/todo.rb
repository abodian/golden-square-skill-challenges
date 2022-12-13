# File: lib/todo.rb
require_relative "todo_list.rb"

class Todo
  def initialize(task) 
    @task = task
    @completed_list = []
  end

  def task
    @task
  end

  def mark_done!
    @completed_list.push(@task)
  end

  def done?
    @completed_list.include?(@task)
  end
end
