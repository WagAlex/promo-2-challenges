class Restaurant

  #TODO add relevant accessors if necessary
  attr_accessor :name, :city, :average_rating, :number_rating, :restos_filtered

  def initialize(name, city)
    #TODO: implement constructor with relevant instance variables
    @name = name
    @average_rating = 0
    @number_rating = 0
    @city = city
    @resto = []
  end


  def rate(rating)
    @number_rating += 1
    @average_rating = ((rating + (@average_rating * (@number_rating - 1))) / @number_ratin)
  end

  def self.filter_by_city(restos,city)
    restos_filtered = []
    Restaurant.resto each do |restos|
      if restos.city == city
        restos_filtered << resto
      end
      end
    restos_filtered
  end

end




