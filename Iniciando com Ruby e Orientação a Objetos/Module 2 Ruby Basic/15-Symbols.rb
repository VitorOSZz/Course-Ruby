system('cls')
puts "'Lol' => #{'Lol'.object_id}"
puts "'Lol' => #{'Lol'.object_id}"
puts "'Lol' => #{'Lol'.object_id}"
puts 'How you see, in a string if have 3, have 3 object_id differents and its a problem because in a big code, this is going slowly and this uses more performance than it should.'
puts 'and with symbols is safe, see:'
puts ":Lol => #{:Lol.object_id}"
puts ":Lol => #{:Lol.object_id}"
puts ":Lol => #{:Lol.object_id}"
puts 'Now is easier :D and dont use repetitive strings too much and learn to use symbols'
