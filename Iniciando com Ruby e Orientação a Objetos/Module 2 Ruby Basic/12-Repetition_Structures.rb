# While and until(not while)

piecesOfCake = 5.to_i
puts ' Do you want eat the cake? (Pieces 5/5)'
puts '1 : Yes '
puts '2 : No '
answer = gets.chomp.to_i

if answer == 1
  piecesOfCake -= 1
end

while piecesOfCake  >= 1
  puts " Do you want eat the cake? (Pieces #{piecesOfCake}/5)"
  puts '1 : Yes '
  puts '2 : No '
  answer = gets.chomp.to_i
  if answer == 1
    piecesOfCake -= 1
  elsif answer == 2
    puts 'You want eat YES. :D'
  else
    puts "answer error! #{answer} isnt 1 and 2"
  end
  puts '=' * 20
end
puts piecesOfCake
# PiecesOfCake = 0
until piecesOfCake >= 5 and piecesOfCake >= 0
  puts "Do you want do a piece of the Cake? (Pieces #{piecesOfCake}/5)"
  puts '1 : Yes '
  puts '2 : No '

  answer = gets.chomp.to_i

  if answer == 1
    piecesOfCake += 1
  elsif answer == 2
    puts 'really?'
  else
    puts 'error answer is not 1 and not 2'
  end
end
puts "Pieces now : #{piecesOfCake}"
puts 'Now You eat full Cake and do another Cake :D'
