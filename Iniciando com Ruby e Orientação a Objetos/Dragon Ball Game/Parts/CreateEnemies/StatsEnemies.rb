require_relative 'CreateVillan.rb'

puts enemy_name = Enemy.randomizeVillan
puts enemy_name

#['Vegeta', 'Freeza', 'Android 17', 'Android 18', 'Cell', 'Majin Buu', 'Bills', 'Broly', 'Piccolo Daimaoh']

class InfoVillan
  attr_accessor :life
  def stats_Villan(enemy_name)
    case enemy_name
    when 'Vegeta'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Freeza'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Android 17'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Android 18'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Cell'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Majin Buu'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Bills'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Broly'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    when 'Piccolo Daimaoh'
      attributes = [ @life = 100, @physicalPower = 100, @ki = 100, @kiPower = 100 ]
    end

    def showStats
      puts '='*20
      puts "Life:           #{@life}"
      puts "Physical Power: #{@physicalPower}"
      puts "Ki:             #{@ki}"
      puts "Ki Power:       #{@kiPower}"
    end
  end
end



checker = InfoVillan.new
checker.stats_Villan(enemy_name)
checker.showStats
