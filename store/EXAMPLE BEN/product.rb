class Product
  attr_accessor :brand, :type, :price, :id

  def initialize(brand, type, price, id)
    @brand = brand
    @type = type
    @price = price
    @id = id
  end
end
