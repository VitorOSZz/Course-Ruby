puts 'say a number!'
number = gets.chomp
sleep(0.5)
system('clear')
p number
puts

puts 'number.class'
puts "=> #{number.class}"      # String
puts
puts 'number.to_i.class'
puts "=> #{number.to_i.class}" # Int
puts
puts 'number.to_f.class'
puts "=> #{number.to_f.class}" # Float
puts
puts 'number.to_s.class'
puts "=> #{number.to_s.class}" # String
