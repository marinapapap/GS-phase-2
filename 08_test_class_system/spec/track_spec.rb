require 'track'

RSpec.describe Track do
  context "constructs" do
    it "returns track and artist" do
      track = Track.new("Track", "Artist")
      expect(track.title).to eq "Track"
      expect(track.artist).to eq "Artist"
    end

    it "formats the track into a string" do
      track = Track.new("Track", "Artist")
      expect(track.format).to eq "Track by Artist"
    end
  end
end
