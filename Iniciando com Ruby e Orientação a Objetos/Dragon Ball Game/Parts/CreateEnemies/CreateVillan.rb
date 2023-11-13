system('clear')

module Enemy

  LIST = ['Vegeta', 'Freeza', 'Android 17', 'Android 18', 'Cell', 'Majin Buu', 'Bills', 'Broly', 'Piccolo Daimaoh']
  HOW_MANY_VILLAINS = LIST.length - 1

  def self.randomizeVillan
    Enemy::LIST[rand(0..Enemy::HOW_MANY_VILLAINS)]
  end

end
