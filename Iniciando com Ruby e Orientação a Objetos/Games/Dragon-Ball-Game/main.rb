require 'colorize'
require 'readline'

system('clear')
puts '-'*7

puts '[1] New save'
puts '[2] Load Save'

newORloadsave = gets.chomp.to_i
system ('clear')
puts 'What save you want use?'
require_relative('Parts/Functions.rb')
show_saves
save_slot = gets.chomp.to_i
if (save_slot > 4) || (save_slot < 1)
  puts 'Error: Say a exit save'
  exit
end

require_relative 'Parts\CreateCharacter.rb'
if newORloadsave == 1
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
  specialAttack = gets.chomp.to_i
  
  player1 = Character.new
  player1.reworkingAttributes(name, race)
  player1.reworkingSpecialAttack(specialAttack)
  player1.save(save_slot, player1.life, player1.physicalPower, player1.ki, player1.kiPower)
  sleep(0.5)
elsif 2
  player1 = Character.new
  player1.loadSave(save_slot)
end

sleep 1.5
require_relative 'Parts/BattleSystem'

stop = false
while stop == false
  system('clear')
  puts 'Do you want upgrade your level or Battle?'
  puts '[1] Level System'
  puts '[2] Random Battle'
  puts '[3] Story Mode'
  puts '[4] Stop'

  battleOrLevel = gets.chomp.to_i

  if battleOrLevel == 1
    system('clear')
    sleep(0.5)

    puts "█▒▒▒▒▒▒▒▒▒ 10%"
    sleep(0.5)
    puts "██▒▒▒▒▒▒▒▒ 20%"
    sleep(0.5)
    puts "███▒▒▒▒▒▒▒ 30%"
    sleep(0.5)
    puts "████▒▒▒▒▒▒ 40%"
    sleep(0.5)
    puts "█████▒▒▒▒▒ 50%"
    sleep(0.5)
    puts "██████▒▒▒▒ 60%"
    sleep(0.5)
    puts "███████▒▒▒ 70%"
    sleep(0.5)
    puts "████████▒▒ 80%"
    sleep(0.5)
    puts "█████████▒ 90%"
    sleep(0.5)
    puts "██████████ 100%"
    sleep(1)
    require 'colorize'
    puts 'Say a Attribute for upgrade 30 Points!'
    puts "#{'-'*7} #{(player1.name).chomp.colorize(:yellow)} #{'-'*7}"
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
    player1.save(save_slot, player1.life, player1.physicalPower, player1.ki, player1.kiPower)
  elsif battleOrLevel == 2
    require_relative('Parts/CreateEnemies/CreateVillan')
    require_relative 'Parts/CreateEnemies/StatsEnemies'

    enemy_name = Enemy.randomizeVillan
    villan = InfoVillan.new
    villan.stats_Villan(enemy_name)
    villan.showStats

    sleep(2)

    battle = BattleSystem.new(
    player1.life, player1.physicalPower, player1.ki, player1.kiPower,
    villan.life, villan.physicalPower, villan.ki, villan.kiPower,
    player1.specialAttack, name, enemy_name
    )
    battle.startBattle
  elsif battleOrLevel == 3
    # 1- Mostrar as fases
    # 1- puts todos arquivos da Saga Sayan
    puts "=Saga Sayan"
    showPhases("Sayan")
    puts "What phase do you want to play?"
    phase = gets.chomp.to_i

    require_relative 'Parts/CreateEnemies/StatsEnemies'

    path = "story-mode/DbZ/Saga Sayan/1.json"
    villan = InfoVillan.new
    villan.stats_story_mode("story-mode/DbZ/Saga Sayan/#{phase}.json")
    villan.showStats_story_mode()

    sleep(2)

    battle = BattleSystem.new(
    player1.life, player1.physicalPower, player1.ki, player1.kiPower,
    villan.life, villan.physicalPower, villan.ki, villan.kiPower,
    player1.specialAttack, name, enemy_name
    )
    battle.startBattle
    # 2- Poder escolher o bixao
    # #- Lutar com bixao
  elsif battleOrLevel == 4
    stop = true
  end
end
