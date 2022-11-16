class Diary

  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def entries
    @entries
  end

  # def count_words
  #   fail "No words to count" unless @entries != []
  #   @entries.sum do |entry|
  #     entry.count_words
  #   end
  # end

  def reading_time(wpm)
    fail "WPM must be positive" unless wpm.positive?
    (count_words / wpm.to_f).ceil
  end

  def find_best_entry(wpm,minutes)
    fail "WPM must be positive" unless wpm.positive?

    num_words = wpm * minutes
    readable_entries = @entries.select do |entry|
      entry.count_words <= num_words
    end

    readable_entries.max do |a, b|
      a.count_words <=> b.count_words
    end

    readable_entries.last
  end

  def store_numbers

    fail "No entries to read" unless @entries != []

    result = []
    @entries.each do |entry|
      matches = entry.scan_for_number
      matches.each do |number|
        result << number
      end
    end
    # numbers = @entries.filter do |entry|
    #   entry.contents.include?("07")
    # end

    # numbers.map do |item|
    #   item.contents.split(" ").select do |a|
    #     a.include?("07")
    #   end
    # end
    
    result

  end

end

require_relative 'diary_entry'

diary = Diary.new
entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
entry_3 = DiaryEntry.new("My Title 2", "some contents 079347284763")
diary.add(entry_1)
diary.add(entry_2)
diary.add(entry_3)
puts diary.store_numbers # to eq ["079347284763"]
