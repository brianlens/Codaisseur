class Product
  attr_accessor (:id, :name, :description, :price)

  def initialize(id, name, description, price)
    @name = name
    @description = description
    @price = price
    @id = id
  end
end
