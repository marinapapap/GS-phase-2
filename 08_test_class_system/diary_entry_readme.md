# Diary Entry Integration Test Examples

# 1

diary = Diary.new
entry = DiaryEntry.new("Book", "Book is a great book")
diary.add(entry)
diary.all # => ["Book", "Book is a great book"]
