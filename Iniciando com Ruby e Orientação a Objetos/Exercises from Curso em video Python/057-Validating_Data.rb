system "cls"
puts '='*20
puts 'Say your gender: [M/F]'

gender = gets.chomp.upcase

until gender == 'M' or gender == 'F'
  puts 'Say your gender: [M/F]'
  gender = gets.chomp.upcase
end

puts 'You sayed a correct letter!'
