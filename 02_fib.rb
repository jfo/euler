x = 0
y = 1
wins = []

until x > 4000000 || y > 4000000
wins << x
wins << y
p x = x+y
p y = y+x
end

p wins

evens = []
wins.each do |even|
  if even.even?
    evens << even
  end
end

p evens.inject(:+)
