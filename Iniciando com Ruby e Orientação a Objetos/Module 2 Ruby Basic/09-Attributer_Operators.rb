puts 'Say a number: '
number = gets.chomp.to_f
numberOriginal = number

plusEqual = number += number
number = numberOriginal
minusEqual = number -= number
number = numberOriginal
multiplicateEqual = number *= number
number = numberOriginal
dividingEqual = number /= number
number = numberOriginal
moduleEqual = number %= number
number = numberOriginal
exponentiationEqual = number **= number
number = numberOriginal

puts "#{numberOriginal} = #{number}"
puts "#{numberOriginal} += #{plusEqual}"
puts "#{numberOriginal} -= #{minusEqual}"
puts "#{numberOriginal} *= #{multiplicateEqual}"
puts "#{numberOriginal} /= #{dividingEqual}"
puts "#{numberOriginal} %= #{moduleEqual}"
puts "#{numberOriginal} **= #{exponentiationEqual}" 