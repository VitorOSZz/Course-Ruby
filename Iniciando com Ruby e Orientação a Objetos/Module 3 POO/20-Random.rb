class Game
  def initialize
    @number = rand(1..5).to_i
  end

  def randomNumber
    @number
  end
end
game = Game.new

numberQuestion = 0

while numberQuestion != game.randomNumber
  puts 'Say a Number'
  numberQuestion =  gets.chomp.to_i
  system('clear')
end
puts 'You Win'
