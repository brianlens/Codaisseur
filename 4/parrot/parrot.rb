class Parrot

  def initialize(name, colour, age, can_talk)
    @name = name
    @colour  = colour
    @age = age
    @can_talk = can_talk
  end
  def sound
      "#{name} says: hello Reginald."
  end
  def name
    @name
  end
end
