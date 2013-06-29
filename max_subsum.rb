def max_subsum(numbers)

safe = numbers.join(" ")
numberstest = numbers
max = 0
result = []
i = 0

p numbers
p result

until numberstest.length == 2
  until i == numberstest.length 
    if numberstest[i..-1].to_a.inject(:+).to_i > max
      p max = numberstest[i..-1].inject(:+)
      result = numberstest[i..-1]
    end
   i+=1
  end
  numberstest.delete_at(-1)
  i = 0
end

p numbers = safe.split(/ /)
numbers.map! {|whut| whut = whut.to_i}
p numbers
p result

wins = []
wins[0] = numbers.index(result[0])
wins[1] = numbers.index(result[-1])
p wins


end

max_subsum([100,-101,200,-3,1000])
max_subsum([1,-35,-3,5,-7,59])
