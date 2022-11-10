require 'grammar_stats'

RSpec.describe GrammarStats do

  describe "#check(text)" do

    context "returns true" do
      it "when string is 'Hello.'" do
        stats = GrammarStats.new
        result = stats.check("Hello.")
        expect(result).to eq 1
      end
    end
  end

  #   it "when string is 'Hello?'" do
  #     result = check("Hello?")
  #     expect(result).to eq true
  #   end

  #   it "when string is 'Hello!'" do
  #     result = check("Hello!")
  #     expect(result).to eq true
  #   end
 
  # end

  # context "returns false" do
  #   it "when string is 'hello.'" do
  #     result = check("hello.")
  #     expect(result).to eq false
  #   end

  #   it "when string is 'Hello'" do
  #     result = check("Hello")
  #     expect(result).to eq false
  #   end
  # end

  # context "returns fail" do
  #   it "when nil" do
  #     expect { check(nil) }.to raise_error "Invalid nil value"
  #   end

  #   it "when string is ''" do
  #     expect { check("")}.to raise_error "Invalid nil value"
  #   end
  # end

  # end

  describe "#percentage_good" do

    it "returns an integer as the percentage of tests checked which are correct" do
      stats = GrammarStats.new
      stats.check("Hello.")
      expect(stats.percentage_good).to eq 100
    end

    it "returns a 50 if 50% of the tests have passed" do
      stats = GrammarStats.new
      stats.check("Hello.")
      stats.check("hello.")
      expect(stats.percentage_good).to eq 50
    end

  end
end
