class Cake
  def initialize(name)
    @name = name
  end

  def baking
    mix_ingredients
    in_the_oven
  end

  private
  def mix_ingredients
    puts "1. Mix all ingredients."
  end

  def in_the_oven
    puts "2. Place the cake in the oven."
  end
end

cake = Cake.new("Chocolate")
cake.baking

# ----------------------------------

class Teacher
  attr_accessor :name, :age
  attr_reader :name
  attr_writer :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  ATTR READER
  def teacher_name
    @name
  end

  ATTR WRITER
  def change_age(value)
    @age = value
  end
end

maria = Teacher.new("Maria", 30)
puts maria.inspect

maria.change_age(35)
puts maria.inspect

# ----------------------------------

require 'date'
puts Date.today.year

# ----------------------------------
module Name
  def first_name(name)
    puts "My name is #{name}."
  end

  def last_name(surname)
    puts "My last name is #{surname}."
  end
end

class Teacher
  include Name
end

class Student
  include Name
end

teacher = Teacher.new
teacher.first_name("Dennis")
teacher.last_name("Neely")

student = Student.new
student.first_name("Jim")
student.last_name("Jenkins")

# ----------------------------------
module ID
  def item_category(category)
    puts "Congrats! You have just created a new '#{category}' category!"
  end
end

class Cocktail
  extend ID
end

class Cake
  extend ID
end

Cocktail.item_category("Gin")


Cake.item_category("Birthday")


























