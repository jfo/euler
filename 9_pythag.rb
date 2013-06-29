a = 1.0
b = 2.0


loop do   
  until b == 1000
    if a + b + (((a**2)+(b**2))**0.5) == 1000
      puts a
      puts b
      puts (((a**2)+(b**2))**0.5)
      puts a * b * (((a**2)+(b**2))**0.5)

    end
    b += 1
  end
  a += 1
  b = a
end

