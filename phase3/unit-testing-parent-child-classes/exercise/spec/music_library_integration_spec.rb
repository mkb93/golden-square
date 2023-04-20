require 'music_library'
require 'track'

RSpec.describe 'Integration' do
  it "runs smoothly" do
    track = Track.new('welcome to the bungle', 'that guy')
    music_library = MusicLibrary.new
    music_library.add(track)
    expect(track.matches?('bungle')).to eq true
    expect(track.matches?('loop')).to eq false
    track1 = Track.new('nothing to lose', 'that other guy')
    music_library.add(track1)
    expect(music_library.all).to eq [['welcome to the bungle', 'that guy'], ['nothing to lose', 'that other guy']]
    expect(music_library.search('bungle')).to eq ["welcome to the bungle by that guy"]
  end
end