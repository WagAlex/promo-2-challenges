def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order

  burger_mc = {"Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130}
  side_mc = {"French fries" => 130,
    "Potatoes" => 130}
  beverage_mc = {"Coca" => 160,
    "Sprite" => 170}

  burger_mc [burger] + side_mc [side] + beverage_mc [beverage]

end

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order

  menu = {"Happy Meal" => ["Cheese Burger", "French fries", "Coca"]
    "Best Of Big Mac" => ["Big Mac", "French fries", "Coca"]
    "Best Of Royal Cheese" => ["Royal Cheese", "Potatoes", "Sprite"]}

  graisse = {"Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
   }
  sum = 0
  menu [Menu].each do |composant|
  sum += graisse [composant]
  end
  return sum
end
