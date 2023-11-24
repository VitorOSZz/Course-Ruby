class Character
  attr_accessor :name, :race, :life, :physicalPower, :ki, :kiPower, :specialAttack

  def initialize(name, race, specialAttack)
    @name = name
    @race = race
    @specialAttack = specialAttack
  end

  def reworkingAttributes
    case @race
    when 1
      atributes = {life: 100, physicalPower: 100, ki: 100, kiPower: 100}
      @race_name = 'Human'
    when 2
      atributes = {life: 70, physicalPower: 200, ki: 70, kiPower: 70}
      @race_name = 'Sayajin'
    when 3
      atributes = {life: 80, physicalPower: 180, ki: 70, kiPower: 70}
      @race_name = 'Half-Sayajin'
    when 4
      atributes = {life: 100, physicalPower: 80, ki: 180, kiPower: 200}
      @race_name = 'Arcosian'
    when 5
      atributes = {life: 150, physicalPower: 80, ki: 200, kiPower: 200}
      @race_name = 'Namekuseijin'
    when 6
      atributes = {life: 300, physicalPower: 130, ki: 130, kiPower: 130}
      @race_name = 'Majin'
    when 7
      atributes = {life: 200, physicalPower: 130, ki: 'Infinity', kiPower: 100}
      @race_name = 'Android'
    else
      atributes = {life:  100, physicalPower: 100, ki: 100, kiPower: 100}
      @race_name = 'Human'
    end
    # Life
    max_life = atributes[:life] + 10
    min_life = atributes[:life] - 10
    @life = rand(min_life..max_life)

    # Physical Power
    max_ph = atributes[:physicalPower] + 10
    min_ph = atributes[:physicalPower] - 10
    @physicalPower = rand(min_ph..max_ph)

    # Ki
    if atributes[:ki] == 'Infinity'
      @ki = atributes[:ki]
    elsif atributes[:ki].class == Integer
      max_ki = atributes[:ki] + 10
      min_ki = atributes[:ki] - 10
      @ki = rand(min_ki..max_ki)
    end

    # Ki Power
    max_KiP = atributes[:kiPower] + 10
    min_KiP = atributes[:kiPower] - 10
    @kiPower = rand(min_KiP..max_KiP)
  end

  def reworkingSpecialAttack

    case @specialAttack
    when '1'
      @specialAttack = 'Kamehameha'
    when '2'
      @specialAttack = 'Makankosappo'
    when '3'
      @specialAttack = 'Kienzan'
    when '4'
      @specialAttack = 'Galick-Hoo'
    else
      @specialAttack = 'Kamehameha'
    end
    puts "You chosed #{@specialAttack}"
  end

  def showStats
    system('clear')
    puts "#{'-'*7} #{name.colorize(:yellow)} #{'-'*7}"
    puts "Life:           #{@life}"
    puts "Physical Power: #{@physicalPower}"
    puts "Ki:             #{@ki}"
    puts "Ki Power:       #{@kiPower}"
    puts "Special Attack: #{@specialAttack}"
  end

end
