def letter_check(word, letter_counts)

all_letters = word.split(//)
all_letters = all_letters.uniq!

resulthash = {} 
all_letters.each do |testletter|
  resulthash[testletter] = word.count(testletter)
end

resulthash.each_key do |testagain|
  if resulthash[testagain] != letter_counts[testagain] && letter_counts.keys.include?(testagain)
  return false
end
end
true
end

puts letter_check("abcccadd", {"a"=>2, "b"=>1, "c"=>3})
