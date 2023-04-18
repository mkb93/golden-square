require './lib/music_tracker.rb'

RSpec.describe MusicTracker do
  context "method tests" do
    it "adds and outputs tracks" do
      song_list = MusicTracker.new
      song_list.add_track("makers by mr maker")
      expect(song_list.show_tracks).to eq ["makers by mr maker"]
    end
    it "adds multiple songs and displays them in an array" do
      song = MusicTracker.new
      song.add_track('buy a car by james cannon')
      song.add_track('buy a car by james cannon')
      song.add_track('buy a car by james cannon')
      expect(song.show_tracks()).to eq ['buy a car by james cannon', 'buy a car by james cannon', 'buy a car by james cannon']
    end
  end
  context "method error" do
    it "fails if add_track method is used without a string longer than 0" do
      song = MusicTracker.new
      expect{song.add_track('')}.to raise_error "needs to be a string longer than 0"
    end
    it "fails if show_tracks method is run before add_track method" do
        song = MusicTracker.new
        expect{song.show_tracks}.to raise_error "no songs added"
    end
  end
end