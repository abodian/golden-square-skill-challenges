Check Grammar Method Design Recipe

1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature

```ruby
correct_grammar = check_grammar(sentence)

# * sentence is a string with words in it
# * correct_grammer returns either true or false based on description of problem
# * prints to user whether the grammar is correct or not
```

3. Create Examples as Tests
```ruby
# 1
check_grammar("")
# => false


# 2
check_grammar("This is a correct sentence.")
# => true


# 3
check_grammar("this sentence has no capital at the start.")
# => false


# 4
check_grammar("This sentence has a capital letter")
# => false


# 5
check_grammar("this sentence has the ultimate poor grammar")
# => false

```


4. Implement the Behaviour

# After each test you write, follow the test-driving process of red, green, refactor to # implement the behaviour.

