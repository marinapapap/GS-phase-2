# {{TrackMusic}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TrackList
  def initialize
    # ...
  end

  def add(track) # track is string
   # adds track to list
  end

  def list
    # returns list as array
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
track_list = TrackList
track.list => []

# 2
track_list = TrackList
track_list.add("The Wind Cries Mary")
track.list => ["The Wind Cries Mary"]

# 3
track_list = TrackList
track_list.add("The Wind Cries Mary")
track_list.add("Little Wing")
track.list => ["The Wind Cries Mary", "Little Wing"]

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
