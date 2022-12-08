# Task List Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

```ruby
class TaskList
def initialize
  # ...
end

def add_task(task) # task is a string representing a todo task
  # returns nothing
end

def list
  # returns list of todo tasks as strings
end

def complete(task) # task is a string reprenting a todo task to be completed and removed
  # returns nothing
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
tasklist = TaskList.new
tasklist.add_task("Clean the kitchen")
tasklist.list # => "Clean the kitchen"

# 2
tasklist = TaskList.new
tasklist.add_task("Clean the kitchen")
tasklist.add_task("Tidy my bedroom")
tasklist.list # => "Clean the kitchen", "Tidy my bedroom"

# 3
tasklist = TaskList.new
tasklist.add_task("Clean the kitchen")
tasklist.add_task("Tidy my bedroom")
tasklist.add_task("Walk the dog")
tasklist.complete("Tidy my bedroom")
tasklist.list # => "Clean the kitchen", "Walk the dog"

# 4
tasklist = TaskList.new
tasklist.add_task("Clean the kitchen")
tasklist.add_task("Tidy my bedroom")
tasklist.add_task("Tidy my bedroom") # try to add duplicate
tasklist.list # => "Clean the kitchen", "Tidy my bedroom"

#5
tasklist = TaskList.new
tasklist.add_task("Clean the kitchen")
tasklist.add_task("Tidy my bedroom")
tasklist.complete("Walk the dog") # try to complete a task that doesn't exist
tasklist.list # => "Clean the kitchen", "Tidy my bedroom"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
