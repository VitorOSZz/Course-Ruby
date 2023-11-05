=begin
Finally Starting POO(In portuguese Programação orientada a objetos.)
In english OOP Oritend Object Programming
and is like a "mold" of swords, he do some swords but is the same mold
I go do this exercise in theme Dragon Ball!
=end

system('clear')

puts 'Say your name'

name = gets.chomp

puts 'What do you want are?'
  # Options
  puts "[1] Human"
  puts "[2] Sayajin"
  puts "[3] Half-Sayajin"
  puts "[4] Arcosian"
  puts "[5] Namekuseijin"
  puts "[6] Majin"
  puts "[7] Android"

race = gets.chomp.to_i

puts " What Special Attack do you want?"
  puts "Kamehameha"
  puts "Makankosappo"
  puts "Kienzan"
  puts "Galick-Hoo"
  specialAttack = gets.chomp
# Definally the race

case race
when 1
  puts "#{raceString = 'Human'}"
when 2
  puts "#{raceString = 'Sayajin'}"
when 3
  puts "#{raceString = 'Half-Sayajin'}"
when 4
  puts "#{raceString = 'Arcosian'}"
when 5
  puts "#{raceString = 'Namekuseijin'}"
when 6
  puts "#{raceString = 'Majin'}"
when 7
  puts "#{raceString = 'Android'}"
else
  puts "#{raceString = 'Human'}"
end

class RaceClass

  attr_accessor :race
  attr_reader :name
  attr_accessor :specialAttack
  attr_writer :realName

  def initialize(race, raceString, name, specialAttack, realName)
    @race = race
    @raceName = raceString
    @name = name
    @specialAttack = specialAttack
    @realName = realName
  end

  def race_atributes(specialAttack = "Kamehameha")
    # Check Special Attack is correct!
    case @specialAttack.upcase.gsub(' ', '') # Taking spaces and upcase for if user say KaMeHaMehA isnt 'Kamehameha'
    when 'KAMEHAMEHA'
      specialAttack = 'Kamehameha'
    when 'MAKANKOSAPPO'
      specialAttack = 'Makankosappo'
    when 'KIENZAN'
      specialAttack = 'Kienzan'
    when 'GALICK-HOO'
      specialAttack = 'Galick-Hoo'
    end
    # Puts Name and race
    puts "#{'-'*7} #{@name} #{'-'*7}"
    puts "Race: #{@raceName}"
    # Check race and defining attributes
    case @raceName
    when 'Human'
      atributes = {life: 100, physicalPower: 100, ki: 100, kiPower: 100}
    when 'Sayajin'
      atributes = {life: 70, physicalPower: 200, ki: 70, kiPower: 70}
    when 'Half-Sayajin'
      atributes = {life: 80, physicalPower: 180, ki: 70, kiPower: 70}
    when 'Arcosian'
      atributes = {life: 100, physicalPower: 80, ki: 180, kiPower: 200}
    when 'Namekuseijin'
      atributes = {life: 150, physicalPower: 80, ki: 200, kiPower: 200}
    when 'Majin'
      atributes = {life: 300, physicalPower: 130, ki: 130, kiPower: 130}
    when 'Android'
      atributes = {life: 200, physicalPower: 130, ki: 'Infinity', kiPower: 100}
    end
    # puts atributes
    puts "Life: #{atributes[:life]}"
    puts "Physical Power: #{atributes[:physicalPower]}"
    puts "Ki: #{atributes[:ki]}"
    puts "Ki Power: #{atributes[:kiPower]}"
    puts "Special Attack: #{specialAttack}"
  end

end
system('clear')
Person = RaceClass.new(race , raceString , name, specialAttack, 'Vitão')
Person.race_atributes

Person2 = RaceClass.new(1 , 'Human' , 'Rafael', 'Galick-Hoo', 'Rafaelito')
Person2.race_atributes

#Person.name = 'Victor' Isnt correct because name is attr_reader.
#puts Person.name
#puts Person.realName Isnt correct because realName is attr_writer.
