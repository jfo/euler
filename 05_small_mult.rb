x = 1
i = 20

loop do
if x % i != 0
  x += 1
  i = 20
else
  i -= 1
  if i == 1
    p  x.to_s
    gets
  end
end
end
