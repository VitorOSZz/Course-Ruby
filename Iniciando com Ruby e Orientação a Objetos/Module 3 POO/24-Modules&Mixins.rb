system ('clear')

require_relative '24-Main/Modules/Modules.rb'
include Libray
include Person


Person.Hello

class Player_Soccer

  include Bad_Player_Soccer

  def initialize(numberTshirts, name, team)
    @numberTshirts = numberTshirts
    @name = name
    @team = team
  end

  def goal
    puts "GOOOOOOOOOOOOOOOOOOOOOOOOOAL from #{@numberTshirts}-#{@name}, #{@team} love this player!!"
  end

end

neymar = Player_Soccer.new('10', 'Neymar Jr', 'Al-Hilal')
lMessi = Player_Soccer.new('10', 'Lionel Messi', 'Inter Miami CF')

neymar.own_goal
lMessi.goal
lMessi.goal
