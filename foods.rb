class Food
  attr_reader :name


  def initialize(name)
    @name = name.downcase
  end
end


class Chicken < Food
end


class CatFood < Food
end


class DogFood < Food
end


class HumanFood < Food
end


class Lemon < Food
end


class Milk < Food
end