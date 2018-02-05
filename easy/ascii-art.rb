@length = gets.to_i
@height = gets.to_i
@text = gets.chomp.upcase
@ascii = @height.times.map { gets.chomp }

characters = ('A'..'Z').to_a + ['?']

# for each character, fetch the corresponding ASCII art representation and store it on a dictionary structure like
# { 'A' => (ascii art), 'B' => (ascii art), ... }
hash = Hash[characters.map { |l| [l, @ascii.map { |a| a.slice!(0..@length-1)}]}]

@height.times do |n|
  result = @text.chars.map do |letter|
    hash.fetch(letter, hash['?'])[n]
  end

  puts result.join
end
