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
=begin
system('clear')
puts 'Ruby working'

class ShopOfChips
  def self.Chips
    puts "Today we have:"
    puts "5x Drumstick"
    puts "3x Kibe"
  end

  def tables
    puts "We have 3x tables clean"
  end
end

puts ShopOfChips.Chips

ShopOfCenter = ShopOfChips.new
ShopOfCenter.tables
=end
