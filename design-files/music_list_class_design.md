# Music List Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

```ruby
class MusicList
def initialize
  # ...
end

def add(track) # track is a string representing a music track that the user has listened to
  # returns nothing
end

def list
  # returns a list of tracks the user has listened to
end

```

## 3. Create Examples as Tests

```ruby
# 1
musiclist = MusicList.new
musiclist.add("Highway to Hell")
musiclist.list # => "Highway to Hell"

# 2
musiclist = MusicList.new
musiclist.add("Highway to Hell")
musiclist.add("Ace of Spades")
musiclist.list # => "Highway to Hell - Ace of Spades"

# 3
musiclist = MusicList.new
musiclist.add("Highway to Hell")
musiclist.add("Ace of Spades")
musiclist.add("Ace of Spades") # try to add duplicate
musiclist.list # => "Highway to Hell - Ace of Spades"

# 4
musiclist = MusicList.new
musiclist.list # => "Error: No music added to your list"
```


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
