class BattleSystem

  def initialize(
    lifeP1, physicalPowerP1, kiP1, kiPowerP1,
    lifeVillan, physicalPowerVillan, kiVillan, kiPowerVillan,
    specialAttack, nameP1, villanName)
    # Stats Player, P1 = Player
    @lifeP1 = lifeP1
    @PPowerP1 = physicalPowerP1
    #@kiP1 = kiP1.to_i
    @kiP1 = kiP1
    @kiPowerP1 = kiPowerP1
    # Stats Villan
    @lifeVillan = lifeVillan
    @PPowerVillan = physicalPowerVillan
    @kiVillan = kiVillan
    @kiPowerVillan = kiPowerVillan
    @specialAttack = specialAttack
    @nameP1 = nameP1
    @VillanName = villanName
  end

  def startBattle
    max_kiP1 = @kiP1 # Its for be regenerate Ki
    @fighting = true
    puts '-'*20
=begin
    while @lifeP1 >= 0 || @lifeVillan >= 0
      puts 'Lol'
      @lifeP1 -= 30
      puts "Life P1:     #{@lifeP1}"
      puts "Life Villan: #{@lifeVillan}"
      sleep 1
    end
=end
    round = 0

    until (@lifeP1 <= 0 || @lifeVillan <= 0) or (@lifeP1 <= 0 || @lifeVillan <= 0)
      system('clear')

      if @kiP1 != Float::INFINITY
        @kiP1 += max_kiP1*0.1
      end
      attack_Damage = 0
      punch = false

      puts "Round: #{round += 1}"
      # Player
      puts ''
      puts "#{@nameP1} Life: #{@lifeP1}".colorize(:yellow)
      puts "#{@nameP1} Ki:   #{@kiP1}".colorize(:yellow)
      # Villan
      puts ''
      puts "#{@VillanName} Life: #{@lifeVillan}".colorize(:red)
      puts "#{@VillanName} Ki:   #{@kiVillan}".colorize(:red)
      puts 'What do you want:'
      puts '[1] Special Attack'
      puts '[2] Punch'

        attack = gets.chomp.to_i
        case attack
        when 1 # Special Attack
          case @specialAttack
          when 'Kamehameha'
            if @kiP1 >= 10
              puts "You used #{@specialAttack}"
              attack_Damage = (@PPowerP1*0.5).to_i
              @kiP1 -= 10
            else
              punch = true
            end
          when 'Makankosappo'
            if @kiP1 >= 40
              puts "You used #{@specialAttack}"
              attack_Damage = (@kiPowerP1*1).to_i
              @kiP1 -= 40
            else
              punch = true
            end

          when 'Kienzan'
            if @kiP1 >= 30
              puts "You used #{@specialAttack}"
              attack_Damage = (@kiPowerP1*0.8).to_i
              @kiP1 -= 30
            else
              punch = true
            end

          when 'Galick-Hoo'
            if @kiP1 >= 30
              puts "You used #{@specialAttack}"
              attack_Damage = (@kiPowerP1*0.8).to_i
              @kiP1 -= 30
            else
              punch = true
            end
          end
        else
          puts 'You punched!'
          attack_Damage = (@PPowerP1*0.4).to_i
        end

        if punch
          puts 'You dont have ki for this'
          puts 'You punched!'
          attack_Damage = (@PPowerP1*0.4).to_i 
        end


        @lifeP1 -= @PPowerVillan *0.1
        @lifeVillan -= attack_Damage

      # Win and Lose System
      if @lifeP1 <= 0 and @lifeVillan <= 0
        puts "Draw".colorize(:yellow)
        puts "#{@nameP1} Life: #{@lifeP1}".colorize(:yellow)
        puts "#{@VillanName} Life: #{@lifeVillan}".colorize(:red)
      elsif @lifeP1 <= 0
        @fighting = false
        puts ''
        puts "#{@VillanName}: Hahahah".colorize(:yellow)
        puts 'Game Over'.colorize(:red)
      elsif @lifeVillan <= 0
        @fighting = false
        puts "You win from #{@VillanName}".colorize(:green)

      end
      sleep(2)
    end

  end
end
