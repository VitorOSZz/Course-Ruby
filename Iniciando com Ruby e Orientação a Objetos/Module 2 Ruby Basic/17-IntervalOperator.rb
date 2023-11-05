system('clear')
letter = 0
n1 = 0
list = [1,2,3,4,5]
list.each {|x| puts x}
puts '='*15
('a'..'z').each { |x| puts "#{letter +=1}- #{x.upcase}"}
puts '='*15
(-5..5).each { |x| puts x}
puts '='*15

(-10..10).each do |x|

  puts "#{x} n1:  #{n1}"

  (2..4).each do |number|
    if number == x
      puts 'this number is in 2..4'
    end
  end
  n1 += 1
end
