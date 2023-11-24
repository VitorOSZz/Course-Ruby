require 'colorize'

system('clear')
argv = ARGV
puts "argv        #{argv}"
puts "Type Class: #{argv.class}"
puts "argv[0]:    #{argv[0]}"

# Argv is like: ruby 30-Argv.rb lol very much lol
# Argv in this case equal ['lol', 'very', 'much', 'lol']
# Argv is common use for open files
arq = File.open(argv[0], 'r')

puts '-'*20 # Separate
puts arq.read.colorize(:cyan)
