require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

#TODO: build your interface with login and CRUD tasks on the posts

while true

  logged_in = false

  until logged_in
    puts "Please login with your <id>"
    #TODO: instantiate a user with his <id>
    id = gets.chomp.to_i
    logged_in = true
    begin
      user = User.find(id)
    rescue
      p "Login Error"
      logged_in = false
    end

  end