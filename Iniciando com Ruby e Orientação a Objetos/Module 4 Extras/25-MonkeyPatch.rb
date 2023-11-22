class String
  def say(text='Lol (default message)')
    return text
  end
end

puts 'say your name'
name = gets.chomp
puts name.say
# I dont think Monkey Patch a good way for resolve problems, this have very chances for give more problems, not is safe. But is a way
