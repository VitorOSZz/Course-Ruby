# Define a calculate_meal_cost method that accepts a numeric
# amount and a tip percentage (as a floating point value). 
# The method should return the  total cost of the meal including the tip. 
# If the tip percentage is not provided, it should default to 20%.
#
# Examples
# The => indicates the expected return value
#
# calculate_meal_cost(20, 0.05)   => 21
# calculate_meal_cost(20)         => 24
# calculate_meal_cost(100, 0.12)  => 112
# calculate_meal_cost(100)        => 120

def calculate_meal_cost(amount, percentage=0.20)
  amount+(amount*percentage)
end

# Define a string_adder method that accepts two strings as arguments.
# It should concatenate the the two strings with a space in between
# them and return the new string. Both parameters should be optional.
# If we do not pass any arguments, both arguments should default to 
# an empty string.
#
# Examples:
# The => indicates the expected return value
#
# string_adder("Hello", "World")      => "Hello World"
# string_adder("Emilio", "Estevez")   => "Emilio Estevez"
# string_adder                        => " "
# string_adder("Tiger")               => "Tiger "
def string_adder(first_word='', second_word='')
  first_word+ ' ' + second_word
end