require_relative 'customers'
require_relative 'orders'
require_relative 'delivery_guys'
require_relative 'managers'
require_relative 'ui'

MEALS = {


}

restaurant = Restaurant.new("Sushi Shop")
Boris = delivery_guys.new("Boris", "Lewagon1")
Gaby = delivery_guys.new("Gaby", "Lewagon2")
Romain = manager.new("Romain", "Lewgon3")

puts = "Please enter your username:"
username = gets.chomp
puts = "Please enter your password:"
password = gets.chomp
puts "-------------------------------"
puts "Welcome, #{username}.  Your access level is : #{}"

Gaby.class # => Delivery_guy