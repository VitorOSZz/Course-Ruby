# In ruby is normally use "?" on methods to return a boolean value
# Example:

system('clear')
puts "Enter a number to check if it is even or odd"
number = gets.to_i
puts "#{number}.even? => #{number.even?}" # true if number is even
puts "#{number}.odd? => #{number.odd?}"   # true if number is odd
puts "-"*20
puts "#{number}.zero? => #{number.zero?}" # true if number is zero
puts "-"*20
puts "#{number}.positive? => #{number.positive?}" # true if number is positive
puts "#{number}.negative? => #{number.negative?}" # true if number is negative
