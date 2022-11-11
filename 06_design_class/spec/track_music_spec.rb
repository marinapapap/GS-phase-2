require 'track_music'

# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

RSpec.describe TrackList do

  describe "#list" do
    it "returns empty list if no track added" do
      track_list = TrackList.new
      expect(track_list.list).to eq []
    end

    it "returns a one item list" do
      track_list = TrackList.new
      track_list.add("The Wind Cries Mary")
      expect(track_list.list).to eq ["The Wind Cries Mary"]
    end

    it "returns a multi item list" do
      track_list = TrackList.new
      track_list.add("The Wind Cries Mary")
      track_list.add("Little Wing")
      expect(track_list.list).to eq ["The Wind Cries Mary", "Little Wing"]
    end
  

  context "fails" do
    it "it fails" do
      track_list = TrackList.new
      expect { track_list.add(nil) }.to raise_error "Invalid nil entry"
    end
  end
end
  


end
