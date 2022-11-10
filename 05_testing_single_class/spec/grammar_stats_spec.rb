require 'grammar_stats'

RSpec.describe GrammarStats do

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
