@products =[]
@cart = {}
@total_cart_value = 0.0

@products << {:ref_number => 1, :name => "Nike - Airmax101", :price => 180, :description => "Sporty? This is the overpriced shoe to go with!", :loyaltypoints => 36}
@products << {:ref_number => 2, :name => "Adidas - G Edition", :price => 100, :description => "Real 'German' craftsmanship, for only €100,-", :loyaltypoints => 20}
@products << {:ref_number => 3, :name => "Puma - Almost Swooshy", :price => 80, :description => "That other german brand...", :loyaltypoints => 16}
@products << {:ref_number => 4, :name => "NewBalance - 576", :price => 60, :description => "Generic, but had a moment of fashion status lately", :loyaltypoints => 12}
@products << {:ref_number => 5, :name => "Asics - TeppanYakki", :price => 90, :description => "Japanese technology in a shoe? Yes sir", :loyaltypoints => 18}
@products << {:ref_number => 6, :name => "Converse - NotOnlyRubber Edition", :price => 50, :description => "Pay only €50,- for a piece of fabric together with a rubber base, it's awesome", :loyaltypoints => 10}
@products << {:ref_number => 7, :name => "Hugo Boss - Croco Boat Shoe", :price => 380, :description => "You got enough money right?",:loyaltypoints => 76}


puts "Welcome to Generic Shoe Shop, how can we help you? If you're interested, this is our stock at the moment:"

@products.each do |product|
puts "_" * 40
  puts "#{product[:ref_number]}. #{product[:name]}"

  puts "current price is €#{product [:price]},00"

  puts "#{product[:description]}"
puts "_" * 40
  end

puts
puts
puts
puts

# Repeat until user enters "y" or "n"
puts "Are you interested in buying anything? (y/n)"
  begin
     response = gets.chomp.downcase
  end while response != "y" && response != "n"

#make choice, following add to cart def choose_product
def choose_product
  puts "Which item do you want to buy? response with the ref_number to add it to your cart [1 - 7]"
  gets.chomp

  case
    when "1"
      puts "#{@products[0]} was added to your cart."
      @cart << @products[0] 
    when "2"
      puts "#{@products[1]} was added to your cart."
    when "3"
      puts "#{@products[2]} was added to your cart."
    when "4"
      puts "#{@products[3]} was added to your cart."
    when "5"
      puts "#{@products[4]} was added to your cart."
    when "6"
      puts "#{@products[5]} was added to your cart."
    when "7"
      puts "#{@products[6]} was added to your cart."
    end
end
choose_product

#@cart << @products[]

# IS THAT EVERYTHING?
puts "Is that everything?"
  begin
     response = gets.chomp.downcase
  end while response != "y" && response != "n"

puts "#{@cart[:ref_number]}"
#Grand Total
#Loyalty Points

#@cart= []
