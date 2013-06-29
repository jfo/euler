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



def triangle(x)
  triangle = 0

  until x == 0
    triangle = triangle + x
    x -= 1
  end

  triangle
end


def numfact(x)
    i = 1
    factors = 0
  until i == x
    if x % i == 0
       i += 1
       factors += 1
    else
      i += 1
    end
  end
factors
end

def primefactors(x)
  count = 2
  factors = []

  until is_prime?(x)
    if x % count == 0 && is_prime?(count)
      x = x/count
      factors << count
    elsif x % count != 0 || is_prime?(count) != true
      count += 1
    end
  end


  factors << x
  factors

  factexp = []

  factors.each do |this|
    factexp << factors.count(this) + 1
    factors.delete(this)
  end

factexp.inject(:*)
end

i = 20000

until primefactors(triangle(i)) >= 500
  p i += 1
end

puts i 










#def facts(x)
#
#i = 0
#loop do
#if triangle(i).factors.length >= 500
#  puts "it is #{i}"
#  gets
#end
#if i % 1000 == 0
#  puts i
#end
#
#i += 1
#end
#

