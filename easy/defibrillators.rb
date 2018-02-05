include Math

def convert_to_f(data)
  data.gsub(',', '.').to_f
end

lon_a = convert_to_f(gets.chomp)
lat_a = convert_to_f(gets.chomp)

defibs = gets.to_i.times.map { gets.chomp }

result = defibs.min_by do |defib|
  data = defib.split(';')
  lon_b = convert_to_f(data[4])
  lat_b = convert_to_f(data[5])

  x = (lon_b - lon_a)*cos(0.5*(lat_a + lat_b))
  y = lat_b - lat_a
  sqrt(x**2 + y**2)
end.split(';')[1]

puts result
