system('clear')

puts "Do you want to see: \n[1] About ceil, round and floor?\n[2] Abs"
option = gets.chomp.to_i

system('clear')

if option == 1
  puts '='*15
puts 'Tell me your grade'
grade = gets.chomp.to_f

puts "\nWho is your teacher? \n[1] Nice teacher\n[2] Just teacher\n[3] Bad teacher"
teacher = gets.chomp.to_i

passed = false

if teacher < 1 || teacher > 3
  puts 'Invalid teacher'
else
  case teacher
  when 1 # => Nice teacher
    if grade.ceil >= 6 # Ceil round up
      passed = true
    end
  when 2 # => Just teacher
    if grade.round >= 6 # Round to nearest
      passed = true
    end
  when 3 # => Bad teacher
    if grade.floor >= 6 # Floor round down
      passed = true
    end
  end
end

if passed # if passed == true
  puts 'You passed'
else
  puts 'You failed'
end
elsif option == 2
  puts 'Tell me a number'
  number = gets.chomp.to_f

  puts 'The abs method calculate how distant a number is from 0, like -10 is 10.'
  puts "This number is #{number.abs} distant from 0"
end


