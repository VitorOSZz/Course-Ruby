class Character
  attr_accessor :name, :race, :life, :physicalPower, :ki, :kiPower, :specialAttack

  def reworkingAttributes(name, race)
    @name = name
    @race = race
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
      atributes = {life: 200, physicalPower: 130, ki: Float::INFINITY, kiPower: 100}
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
    if atributes[:ki] == Float::INFINITY
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

  def reworkingSpecialAttack(specialAttack)

    case specialAttack
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

  def loadSave(save_slot)
    path = Dir.pwd+"/Saves/save-0#{save_slot}.txt"
    @name = IO.readlines(path)[0]
    @life = (IO.readlines(path)[1]).to_i
    @physicalPower = (IO.readlines(path)[2]).to_i
    if IO.readlines(path)[3].to_i == 0
      @ki = Float::INFINITY
    else
      @ki = (IO.readlines(path)[3]).to_i
    end
      
    @kiPower = (IO.readlines(path)[4]).to_i
    @race = (IO.readlines(path)[5]).to_i
    @specialAttack = (IO.readlines(path)[6])
    case @race
    when 1
      @race_name = 'Human'
    when 2
      @race_name = 'Sayajin'
    when 3
      @race_name = 'Half-Sayajin'
    when 4
      @race_name = 'Arcosian'
    when 5
      @race_name = 'Namekuseijin'
    when 6
      @race_name = 'Majin'
    when 7
      @race_name = 'Android'
    end
  end

  def save(save_slot, life, physicalPower, ki, kiPower)
    data = File.open(Dir.pwd+"/Saves/save-0#{save_slot}.txt", "w+")
    data.puts @name
    data.puts(@life)
    data.puts(@physicalPower = physicalPower)
    data.puts(@ki = ki)
    data.puts(@kiPower = kiPower)
    data.puts(@race)
    data.print(@specialAttack)
    data.close
  end

  def showStats
    system('clear')
    puts "#{'-'*7} #{@name.colorize(:yellow)} #{'-'*7}"
    puts "Life:           #{@life}"
    puts "Physical Power: #{@physicalPower}"
    puts "Ki:             #{@ki}"
    puts "Ki Power:       #{@kiPower}"
    puts "Special Attack: #{@specialAttack}"
  end
end

