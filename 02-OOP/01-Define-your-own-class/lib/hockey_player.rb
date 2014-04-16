
class HockeyPlayer
  def initialize(name, surname, number)
    @name = name
    @surname = surname
    @number = number
  end

  def annoucement
  puts "Here welcome #{@name} #{@surname} nuuuuumber #{@number}"
  end

end

alexandre_tournaud = HockeyPlayer.new("Alexandre", "Tournaud", 44)
crossby = HockeyPlayer.new("Sidney", "Crossby", "87")

puts alexandre_tournaud.annoucement
puts crossby.annoucement