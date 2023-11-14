class BattleSystem

  def initialize(lifeP1, physicalPowerP1, kiP1, kiPowerP1, lifeVillan, physicalPowerVillan, kiVillan, kiPowerVillan)
    # Stats Player, P1 = Player
    @lifeP1 = lifeP1.to_i
    @PPowerP1 = physicalPowerP1.to_i
    @kiP1 = kiP1.to_i
    @kiPowerP1 = kiPowerP1.to_i
    # Stats Villan
    @lifeVillan = lifeVillan.to_i
    @PPowerVillan = physicalPowerVillan.to_i
    @kiVillan = kiVillan.to_i
    @kiPowerVillan = kiPowerVillan.to_i
  end

  def startBattle
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
    until @lifeP1 <= 0 || @lifeVillan <= 0
      system('clear')
      puts "Round: #{round += 1}"
      puts 'What do you want:'
        puts '[1] Special Attack'
        puts '[2] Punch'

        attack = gets.chomp

        case attack
        when 1
          puts 'Not Defined.'
        when 2
          attack_Damage = (@PPowerP1* 0.4).to_i
        else
          attack_Damage = (@PPowerP1*0.4).to_i
        end
        puts '*You attack the Villan'
        puts "Villan life: #{@lifeVillan -= attack_Damage}"

      puts "Your life: #{@lifeP1 -= 30}"
      sleep 2
      if @lifeP1 <= 0
        @fighting = false
      end
      if @lifeVillan <= 0
        @fighting = false
      end
    end

  end
end

# 13/11
# I want do Battle System with Ki Attacks,
# all rounds Ki recove and have a way for upgrade level of your warrior
# for battle with bosses

# 14/11
# I want to do a attack recover life for player and add special attacks
