INVALID_EXTENSION = 'UNKNOWN'.freeze

@n = gets.to_i # Number of elements which make up the association table.
@q = gets.to_i # Number Q of file names to be analyzed.
extensions = Hash[@n.times.map do
    ext, mt = gets.split(" ")
    [ext.downcase, mt]
end]

files = @q.times.map { gets.chomp }

files.each do |file|
  unless file =~ /\.[a-z0-9]+$/i
    puts INVALID_EXTENSION
    next
  end

  puts extensions.fetch(file.split('.').last.downcase, INVALID_EXTENSION)
end
