# CD into the top level of the repo in your terminal
# Run the command in the terminal
# ruby driver.rb [dog|cat] [chicken|cat_food|dog_food|human_food|lemon|milk]"
# Example: ruby driver.rb dog human_food

require_relative 'foods'
require_relative 'animals'

if ARGV.length != 2
  puts "Usage: ruby main.rb [dog|cat] [chicken|cat_food|dog_food|human_food|lemon|milk]"
  exit 1
end

animal_type, food_type = ARGV

food = case food_type.downcase
when "chicken"
  Chicken.new("chicken")
when "cat_food"
  CatFood.new("cat food")
when "dog_food"
  DogFood.new("dog food")
when "human_food"
  HumanFood.new("human food")
when "lemon"
  Lemon.new("lemon")
when "milk"
  Milk.new("milk")
else
  puts "Invalid food type"
  exit 1
end

animal = case animal_type.downcase
when "dog"
  Dog.new
when "cat"
  Cat.new
else
  puts "Invalid animal type. Please choose 'dog' or 'cat'"
  exit 1
end

puts animal.eat(food)