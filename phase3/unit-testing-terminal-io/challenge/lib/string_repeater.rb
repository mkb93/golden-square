
# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts 'Hello. I will repeat a string many times'
    @io.puts 'Please enter a string'
    str = @io.gets
    fail 'enter a string'if !str.is_a?(String)
    @io.puts 'Please enter a number of repeats'
    num = @io.gets.to_i
    @io.puts 'here is the result:'
    @io.puts str*num 
  end
end
string_repeater = StringRepeater.new(Kernel)
string_repeater.run