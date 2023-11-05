puts 'Say a number'
howMany_n1 = gets.chomp.to_i
puts 'Say a word'
word = gets.chomp

system('clear') #Clear cmd

howMany_n1.times { |x| puts "#{x+1} #{word}"} # X.times {puts something}
n1 = howMany_n1
puts n1 # puts first number
(howMany_n1 -1).times { puts n1 *= howMany_n1} # puts all sequence numbers
puts "Final: #{n1}" # n1 is square from HowMany_n1
