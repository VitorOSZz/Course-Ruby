# Exercise: Question 3 numbers and say : that number is greatist..

puts 'Say a number'

number1 = gets.chomp.to_f
puts 'Say a number'
number2 = gets.chomp.to_f
puts 'Say a number'
number3 = gets.chomp.to_f

numbers = [number1, number2 , number3]
numbers = numbers.sort { |a, b| b <=> a } # thanks documentation "https://apidock.com/ruby/Array/sort"
puts "the 1º Greratist number is #{numbers[0]}"
puts "the 2º Greratist number is #{numbers[1]}"
puts "the 3º Greratist number is #{numbers[2]}"
