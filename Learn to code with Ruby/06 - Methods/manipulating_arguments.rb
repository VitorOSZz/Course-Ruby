def person (name, age)
  puts "#{name.upcase} on next five years you will be #{age + 5} years old"
end

puts 'Whats your name?'
name = gets.chomp
puts 'How old are you?'
age = gets.chomp.to_i

person(name,age)