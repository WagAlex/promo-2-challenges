def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  hash_mcdo = {
    "Cheese Burger": 290,
    "Big Mac": 300,
    "Mc Bacon": 400,
    "Royal Cheese": 130,
    "French fries": 130,
    "Potatoes": 130,
    "Coca": 160,
    "Sprite": 170
  }
  sum = 0
  hash_mcdo.each do |food,calories|
  sum += calories
end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
end
