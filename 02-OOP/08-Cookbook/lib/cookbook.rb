require "csv"

class Cookbook

  attr_reader :recipes


  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes = csv_to_array(@file)
  end

  def all
    array = []
    @recipes.each {|cookbook_recipe| array << cookbook_recipe.join}
    p array
  end

  def create(name)
    @recipes << name
    save

  end

  def destroy
    @contents.delete_at(index)
    save
  end

  def save
    CSV.open(@file, "w") do |csv|
      @contents.each do |element|
    csv << [element]
      end
    end
  end

  private

  def load_csv(file)
    @recipes =[]
    CSV.foreach(file) do |row|
      @recipes << row.first
    end
  end


  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.
end
