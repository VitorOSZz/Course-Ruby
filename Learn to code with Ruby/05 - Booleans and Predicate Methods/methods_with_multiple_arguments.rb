system('clear')

puts "10 between 1, 20?  => #{10.between?(1, 20)}" # => true
puts "-10 between -20, -1?  => #{-10.between?(-20, -1)}" # => true
puts 'Remember your math classes, -10 is not between -20 and -1'
puts "-10 between -1, -20?  => #{-10.between?(-1, -20)}" # => false