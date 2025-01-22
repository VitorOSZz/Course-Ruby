def person(name, age)
  puts "Your name is #{name} and you are #{age} years old."
end

system('clear')

puts 'Say your name'
name = gets.chomp

puts 'How old are you?'
age = gets.chomp.to_i
puts person(name, age)