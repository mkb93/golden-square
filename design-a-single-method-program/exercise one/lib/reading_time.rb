def reading_time(text)
fail "needs an argument to run code" if text.nil?
fail "please enter a string" if text.is_a?(Integer)
  reading_speed = 200
  word_amount = text.split(' ').size
  time = (word_amount/reading_speed.to_f).ceil
  
  return time
end