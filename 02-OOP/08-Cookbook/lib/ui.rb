class UI
  TASKS = {
    list: "- List all recipes [list]",
    add:  "- Add a new recipe [add]",
    del:  "- Delete a recipe [del]",
    exit: "- Exit [exit]"
  }

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def list
    # TODO: call the appropriate controller method with the proper argument(s)
    # TODO: format and display the retrieved data in a numbered list
    recipes = @controller.list
    print "\n"
    puts "Here are your recipes"
    print "\n"


    @controller.list_recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe} (miam miam)"
    end

  end

  def add
    # TODO: ask the user a recipe name
    print "\n"
    "Which recipe's name do you want?"
    print "\n"

    name = gets.chomp
    recipe = @controller.add(name)
    # TODO: call the appropriate controller method with the proper argument(s)
  end

  def del
    # TODO: ask the user a recipe index
    puts "Which recipe do you want to delete?"
    index = gets.chomp
    delete_recipes = @controller.delete_recipe(index - 1)
    puts "The recipe #{delete_recipes} has been deleted"  # TODO: call the appropriate controller method with the proper argument(s)
  end

  def exit
    # TODO: exit the program
    @running = false
    # Hint: Take a look at the display method !
  end

  def user_input
    # TODO: Get the user input and return it
    # [OPTIONAL] You can think of the case where the user
    # enters a wrong choice.
    input = gets.chomp.to_sym
    unless TASKS.keys.include?(input)
      puts "Invalid input, please retry"
      self.user_input
  end

  def display
    puts "-- Welcome to the CookBook --"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)

      print "\n"
    end
  end

  ###
  ##  You don't need to modify the following methods !
  ###
  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send
  def dispatch(task)
    self.send(task.to_sym)
  end
end
