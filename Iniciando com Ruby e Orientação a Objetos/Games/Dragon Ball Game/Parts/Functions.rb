def show_N_save(n_save)
  puts ('-'*25).colorize(:red)
  puts "[#{n_save}]: "
  path = File.open("Saves/save-0#{n_save}.txt")
  data = File.readlines(path)
  # Name
  puts data[0]
  # Life
  puts data[1]
  # Physical Power
  puts data[2]
  # Ki
  puts data[3]
  # Ki Power
  puts data[4]
  # Race
  case data[5].to_i
  when 1
    puts 'Human'
  when 2
    puts 'Sayajin'
  when 3
    puts 'Half-Sayajin'
  when 4
    puts 'Arcosian'
  when 5
    puts 'Namekuseijin' 
  when 6
    puts 'Majin'
  when 7
    puts 'Android'
  else
    puts 'Invalid'
  end
  # Special Attack
  puts data[6]
end



def show_saves
  show_N_save(1)
  show_N_save(2)
  show_N_save(3)
  show_N_save(4)
end