system('clear')
class Parrot
  attr_accessor :name
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def repeat_sentence(text = 'Curupaco')
    text
  end
end

vida = Parrot.new('Vida', 5)
puts "Vida Name: #{vida.name}"
puts "Vida Age: #{vida.age}"
puts "Vida Sentence: #{vida.repeat_sentence}"
puts "Vida Sentence: #{vida.repeat_sentence('Au Au Pikachu')}"

puts '-'* 15

caramelo = Parrot.new('Caramelo', 10)
puts "Caramelo Name: #{caramelo.name}"
puts "Caramelo Age: #{caramelo.age}"
puts "Caramelo Sentence: #{caramelo.repeat_sentence}"
puts "Caramelo Name: #{caramelo.repeat_sentence('Au Blastoise Au')}"

puts '-'* 15
puts "Now Caramelo name is: 'Young' and age is 11"
caramelo.name = 'Young'
caramelo.age = 11
puts "Caramelo Name: #{caramelo.name}"
puts "Caramelo Age: #{caramelo.age}"
