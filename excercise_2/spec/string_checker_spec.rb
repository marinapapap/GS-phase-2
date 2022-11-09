require 'string_checker'

# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

RSpec.describe "checks if the string includes '#TODO'" do

  it "returns true if string is equal to '#TODO'" do
    result = string_checker("#TODO")
    expect(result).to eq true
  end

  it "returns false if the string doesn't include '#TODO'" do
    result = string_checker("hello")
    expect(result).to eq false
  end

  it "returns true if string includes '#TODO" do
    result = string_checker("#TODO hello")
    expect(result).to eq true
  end

  it "returns false if string is empty" do
    result = string_checker("")
    expect(result).to eq false
  end

  it "it returns error message if nil" do
    expect { string_checker(nil) }.to raise_error "Invalid nil entry"
  end

end