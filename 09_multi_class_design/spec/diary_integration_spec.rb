require 'diary'
require 'diary_entry'

RSpec.describe "diary integration tests" do

  it "lists entries that have been added to diary" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.entries).to eq [entry_1, entry_2]
  end

  xit "counts all the words in the diary" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.count_words).to eq 6
  end

  xit "returns the time taken to read all entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.reading_time(2)).to eq 3
  end

  xit "returns the max possible time taken to read all entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.reading_time(2)).to eq 3
  end

  it "returns readable entry" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 1", "My contents too long")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.find_best_entry(3, 1)).to eq entry_1
  end

  it "finds best readable entry of max length" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    entry_3 = DiaryEntry.new("My Title 2", "1 2 3 4 5 6")
    diary.add(entry_1)
    diary.add(entry_2)
    diary.add(entry_3)
    expect(diary.find_best_entry(2, 5)).to eq entry_3
  end

  it "scans all contents for numbers and returns list" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    entry_2 = DiaryEntry.new("My Title 2", "My contents 2")
    entry_3 = DiaryEntry.new("My Title 2", "some contents 07934728476")
    diary.add(entry_1)
    diary.add(entry_2)
    diary.add(entry_3)
    expect(diary.store_numbers).to eq ["07934728476"]
  end

end
