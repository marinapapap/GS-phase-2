require 'music_library'
require 'track'

RSpec.describe "Music Library Integration" do
  context "when we add tracks to the library" do
    it "returns track" do
      library = MusicLibrary.new
      track = Track.new("Carte Blanche", "Veracocha")
      library.add(track)
      expect(library.all).to eq [track]
    end
 
    it "creates library" do
      library = MusicLibrary.new
      track_1 = Track.new("Track_1", "Artist_1")
      track_2 = Track.new("Track_2", "Artist_2")
      library.add(track_1)
      library.add(track_2)
      expect(library.all).to eq [track_1, track_2]
    end
  end

  context "when we have added track to the library" do
    it "searched for track by full title" do
      library = MusicLibrary.new
      track_1 = Track.new("Track_1", "Artist_1")
      track_2 = Track.new("Track_2", "Artist_2")
      library.add(track_1)
      library.add(track_2)
      result = library.search_by_title("Track_1")
      expect(result).to eq [track_1]
    end

    it "searched for track by substring" do
      library = MusicLibrary.new
      track_1 = Track.new("Track_1", "Artist_1")
      track_2 = Track.new("Track_2", "Artist_2")
      library.add(track_1)
      library.add(track_2)
      result = library.search_by_title("Track")
      expect(result).to eq [track_1, track_2]
    end

    context "when there are no tracks matching" do
      it "yields an empty list when searching" do
        library = MusicLibrary.new
        track_1 = Track.new("Track_1", "Artist_1")
        track_2 = Track.new("Track_2", "Artist_2")
        library.add(track_1)
        library.add(track_2)
        result = library.search_by_title("Little Wing")
        expect(result).to eq []
      end
    end
  end
end
