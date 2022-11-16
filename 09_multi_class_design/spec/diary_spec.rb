require 'diary'

RSpec.describe Diary do

  context "intially" do
    it "intializes with an empty array" do
      diary = Diary.new
      expect(diary.entries).to eq []
    end
  end

  context "it fails" do

    xit "if no entries have been added" do
      diary = Diary.new
      expect { diary.count_words }.to raise_error "No words to count"
    end

    it "if wpm isn't positive" do
      diary = Diary.new
      expect { diary.find_best_entry(0, 6) }.to raise_error "WPM must be positive"
    end

    it "if no entries to scan for" do
      diary = Diary.new
      expect { diary.store_numbers }.to raise_error "No entries to read"
    end

    it "if wpm isn't positive" do
      diary = Diary.new
      expect { diary.reading_time(0) }.to raise_error "WPM must be positive"
    end
end

end