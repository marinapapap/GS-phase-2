require 'diary'
require 'diary_entry'

RSpec.describe "integration" do

  it "lists out the entries added" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("Book 1", "Book is a great book")
    entry_2 = DiaryEntry.new("Book 2", "Book is not so great book")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.all).to eq [entry_1, entry_2]
  end


  describe "#count_words" do
    it "it counts words in all diary entries" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Book 1", "Book is a great book")
      entry_2 = DiaryEntry.new("Book 2", "Book is not so great book")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.count_words).to eq 11
    end
  end

  describe "word counting behaviour" do

    it "fails if WPM is zero" do
      diary = Diary.new
      entry = DiaryEntry.new("Title", "This is some more contents")
      diary.add(entry)
      expect { diary.reading_time(0) }.to raise_error "WPM must be positive"
    end

    it "calculate the reading time for all entries where it fits exactly" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Book 1", "This bad book")
      entry_2 = DiaryEntry.new("Book 2", "This great book")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.reading_time(2)).to eq 3
    end

    it "calculate the reading time for all entries where it falls over a minute" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("Book 1", "This book")
      entry_2 = DiaryEntry.new("Book 2", "This great book")
      diary.add(entry_1)
      diary.add(entry_2)
      expect(diary.reading_time(2)).to eq 3
    end
  end

  describe "best readin time entry behaviour" do
    context "we have one entry readable in the time" do
      it "returns that entry" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("Book 1", "This book")
        diary.add(entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq entry_1
      end
    end
  end

end