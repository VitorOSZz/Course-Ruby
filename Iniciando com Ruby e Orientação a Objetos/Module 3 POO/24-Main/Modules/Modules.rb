module Libray

  # Const
  PI = 3.14
  MAIN_WORD = :LOL
end

module Person

  def Hello
    puts "Main Word: #{MAIN_WORD} , Pi = #{PI}"
    puts MAIN_WORD
    puts MAIN_WORD
    puts MAIN_WORD
  end
end

module Bad_Player_Soccer

  def own_goal
    puts "OWN GOOOOOOALLLL from #{@numberTshirts}-#{@name}"
    puts "#{@team} thinking again.."
  end
end
