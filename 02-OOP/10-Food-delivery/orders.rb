class Orders

  def initialize(name)
    @status = pending
    @customer = customer
  end

  def add_meals

  @meals = []
  answer = nil

  until answer == ""
    puts "Please enter a new meal or <press enter> to exit"
    answer = gets.chomp
    unless answer == ""
      @meals << answer
    end
  end

end