require "csv"

class Cookbook

  attr_reader :recipes


  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    load_csv(file)
    @file = file
  end

  def retrieve_all_recipes
    @recipes.each_with_index do |index, item|
      "#{index + 1} + #{item}"
    end
  end


  def create(name)
  end

  def destroy
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
