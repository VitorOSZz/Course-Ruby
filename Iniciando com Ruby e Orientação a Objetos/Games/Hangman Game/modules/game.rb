module GameFunction
  def start
    full_word = Libray.random_a_word
    word = full_word.split('')

    win = false
    letter = []
    lifes = 5.to_i
    stop = false
    while stop == false

      puts 'Say a letter'
      sugest_letter = (gets.chomp).downcase

      sleep(0.5)
      system('clear')

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

      win = Libray.checkers(word, letter)

      lifes  -= 1

      puts ''
      if win == true
        puts "Nice you win the word is #{full_word.colorize(:green)}"
        AsciiArts.puts_trophy
        stop = true
      elsif lifes <= 0
        puts ''
        puts 'You Dead'
        AsciiArts.puts_skull
        stop = true
      end

      puts ''
      puts "Lifes: #{lifes}"
    end
  end
end
