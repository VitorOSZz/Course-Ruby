system('clear')

require 'colorize'

puts 'Gems is libray of another linguages, I dont know a "good" gem or a gem
very useful for me but I know 1 cool gem!'

puts "this a color #{'white'.colorize(:white)}"
puts "this a color #{'red'.colorize(:red)}"
puts "this a color #{'green'.colorize(:green)}"
puts "this a color #{'green bold'.colorize(:color => :green, :mode => :bold)}"
puts "this a color #{'yellow'.colorize(:yellow)}"
puts "this a color #{'blue'.colorize(:blue)}"
puts "this a color #{'background blue and underline'.on_blue.underline}"
puts "this a color #{'magenta'.colorize(:magenta)}"
puts "this a color #{'light blue background white'.colorize(:color => :light_blue, :background => :white)}"
puts "this a color #{'cyan'.colorize(:cyan)}"
