# greet the person
puts "Welcome to Lunch Orders!"
puts "What is your name?"

#obtain their name
name = gets.chomp
# pleasantry
puts "What would you like to order " + name + "?"

# default values
order = []
answer = "y"

# taking the orders
while (answer == "y") do
  food = gets.chomp
  order.push(food)
  puts "Would you like to order anything else " + name + "? (y/n)"
  answer = gets.chomp.downcase
end
