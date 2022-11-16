require 'diary_entry'

RSpec.describe DiaryEntry do

describe "#title" do
  it "prints the title" do
    entry = DiaryEntry.new("My Title 1", "My contents 1")
    expect(entry.title).to eq "My Title 1"
  end
end

describe "#contents" do
  it "prints the contents" do
    entry = DiaryEntry.new("My Title 1", "My contents 1")
    expect(entry.contents).to eq "My contents 1"
  end
end

describe "#count_words" do
  it "counts the words in an entry" do
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    expect(entry_1.count_words).to eq 3
  end
end

describe "reading_time(wpm)" do
  it "returns the reading time" do
    entry_1 = DiaryEntry.new("My Title 1", "My contents 1")
    expect(entry_1.reading_time(2)).to eq 2
  end
end

describe "#scan_for_number" do
  it "scans contents for nummbers" do
    entry_1 = DiaryEntry.new("My Title 1", "My contents 07956374857")
    expect(entry_1.scan_for_number).to eq ["07956374857"]
  end
end

end