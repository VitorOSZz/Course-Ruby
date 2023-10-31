# In ruby have too swicth case from javascript,if, else if, else
# , unless(if not)

puts 'Say a number on 1 to 100'
numberSayed = gets.chomp.to_i
=begin
if numberSayed < 1
  puts 'Error. your number is less than 1!'
elsif numberSayed > 100
  puts 'Error, your number is greater than 100'
else
  puts "Your number is #{numberSayed} and is less or equal than 100 and greater or equal than 1! :D"
end
=end

=begin
unless numberSayed < 1
  unless numberSayed > 100
    puts 'Your number is correct'
  end
end
=end

if numberSayed >= 1 and numberSayed <= 100
  puts ' lol'
end

case
when numberSayed > 100
  puts 'Error, your number is greater than 100'
when numberSayed < 1
  puts 'Error, your number is less than 1!'
when numberSayed == 1
  puts 'Your number is 1, equal to 1 and less than 100'
when numberSayed == 100
  puts 'Your number is equal to 100 and greater than 1!'
when numberSayed > 1 && numberSayed < 100
  puts "Your number is #{numberSayed} and is less than 100 and greater than 1! :D"
end
