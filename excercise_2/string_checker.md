# {{string_checker}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

```ruby
# EXAMPLE

# `reading_time` outputs an estimate of reading time in minutes

string_check = string_checker(string)
string: a string
string_check: outputs a boolean (true or false)

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

string_checker("#TODO") => true
string_checker("hello") => false
string_checker("#TODO hello") => true
string_checker("") => false
string_checker(nil) => fail

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
