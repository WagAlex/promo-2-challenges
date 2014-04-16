class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
 attr_accessor :age, :height, :fruits, :dead


  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1

    @height += 1 if @age < 11
    if 5 < @age && @age <= 10
      @fruits = 100
    elsif 10 < @age && @age <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def dead?
    if @age <= 50
       @dead = false
    elsif @age >= 100
      @dead = true
    else @age += Random.new.rand(0..49)
      @dead = true
    end
  end


  def pick_a_fruit!
    @fruits -= 1
  end




end
