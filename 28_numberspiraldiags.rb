i = 1
ord = 2
sum_of_corners = 1
spiral = 1.0

until spiral >= 1001
  4.times do
    i += ord
    puts sum_of_corners += i
    spiral += 0.5
  end
ord += 2
end


puts sum_of_corners
