system('clear')
puts 'Say your name'
name = gets.chomp

puts 'You have more 20 years old?'
puts '[1] No'
puts '[2] Yes'
years = gets.chomp.to_i

puts 'You have more 160cm?'
puts '[1] No'
puts '[2] Yes'
cm = gets.chomp.to_i

case years
when 1
  years = false
when 2
  years = true
end

case cm
when 1
  cm = false
when 2
  cm = true
end

File.open('log.txt', 'a') do |file|
  file.puts "User: #{name}"
  file.puts ">20 years old: #{years}"
  file.puts ">160cm: #{cm}"
  file.puts '-'*7
  file.puts ''
end
