require 'music_library'


RSpec.describe MusicLibrary do
  context "initially" do
    it "is empty" do
      library = MusicLibrary.new
      expect(library.all).to eq []
    end

    it "responds to searches with an empty list" do
      library = MusicLibrary.new
      expect(library.search_by_title("Little Wing")).to eq []
    end
  end
end
