def is_prime?(x)
  i = 2

  until i == x
    if x%i != 0
       i+=1
    else
      return false
    end
  end
return true
end


def largest_prime(x)
  i = 3

  primes = [2]

  until primes.length == 10001
    if is_prime?(i)
      primes << i
      i += 1
    end
      i += 1
  end

  p primes
  p primes.length
  gets
  i = 0
  factors  = []

   until is_prime?(x)
    if x % primes[i] != 0
       i += 1
    elsif x % primes[i] == 0
      factors << primes[i]
      x = x / primes[i]
    end
  end
  factors << x
  return factors
end

sums = 2+3
whut = []
state = Numeric.new
  (4..200).each do |i|
    (2..(Math.sqrt(i).ceil)).each do |thing|
      state = 1
      if (i.divmod(thing)[1] == 0)
      state = 0
      break
      end
    end
    whut << i
    sums += i  unless (state == 0)
  end 





