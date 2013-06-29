def censor(str,rule)
  if str == rule
    return true
  end

  rule_letters = rule.split(//)
  str_letters = str.split(//)

  x = 0

flub = []

  str_letters.each do |test|
    if test == rule_letters[x]
      flub << test
      x += 1
    end
  end
    
if flub.join == rule
  return true
else
  return false
end
end

p censor('goooooooodbbbbbbbbyyyyyeeeee','goodbye')

