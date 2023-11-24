system('clear')
words_to_draw =   ['lol','vitor','lindo']

word = words_to_draw.sample
puts "Word: #{word}"
word = word.split('')
puts "Word: #{word}"

letter = []
lifes = 5.to_i
stop = false
while stop == false
  puts 'Say a letter'
  sugest_letter = gets.chomp
  letter.join(sugest_letter)

  word.each {
    |x|
    if letter.include?(word)
      puts "#{letter}"
    else
      puts '_'
    end
  }

  lifes -= 1.to_i

  if lifes <= 0
    stop = true
  end
end
