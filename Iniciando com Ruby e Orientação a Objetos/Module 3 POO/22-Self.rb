system('clear')
class Salad
  def self.buy_olive_oil
    puts "#{self} LOL"
  end
end

Salad.buy_olive_oil

puts '='* 15
class NewSalad
  def buy_olive_oil
    puts "#{self} LOL"
  end
end

littleSalad = NewSalad.new
littleSalad.buy_olive_oil
