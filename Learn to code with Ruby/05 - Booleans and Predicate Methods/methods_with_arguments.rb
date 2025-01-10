system('clear')

print 'Say a word:'
word = gets.chomp
# Include? return true or false if the word contains the string on argument
# Example:
# 'Hello world'.include?('Hello') => true
# 'Hello world'.include?('!') => false
puts "a: #{word.include?('a')}"
puts "e: #{word.include?('e')}"
puts "i: #{word.include?('i')}"
puts "o: #{word.include?('o')}"
puts "u: #{word.include?('u')}"
puts '-' * 20
puts "A: #{word.include?('A')}"
puts "E: #{word.include?('E')}"
puts "I: #{word.include?('I')}"
puts "O: #{word.include?('O')}"
puts "U: #{word.include?('U')}"
