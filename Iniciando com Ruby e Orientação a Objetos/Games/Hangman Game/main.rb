system('clear')

require_relative('modules/functions')
include Libray
require_relative('Ascii Arts/PutsArts.rb')
include AsciiArts
require_relative('modules/game.rb')
include GameFunction


puts 'Do you want play game or add a word?'
puts '[1] Play Game'
puts '[2] Add a Word'

chosed = gets.chomp.to_i
if chosed == 1
  GameFunction.start
elsif chosed == 2
  Libray.add_word
end
