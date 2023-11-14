require_relative 'CreateVillan.rb'

class InfoVillan
  attr_accessor :life, :physicalPower, :ki, :kiPower
  def stats_Villan(enemy_name)
    @name = enemy_name
    case enemy_name
    when 'Vegeta'
      attributes = [ @life = 160, @physicalPower = 160, @ki = 160, @kiPower = 180 ]
    when 'Freeza'
      attributes = [ @life = 230, @physicalPower = 100, @ki = 200, @kiPower = 230 ]
    when 'Android 17'
      attributes = [ @life = 250, @physicalPower = 200, @ki = 'Infinity', @kiPower = 250 ]
    when 'Android 18'
      attributes = [ @life = 250, @physicalPower = 200, @ki = 'Infinity', @kiPower = 250 ]
    when 'Cell'
      attributes = [ @life = 350, @physicalPower = 250, @ki = 'Infinity', @kiPower = 300 ]
    when 'Majin Buu'
      attributes = [ @life = 550, @physicalPower = 300, @ki = 350, @kiPower = 300 ]
    when 'Bills'
      attributes = [ @life = 1000, @physicalPower = 1000, @ki = 1000, @kiPower = 1000 ]
    when 'Broly'
      attributes = [ @life = 300, @physicalPower = 350, @ki = 250, @kiPower = 250 ]
    when 'Piccolo Daimaoh'
      attributes = [ @life = 120, @physicalPower = 100, @ki = 130, @kiPower = 150 ]
    end

    def showStats
      puts "#{'-'*7} #{@name} #{'-'*7}"
      puts "Life:           #{@life}"
      puts "Physical Power: #{@physicalPower}"
      puts "Ki:             #{@ki}"
      puts "Ki Power:       #{@kiPower}"
    end
  end
end
