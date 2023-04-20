require 'music_library'
RSpec.describe MusicLibrary do
    it "does it add a track" do
        music_library = MusicLibrary.new
        track = double :track, show_artist: 'that guy', show_title: 'welcome to the bungle'
        music_library.add(track)
        expect(music_library.all).to eq [["welcome to the bungle", "that guy"]]
    end
    it "shows 2 different tracks being added" do
        music_library = MusicLibrary.new
        track = double :track, show_artist: 'that guy', show_title: 'welcome to the bungle'
        track1 = double :track, show_artist: 'that other guy', show_title: 'nothing to lose'
        music_library.add(track)
        music_library.add(track1)
        expect(music_library.all).to eq [["welcome to the bungle", "that guy"], ["nothing to lose", "that other guy"]]
    end
    it "shows the search feature finding welcome to the bungle" do
        music_library = MusicLibrary.new
        track = double :track, show_artist: 'that guy', show_title: 'welcome to the bungle', matches?: true
        track1 = double :track, show_artist: 'that other guy', show_title: 'nothing to lose', matches?: false
        music_library.add(track)
        music_library.add(track1)
        expect(music_library.search('bungle')).to eq ["welcome to the bungle by that guy"]
    end
  end