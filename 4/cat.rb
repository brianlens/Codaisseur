class Cat
  attr_accessor :name


  def initialize(name, fur_colour)
    @name = name
    @fur_colour  = fur_colour
  end
  def sound
      "#{name} says: hello Reginald."
  end
  def name
    @name
  end
end
