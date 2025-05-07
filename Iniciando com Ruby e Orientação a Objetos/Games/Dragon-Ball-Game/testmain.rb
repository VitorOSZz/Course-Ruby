require_relative 'Parts/Functions.rb'

puts '-'*7
showPhases("Sayan")
require_relative 'Parts/CreateEnemies/StatsEnemies'

path = "story-mode/DbZ/Saga Sayan/1.json"

villan = InfoVillan.new
villan.stats_story_mode(path)
#villan.stats_story_mode(path)
#villan.showStats
villan.showStats_story_mode()