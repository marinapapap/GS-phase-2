class TrackList
  def initialize
    @list = []
  end

  def add(track) # track is string
   # adds track to list
   fail "Invalid nil entry" unless track != nil

   @list << track
  end

  def list
    @list
  end
end

# tracklist = TrackList.new
# tracklist.add(nil)