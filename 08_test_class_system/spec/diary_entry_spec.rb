require 'diary_entry' 

RSpec.describe DiaryEntry do
  it "constructs" do
    entry = DiaryEntry.new("Title", "This is contents")
    expect(entry.title).to eq "Title"
    expect(entry.contents).to eq "This is contents"
  end

  describe "#count_words" do
    it "counts words" do
      entry = DiaryEntry.new("Title", "This is contents")
      expect(entry.count_words).to eq 3
    end

    it "returns 0 if contents is empty" do
      entry = DiaryEntry.new("Title", "")
      expect(entry.count_words).to eq 0
    end
  end

  describe "#reading_time(wpm)" do

    it "fails if WPM is zero" do
      entry = DiaryEntry.new("Title", "This is some more contents")
      expect { entry.reading_time(0) }.to raise_error "WPM must be positive"
    end

    it "counts words" do
      entry = DiaryEntry.new("Title", "This is some more contents")
      expect(entry.reading_time(2)).to eq 3
    end

    it "returns 0 if contents is empty" do
      entry = DiaryEntry.new("Title", "")
      expect(entry.reading_time(2)).to eq 0
    end
  end

end
