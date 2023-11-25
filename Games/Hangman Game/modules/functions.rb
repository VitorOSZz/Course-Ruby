module Libray

  def add_word
    system('clear')
    sleep(0.3)

    puts 'What is the word?'
    new_Word = (gets.chomp).downcase

    @checker = false
    File.foreach('modules/words.txt') {|line|
    line = line.split('
')                     # taking the space
    line = line.join() # turn array in string
    if new_Word == line
      @checker = true
    end
  }
    if @checker == true
      puts 'this word already have!'
    elsif @checker == false
      File.open('modules/words.txt', 'a') do |file|
        file.puts new_Word
      end
      puts 'word added'
    end
  end
  def random_a_word
    test_word_arq = File.open('modules/words.txt', 'r')
    test_words = test_word_arq.read
    test_words = test_words.split('
')
    return word = test_words.sample
    test_word_arq.close
  end

  def checkers(word, letter)
    @word = word
    @letter = letter
    error_letter = 0
    @word.each do |x|
      if @letter.include?(x)
      else
        error_letter += 1
      end
    end
    if error_letter >= 1
      return win = false
    elsif error_letter == 0
      return win = true
    end
  end

end
