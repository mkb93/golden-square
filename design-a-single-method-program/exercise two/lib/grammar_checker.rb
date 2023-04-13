def grammar_checker(text)
  fail "please enter a string" if text.nil? 
  fail "please enter a string" if text.is_a?(Integer)
  fail "please enter a longer string" if text.length == 0
end