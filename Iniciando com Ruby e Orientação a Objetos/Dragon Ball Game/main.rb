system('clear')
puts '-'*7
puts 'Say your Name'
name = gets.chomp

puts 'What do you want to be?'
puts "[1] Human"
puts "[2] Sayajin"
puts "[3] Half-Sayajin"
puts "[4] Arcosian"
puts "[5] Namekuseijin"
puts "[6] Majin"
puts "[7] Android"
race = gets.chomp.to_i

require_relative 'Parts\CreateCharacter.rb'
player1 = Character.new(name, race)
player1.reworkingAttributes
player1.showStats

sleep 0

File.expand_path('Parts/CreateEnemies/CreateVillan', __dir__)
