class MusicTracker
  def initialize
    @song_array = []
  end

  def add_track(str)
    fail "needs to be a string longer than 0" unless str.is_a?(String) && str.length > 0
    return @song_array.push(str)
  end

  def show_tracks
    fail "no songs added" unless @song_array.length > 0
    return @song_array
  end
end