# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

```ruby
# EXAMPLE

# `reading_time` outputs an estimate of reading time in minutes

reading_time = reading_timer(text)
text: a string
reading_timer: outputs an estimate of minutes as integer

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

reading_time("") => 0
reading_time(200_words) => 1
reading_time(400_words) => 2
reading_time(299_words) => 1
reading_time(300_words) => 2
reading_time(nil) => fail

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
