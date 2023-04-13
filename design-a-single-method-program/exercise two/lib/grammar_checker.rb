def grammar_checker(text)
  fail "please enter a string" if text.nil? 
  fail "please enter a string" if text.is_a?(Integer)
  fail "please enter a longer string" if text.length == 0
  fail 'no capital letter' if text[0].ord > 90 || text[0].ord < 65
  fail "punctuation error" if text[-1] != '.' || text[-1] != '?' || text[-1] != '!'
end