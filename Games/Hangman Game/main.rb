=begin
list_of_words = ['ex1','ex2']
word = list_of_words.sample # Random a word
word = word.split('') # => word = ['e','x','1']

correct_letters = []
while stop == false
  letter = gets.chomp

  word.each { |x|
  if letter in word
    puts letter
  else
    puts '_'
  end
}
end
=end
system('clear')
words_to_draw =   ['lol','vitor','lindo']

word = words_to_draw.sample
puts "Word: #{word}"

word = word.split('')
puts "Word: #{word}"

win = false
letter = []
lifes = 5.to_i
stop = false
while stop == false
  puts 'Say a letter'
  sugest_letter = gets.chomp

  print 'word: '
  word.each do |x|
    if letter.include?(x)
      print x
    elsif sugest_letter == x
      print x
      letter.push(x)
      lifes += 1
    else
      print ' _ '
    end
  end

  lifes  -= 1
  if lifes <= 0 or win == true
    stop = true
  end

  puts ''
  puts "Lifes: #{lifes}"
end
