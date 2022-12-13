# File: lib/todo_list.rb
require_relative "./todo.rb"

class TodoList
  def initialize
    @todo_list = []
    @completed_tasks = []
    @incomplete_tasks = []
  end

  def add(todo) # todo is an instance of Todo
    @todo_list << todo
  end

  def incomplete
    @todo_list.each { |todo| !todo.done? ? @incomplete_tasks << todo : nil }
    @incomplete_tasks
  end

  def complete
    @todo_list.each { |todo| todo.done? ? @completed_tasks << todo : nil }
    @completed_tasks
  end

  def give_up!
    @todo_list.each do | todo |
      todo.mark_done!
    end
  end
end