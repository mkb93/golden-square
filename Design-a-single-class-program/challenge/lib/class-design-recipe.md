# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class MusicTracker
  def initialize
  @music_array = []

  end

  def add_track (str)
  #use this to add a string to the music array
  end
  
  def show_tracks
  #use this method to show an array of music that you've listened too
  end
end


## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
song = MusicTracker.new
tasks.add_track('song by james cannon')
expect(tasks.show_tasks()).to eq ['song by james cannon']
# 2
song = MusicTracker.new
song.add_track('buy a car by james cannon')
song.add_track('buy a car by james cannon')
song.add_track('buy a car by james cannon')
expect(song.show_tracks()).to eq [buy a car by james cannon, buy a car by james cannon, buy a car by james cannon]
#3
song = MusicTracker.new
expect(song.show_tracks).to raise_error 'no tracks added'
#4 
song = MusicTracker.new
expect{song.add_track("")}.to raise_error "need to be a string longer than 0"

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->