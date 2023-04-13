def check_for_todo(str)
  fail "please input a string for argument" if str.nil?
  str.upcase!
  if str.include?('TODO') 
    true
  else
    false
  end
end