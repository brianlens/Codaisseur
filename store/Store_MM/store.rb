# PRODUCT
class Product
  attr_accessor :name, :description, :price, :id
  def initialize(name, description, price, id)
      @name = name
      @description = description
      @price = price
      @id = id
  end
end

# CATEGOTY
class Category
  attr_accessor :name, :products
  def initialize(name, products)
    @name = name
    @products = products
  end
end

# INVENTORY
class Inventory
  def initialize
    @categories = []
    shoes = [
      Product.new("Nike Airmax", "These were hand-rolled on the thighs of original Cuban mamasitas!", 25, 1),
      Product.new("Adidas Y-3", "This one will send you right to the Stratosphere!", 30, 2)
    ]
    @categories << Category.new("Smokes", smokes)
    shirts = [
      Product.new("Carribean Rum", "As soft as it gets!", 70, 3),
      Product.new("Mezcal", "Careful here, it will awake the demons in you!", 75, 4)
    ]
    @categories << Category.new("Drinks", drinks)
  end
  def get_product product_name
  @categories.each do |category|
    category.products.each do |product|
      if product.name == product_name
        return product
      end
    end
    "I'm terribly sorry but we don't have such thing in our stock."
  end
  def list
    @categories.each do |category|
      puts category.name
      category.products.each do |product|
        puts ">>> #{product.name}"
      end
    end
  end
end

# SHOP
class Shop
  def initialize
    @inventory = Inventory.new
  end
  def what_is_in_store
    @inventory.list name, products
  end
  def shop_for_item
    what_is_in_store
    puts "Select an item to buy by product name"
    name = gets.chomp
    result = @inventory.get_product name
    p result
  end
end
# EXECUTION
shop = Shop.new
shop.shop_for_item
