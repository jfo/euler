# 
# wing iterative sequence is defined for the set of positive integers:
#
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?

def collatz_length(x)
  seq_array = [x]

  until x == 1 
   if x.even? 
     x = x/2
     seq_array << x
   else
     x = (3*x) + 1
     seq_array << x
   end
  end

  return seq_array.length
end

  
def find_longest(x)
  longest = 0
  winnum = 0
  until x == 0
    if collatz_length(x) > longest
      longest = collatz_length(x)
      winnum = x
    end
  p x-=1
  end
puts "The longest Collatz sequence is generated from #{winnum}, with a length of #{longest} numbers."
end


find_longest(1000000)
