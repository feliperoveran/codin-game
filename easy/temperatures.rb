@n = gets.to_i # the number of temperatures to analyse
inputs = gets.split(" ")

sorted = inputs.map(&:to_i).sort.group_by { |i| i <=> 0 }

lower_than_zero = sorted.fetch(-1, []).max
higher_than_zero = sorted.fetch(1, []).min
equal_to_zero = sorted.fetch(0, []).first

puts higher_than_zero || lower_than_zero || equal_to_zero || 0