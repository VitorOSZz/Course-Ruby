=begin
def best_serie 
  serie = 'Dragon Ball'
  puts serie
end

best_serie
# puts serie serie out of def dont exist.
# serie is a local variable and only exist inside best_serie 
=end

# If exist a var out of def, it will not exist inside. like this:

serie = 'Dragon Ball'
def best_serie
  puts serie
end

best_serie
# => undefined local variable or method `serie' for main (NameError)
# Its as if inside def there were another file with its own code.