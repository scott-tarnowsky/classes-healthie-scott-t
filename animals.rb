require_relative 'foods'

class Animal
  def eat(food)
    if likes_food?(food)
      make_noise(3)
      "Ate the #{food.name}!"
    else
      make_noise(1)
      "Refuses to eat #{food.name}."
    end
  end

  def likes_food?(food)
    raise NotImplementedError, "Subclass must implement likes_food?"
  end


  def make_noise(times)
    raise NotImplementedError, "Subclass must implement make_noise"
  end
end

class Dog < Animal

  def likes_food?(food)
    [DogFood, CatFood, Chicken, HumanFood].any? { |food_class| food.is_a?(food_class) }
  end

  def make_noise(times)
    times.times { puts "Woof!" }
  end

end

class Cat < Animal

  def likes_food?(food)
    [CatFood, Chicken, Milk].any? { |food_class| food.is_a?(food_class) }
  end


  def make_noise(times)
    times.times { puts "Meow!" }
  end

end