require './product.rb'

  shoe1 = Product.new("nike_airmax", 110, 1)
  shoe2 = Product.new("adidas_y3", 275, 2)
  shoe3 = Product.new("new_balance", 70, 3)
  shoe4 = Product.new("hugo_boss", 340, 4)
  shoe5 = Product.new("converse", 70, 5)

def choose_product
  puts "are you interested in any of the following shoes?"
    puts Product.each do |shoe|
    end
end

choose_product

#  def get_product product_name
#    @brands.each do |brand|
#      brand.products.each do |product|
#        if product.brand == product_brand
#          return product
#        end
#      end
#    end
#    "ow no its not here"
#  end
#
#  def list
#    @brands.each do |brand|
#      puts brand.name
#      brand.products.each do |product|
#          puts "-- #{product.brand}"
#      end
#    end
#  end
# end
