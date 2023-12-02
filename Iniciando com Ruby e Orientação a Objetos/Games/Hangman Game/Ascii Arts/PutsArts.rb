require 'colorize'
module AsciiArts
  def puts_skull
    txt = File.open('Ascii Arts/Arts/skull.txt', 'r')
    puts (txt.read).colorize(:red)
    txt.close
  end

  def puts_trophy
    txt = File.open('Ascii Arts/Arts/trophy.txt', 'r')
    puts (txt.read).colorize(:yellow)
    txt.close
  end
end
