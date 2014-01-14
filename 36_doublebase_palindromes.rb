sum = 0


(0..1000000).each do |num|
  num2 = num.to_s(2).to_s

  if num.to_s == num.to_s.reverse && num2 == num2.reverse
    p sum += num
  end

end

puts "The answer is : #{sum}"


