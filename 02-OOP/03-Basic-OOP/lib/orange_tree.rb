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

    @height += 1 if @age < 10
    if 5 <= @age && @age < 10
      @fruits = 100
    elsif 10 <= @age && @age < 15
      @fruits = 200
    end
  end

  def dead?
    if @age < 50
      @alive = true
    elsif @age >= 100
      @alive = false
    else @age += Random.new.rand(0..50)
      @alive = false
    end
  end


  def pick_a_fruit!
    @fruits -= 1
  end




end
