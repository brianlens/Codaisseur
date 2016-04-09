@inventory = {}
@cart = ""
@total_cart_value = 0.0

def build_inventory
  add_to_inventory("nike", 10, 180.0)
  add_to_inventory("adidas", 2, 280.0)
  add_to_inventory("puma", 20, 72.50)
  add_to_inventory("newbalance", 0, 14.0)
end

def add_to_inventory(product, quantity, price)
  @inventory[product] = {
    "quantity" => quantity,
    "price" => price
  }
end

puts "Currently we have these shoes in stock"

def show_inventory
  puts @inventory
end

def in_stock?(product, quantity = 1)
  @inventory[product] && @inventory[product]["quantity"] >= quantity
end

def show_contents_of_the_cart
  puts "your cart:

  #{@cart}

  Grand Total: €#{@total_cart_value}"
end

def add_cart(product, amount)
  purchase = " #{amount} #{product}\n"
  @cart << purchase


  cost_per_item = @inventory[product]["price"]
  @total_cart_value += (cost_per_item * amount)

  @inventory[product]["quantity"] -= amount
end

build_inventory
show_inventory



puts "Which pair do you want to buy?"
purchase = gets.chomp

if in_stock?(purchase)
  puts "how many #{purchase} shoes would you like to buy?"
  amount = gets.chomp.to_i

  if in_stock?(purchase, amount)
     add_cart(purchase, amount)

     show_contents_of_the_cart
  end

else
    puts "Sorry, we are realllly reallly justttt out of stock, you can leave your email-address so we can notice you when they are in stock again"
    puts "What is your email?"
    email = gets.chomp

    puts "Thanks, we've sent the email to #{email}!"
end


show_inventory
