class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    if @calories < 200
      true
    else
      false
    end
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    @flavor = flavor
  end

  def delicious?
    if @flavor = "black licorice"
      false
    else
      super
    end
  end
end

