require 'count_words'

RSpec. describe "count words in string" do
  it "returns number of words in string" do
    result = count_words("hello I am a string")
    expect(result).to eq 5
  end
  it "returns 0 if there is no string" do
    result = count_words("")
    expect(result).to eq 0
  end
end
