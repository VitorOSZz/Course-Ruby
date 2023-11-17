# Gems
require 'colorize'

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

sleep(1)
system('clear')
puts "What Special Attack do you want?"
  puts "[1] Kamehameha"
  puts "[2] Makankosappo"
  puts "[3] Kienzan"
  puts "[4] Galick-Hoo"
specialAttack = gets.chomp


require_relative 'Parts\CreateCharacter.rb'
player1 = Character.new(name, race, specialAttack)
player1.reworkingSpecialAttack
player1.reworkingAttributes
sleep(0.5)
player1.showStats

sleep 1.5

require_relative 'Parts/BattleSystem'

stop = false
while stop == false
  puts ''
  puts 'Do you want upgrade your level or Battle?'
  puts '[1] Level System'
  puts '[2] Battle'
  puts '[3] Stop'

  battleOrLevel = gets.chomp.to_i

  if battleOrLevel == 1
    system('clear')
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 1O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 2O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 3O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 4O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 5O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 6O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 7O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 8O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 9O%"
    sleep(1)
    puts "[̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅_̲̅] 100%"
    sleep(1)

    puts 'Say a Attribute for upgrade 30 Points!'
    puts "#{'-'*7} #{player1.name.colorize(:yellow)} #{'-'*7}"
    puts "[1] Life:           #{player1.life}"
    puts "[2] Physical Power: #{player1.physicalPower}"
    puts "[3] Ki:             #{player1.ki}"
    puts "[4] Ki Power:       #{player1.kiPower}"
    upgradeAttribute = gets.chomp.to_i
    case upgradeAttribute
    when 1
      player1.life += 30
    when 2
      player1.physicalPower += 30
    when 3
      player1.ki += 30
    when 4
      player1.kiPower += 30
    else
      player1.life += 30
    end

    system('clear')
    puts "#{'-'*7} #{player1.name.colorize(:yellow)} #{'-'*7}"
    puts "[1] Life:           #{player1.life}"
    puts "[2] Physical Power: #{player1.physicalPower}"
    puts "[3] Ki:             #{player1.ki}"
    puts "[4] Ki Power:       #{player1.kiPower}"

  elsif battleOrLevel == 2
    require_relative('Parts/CreateEnemies/CreateVillan')
    require_relative 'Parts/CreateEnemies/StatsEnemies'

    enemy_name = Enemy.randomizeVillan
    villan = InfoVillan.new
    villan.stats_Villan(enemy_name)
    villan.showStats

    sleep(2)

    Battle = BattleSystem.new(
    player1.life, player1.physicalPower, player1.ki, player1.kiPower,
    villan.life, villan.physicalPower, villan.ki, villan.kiPower,
    player1.specialAttack, name, enemy_name
    )
    Battle.startBattle
  elsif battleOrLevel == 3
    stop = true
  end
end
