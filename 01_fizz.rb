def fizz(x)

  i = 1
  wins = []


  until i == x
    if i % 3 == 0 or i % 5 ==0
      wins << i
    end
  i += 1
  end

  p wins
  p wins.inject(:+)
end

fizz(1000)
