system('cls')

grades = {
  :Vitor => 8.5,
  :Rafael => 9,
  :CristianoRonaldo => 7,
  :GustavoBorges => 10}

age = {
  :Vitor => 15,
  :Rafael => 14,
  :CristianoRonaldo => 38,
  :GustavoBorges => 50}

nacionallty = {
  :Vitor => :Brazillian,
  :Rafael => :Brazillian,
  :CristianoRonaldo => :Portuguese,
  :GustavoBorges => 'Brazillian' }

puts "=" * 55
puts "%-20s %-7s %-5s %-20s" % ["Name", "| Grade |", "Age |", "Nationality"] # "%-20s %-10s %-20s %-20s" this part of code is helped with ChatGPT
grades.each do |name, grade|
  puts "%-20s %-7s %-5s %-20s" % ["#{name}", "| #{grade}", "| #{age[name]}", "| #{nacionallty[name]}"]
end
