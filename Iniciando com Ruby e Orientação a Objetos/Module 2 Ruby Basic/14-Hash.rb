system('cls')
=begin
person = {name: 'Vitor' , age: 15}

puts "me : #{person}"

puts 'say your name?'
name = gets.chomp
puts 'say your age: '
age = gets.chomp
personUser = {name: name,  age: age}
puts "you : #{personUser}"
puts "Your name : #{personUser[:name]}"
puts "Your age : #{personUser[:age]}"
=end

grades = {Vitor: 8.5 , Rafael: 9}
age = {Vitor: 15 , Rafael: 14}
nacionallty = {Vitor: 'Brazillian' , Rafael: 'Brazillian'}

puts "Rafael: grades: #{grades[:Rafael]} , age: #{age[:Rafael]} , Nacionallty #{nacionallty[:Rafael]}"
puts "Vitor : grades: #{grades[:Vitor]} , age: #{age[:Vitor]} , Nacionallyty #{nacionallty[:Vitor]}"
