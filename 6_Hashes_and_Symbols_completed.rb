# Hash with Strings
person = {
  "name" => "Dennis",
  "age"=> 31,
  "nationality" => "American",
}

puts person

# Hash with Symbols
person = {
  :name => "Dennis",
  :age => 31,
  :nationality => "American",
}

puts person[:age]

# Difference between symbols and strings
puts "string".object_id
puts "string".object_id
puts :symbol.object_id
puts :symbol.object_id

# Symbol to String conversion
color = :red
p color
p color.to_s

# String to Symbol conversion
color2 = "blue"
p color2
p color2.to_sym

# .select method
grades = {
  alice: 100,
  dennis: 86,
  bob: 92,
  charlie: 77
}

# will select and print any keys/values higher than 91
puts grades.select { |name, grade| grade > 91}

# Printing keys & values
puts person
puts person.keys
puts person.values

# Default keys
new_person = Hash.new("key does not exist")
new_person[:age] = 25
new_person[:nationality] = "Norwegian"
puts new_person[:name]


# Code Academy: A Night at The Movies
# Live code review
movies = {
  StarWars: 4.8,
  Divergent: 4.7
}

choice = nil

until choice == "end"
  puts "What would you like to do? "
  choice = gets.chomp
  case choice
  when "add"
    puts "What movie would you like to add? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What rating does the movie have? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
  when "update"
    puts "What movie would you like to update? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie does not exist."
    else
      puts "What is the new rating? "
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |title, rating|
      puts "#{title}: #{rating}"
    end
  when "delete"
    puts "What movie would you like to delete? "
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie does not exist."
    else
      movies.delete(title.to_sym)
    end
  when "end"
    puts "Exiting!"
  else
    puts "Error! Please enter either 'add', 'update', 'display', or 'delete'"
  end
end














































