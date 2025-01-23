def legal_age(name, age)
  if age >= 18
    return true # when some value is returned the method will be stoped instantly
  end
  # if (age >= 18) == false, the code will continue and return false
  return false
end

puts legal_age('Vitor', 17)
puts legal_age('Goku', 43)