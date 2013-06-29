whut = []
sums =2+3

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
p whut
