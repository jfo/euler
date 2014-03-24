# The series, 1**1 + 2**2 + 3**3 + ... + 10**10 = 10405071317.
# Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.

require 'pry'

def powerer(x)
  acc = 0

  until x == 0
    acc += x**x
    x-=1
  end

  acc

end

def list_powerer(x)
  sum = 0

  for i in (1..x)
    sum += i**i
  end

  sum
end




binding.pry
