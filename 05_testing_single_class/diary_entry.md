# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can manage my time
I want to see how much I can read within x amount of minutes

## 2. Design the Method Signature

```ruby
# EXAMPLE

# `reading_time` outputs an estimate of reading time in minutes

chunk = DiaryEntry.new('title', 'contents')
chunk.reading_chunk(wpm, minutes)
wpm: an integer
minutes: an integer
chunk: outputs a string

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

chunk = DiaryEntry.new('title', 'contents')
chunk.reading_chunk(1, 1) => 'one'

chunk = DiaryEntry.new('title', 'contents')
chunk.reading_chunk(5, 5) => '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25'

chunk = DiaryEntry.new('title', 'contents')
chunk.reading_chunk(nil, 5) => fail 

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
