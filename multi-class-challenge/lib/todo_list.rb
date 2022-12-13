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
    @todo_list.each do | todo |
      if todo.done? == false
        @incomplete_tasks.push(todo)
      end
    end
    return @incomplete_tasks
  end

  def complete
    @todo_list.each do | todo |
      if todo.done? == true
        @completed_tasks.push(todo)
      end
    end
    return @completed_tasks
  end

  def give_up!
    @todo_list.each do | todo |
      todo.mark_done!
    end
  end
end

