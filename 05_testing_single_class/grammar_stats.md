# {{grammar_stats}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I know how many sentences I type correctly
I want to see a percentage of texts checked so far that passed the check.

## 2. Design the Method Signature

```ruby
# EXAMPLE

# `reading_time` outputs an estimate of reading time in minutes

stats = GrammarStats.new
GrammarStats.check("Hello.")
GrammarStats
check(text): a string
percentage_good: outputs as an integer (the percentage of texts checked so far that passed)

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
