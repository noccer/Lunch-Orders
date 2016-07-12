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
  # if person opts to place another order, ask them what they want
  if answer == "y"
    puts "What else would you like to order?"
  end
end

# List out the order
puts name + "'s order is:"
order.each do |item|
  puts "#{item}"
end

# tell the person their order will be ready in x minutes.
x = rand(5..10)
puts "The order will be ready in " + x.to_s + " minutes."
