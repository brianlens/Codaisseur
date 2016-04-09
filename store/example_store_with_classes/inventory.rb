require "./product"

class Inventory
  def initialize
    @products = []
    for i in 0..999 do
      @products << Product.new(i, "#{i}name", "#{i}description", i.to_f)
    end
  end
  def get_product product_name
    @products.each do |product|
      if product.name == product_name
        return product
      end
    end
    "ow no its not here"
  end
end
