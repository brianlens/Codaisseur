require './store_execute.rb'


puts "Welcome to Generic Shoe Shop, how can we help you? If you're interested, theses are our brands at the moment:"


Products.each do |product|
puts "_" * 40
  puts Product.brand

  puts "current price is: €" Product.price "0,00"

  puts Product.description
puts "_" * 40
  end
