class Restaurant

  #TODO add relevant accessors if necessary
  attr_accessor = :name, :address, :average_rating

  def initialize(name, address, average_rating, city)
    #TODO: implement constructor with relevant instance variables
    @name = name
    @address = address
    @average_rating = average_rating
    @city = city
  end

end

class FilterByCity < Restaurant

  attr_writer = :city

  def initialize (city)
    super(name, address, average_rating)
    @city = city
  end

end

  def all_restaurant_given_city
    restaurants = []
    restaurant = Restaurant.new

    restaurants << restaurant.city
  end

