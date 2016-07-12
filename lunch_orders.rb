# greet the person
puts "Welcome to Lunch Orders!"
puts "What is your name?"

#obtain their name
name = gets.chomp
# pleasantry
puts "What would you like to order " + name + "?"

# default values
order = []
answer = true

# taking the orders
while (answer == true) do
  food = gets.chomp
  order.push(food)
  puts "Would you like to order anything else " + name + "? (y/n)"
  response = gets.chomp.downcase
  # convert the answer to a boolean
  if (response == "y")
    answer = true
  elsif (response == "n")
    # finish ordering because the person either entered "n"
    answer = false
  else
    # the person didnt answer y or n, so we give them some feedback.
    puts "I'm sorry, I needed you to answer 'y' or 'n'."
    puts "I'll place the rest of your order now."
    answer = false
  end
  # if person opts to place another order, ask them what they want
  if answer == true
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
puts "Your order will be ready in " + x.to_s + " minutes."
