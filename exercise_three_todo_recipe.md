TODO Method Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

```ruby
method_name = check_todo(sentence)
if includes TODO => true
if excludes TODO => false
No print/puts, no side effects - single method.
```

3. Create Examples as Tests

'''ruby

# 1
check_todo("This contains TODO")
# => true

# 2
check_todo("This does not contain it!")
# => false

# 3
check_todo(1)
# => Error: that is not a string

```

4. Implement the Behaviour

# After each test you write, follow the test-driving process of red, green, refactor to # implement the behaviour.

