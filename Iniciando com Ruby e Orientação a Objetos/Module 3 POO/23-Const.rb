system('clear')
class Storage
  PI = 3.14
  NAME_COMPANY = 'LOL FACTORY'
  BADAROSCA = 'BIG BADAROSCA'
end

puts '='*15
puts Storage::PI
puts Storage::NAME_COMPANY
puts Storage::BADAROSCA
puts "Class: #{Storage::BADAROSCA.class}"
puts doublePi = Storage::PI*2
