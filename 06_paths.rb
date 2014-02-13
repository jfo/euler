class Integer
  def fact 
    (1..self).reduce(:*)
  end
end

p 40.fact/((20.fact)*20.fact)
