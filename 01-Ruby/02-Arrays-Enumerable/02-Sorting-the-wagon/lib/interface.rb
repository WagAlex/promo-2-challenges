require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array

  students << name

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list

list_of_students = wagon_sort(students)
nb_students = students.lenght - 1

puts "Congratulations! Your Wagon has #{nb_students} students:"


students.each do |students|
puts "-#{students}"



end