def grammar_checker(text)
 punctuation = '.!?'
 fail "please enter a string" if text.nil? 
  fail "please enter a string" if text.is_a?(Integer)
  fail "please enter a longer string" if text.length == 0
  fail 'no capital letter' if text[0].ord > 90 || text[0].ord < 65
  if !punctuation.include?(text[-1])
  fail "punctuation error" 
  end
  "Correct"
end
