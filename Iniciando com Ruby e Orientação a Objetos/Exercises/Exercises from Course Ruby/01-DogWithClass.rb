system('clear')
class Dog
  attr_accessor :name
  attr_reader :race
  def initialize(name, race)
    @name = name
    @race = race
  end

  def bark(text= 'au au')
    text
  end
end


vida = Dog.new('Vida','Bulldog')
puts "Name: #{vida.name}"
puts "Race: #{vida.race}"
#puts "Race: #{vida.race = 'Lol'}" #This is dont correct because cant change race
puts "Vida: #{vida.bark}"
puts vida.bark('Au Galick-Hoo Au')

#vida.race = 'Chihuahua' #This is dont correct because cant change race
#puts vida.race

puts '-'*15
caramelo = Dog.new('Caramelo','Chihuahua')
puts "Name: #{caramelo.name}"
puts "Race: #{caramelo.race}"
puts "Caramelo: #{caramelo.bark}"
puts "Caramelo: #{caramelo.bark('Au Kamehameha Au')}"
