# Inheritance is like this
=begin
system('clear')
class Father
  def initialize(name , age)
    @name = name
    @age = age
  end
  def Say
    puts "="*15
    puts "Name: #{@name}"
    puts "Age: #{@age}"
  end
end

adriano = Father.new('Adriano', 40)
adriano.Say

class Son < Father
  def Say
    super # super is from get all code from father and add
          # without super Expected => "Favorite Game: LOl", Only.
    puts "Favorite Game: Lol"
  end
end

vitor = Son.new('Vitor', 15)
vitor.Say
=end

class CharacterGame
  def Kamehameha
    puts "#{@name}: KAMEHAMEHAAAAAAAAA"
    puts "Damage: #{kiPower*3}"
  end
end

class Sayajin < CharacterGame
  attr_reader :name
  attr_accessor :life, :physicalPower, :ki, :kiPower

  def initialize(name)
    @name = name
    @life = 70
    @physicalPower = 200
    @ki = 70
    @kiPower = 70
  end

  def ssj1
    puts "="*15
    puts "#{@name}: Super Sayajin ?"
    puts "#{@name}gARRehhARHHH"
    puts "Before Life #{@life}"
    puts " After Life #{@life *= 1.2}"
    puts '='* 15
    puts "Before Physical Power #{@physicalPower}"
    puts " After Physical Power #{physicalPower * 1.2}"
    puts '='* 15
    puts "Before Ki #{@ki}"
    puts " After Ki #{@ki *= 1.2}"
    puts '='* 15
    puts "Before ki Power #{@kiPower}"
    puts " After Ki Power #{@kiPower *= 1.2}"
    puts '='* 15
  end
end

vitor = Sayajin.new('Vitor')
vitor.Kamehameha
vitor.ssj1
