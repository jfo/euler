x = 100
y = 100
largest = 0


until y == 999
  until x == 999
    if x * y > largest && x * y == (x*y).to_s.reverse.to_i
       largest = x*y 
    end
    x += 1
  end
  y += 1
  x = 0
end

p largest
