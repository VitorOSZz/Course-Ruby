system('clear')
puts 'What is actual Year?'
Ryear = gets.to_i

puts "Now Year: #{Ryear}"

=begin   *Logic
  year = 2023
  x = 1
  x +=1
  => 2
  year + x
  => 2025
=end
year = Ryear
puts '+='
10.times { |x|
  puts "#{x +=1}x Year: #{year += 1 }"
}
year = Ryear
puts '-='
10.times { |x|
  puts "#{x +=1}x Year: #{year -= 1 }"
}
year = Ryear
puts '*='
10.times { |x|
  puts "#{x +=1}x Year: #{year *= x }"
}
year = Ryear
puts '/='
10.times { |x|
  puts "#{x +=1}x Year: #{year /= x }"
}

puts 'And this function can be used with string + string like'
puts "Name1: '#{name1 = 'Vitor '}'"
puts "Name2: '#{name2 = 'Vitor '}'"
puts "Name3: '#{name3 = 'Vitor '}'"
puts "name1 += name2 = #{name1 += name2}"
puts "name1 += name3 #{name1 += name3}"
puts '-'*12
puts "name1 = #{name1}"
