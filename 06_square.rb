def sumsquare(x)

  y = x
  sum_o_squares = 0 
  square_o_sums = 0

  until x == 0
    sum_o_squares += x**2
    x -= 1
  end

  until y == 0
    square_o_sums += y
    y -= 1
  end

  square_o_sums = square_o_sums**2

  p square_o_sums
  p sum_o_squares
  p square_o_sums - sum_o_squares

end

sumsquare(10)
