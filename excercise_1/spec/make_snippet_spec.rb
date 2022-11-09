require 'make_snippet'

RSpec.describe "Prints the first 5 words of a string and then '..." do
    it "returns the first 5 words of a string and '...' if there are more than 5 words" do
        result = make_snippet("1 2 3 4 5 6 7 8")
        expect(result).to eq "1 2 3 4 5..."
    end

    it "returns the string if there are 5 or less words" do
      result = make_snippet("1 2 3 4 5")
      expect(result).to eq "1 2 3 4 5"
    end
end
