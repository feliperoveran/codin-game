n = gets.to_i
strenghts = n.times.map do
  gets.to_i
end.sort

puts strenghts.each_cons(2).map { |a, b| b - a }.min
