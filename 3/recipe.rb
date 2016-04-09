ingredients = ["6_slices_of_pancetta","25_olives","25ml_of_olive_oil","2_onions","3_toes_of_garlic","6_tomatoes","2_bayleaves","seasoning","water","500_grams_of_spaghetti"]
index = 0

puts "Before going to the kitchen, get these ingredients"

  ingredients.each do |ingredient|
    puts "#{index}: #{ingredient}"
    index += 1
  end

def confirmation_process
  begin
   puts "Do you have the ingredients (y/n)?"
   response = gets.chomp.downcase
  end while response != "y" && response != "n"

      if response == "y"
        puts "Put a large pan with 1000 ml of water on the stove and make it boil."
      else
        puts "Go to the supermarket, you lazy bastard!"
        confirmation
      end
    end until response == "y" || "n"
confirmation_process

  puts "While the water is starting to boil we are going to cut the ingredients"
  
  puts "Let's start with cutting six slices of pancetta"


# pancetta
index = 0
  while index < 6
    puts "Chop them pancetta..."
    index += 1
  end

#done?

  puts "Next you are going to mash the garlic with a bit of olive oil"
  index = 0
    while index < 2
      puts "mash mash..."
      index += 1
    end

#done?

  puts "After that cut the olives into slices and put them in the pan together with the pancetta"
    index = 0
      while index < 1
        puts "Are you feeling Italian already?"
        index += 1
      end

#done?

  puts "your water must be boiling now, is it?"

  #YES / NO ?
  #NO: Get a better stove man
  #Yes: goood, continue and put all the spaghetti in the pan, let it simmer for 10 minutes until al dente

  puts "Now start cutting the tomatoes and afterwards the onions"

  #Are you crying already?
  #NO: your onions weren't big enough, add another one until crying
  #Yes: Good continue

  puts "Put all ingredients besides the spaghetti in the pan and simmer a few minutes - add some red wine if you like"

  index = 0
    while index < 1
      puts "You're kitchen should be smelling quite nice right now"
      index += 1
      sleep 2
      puts "if it doesn't please start over..."
    end


  puts "finally, throw some spaghetti at your fridge - yes really"
  #did it stick?
  #Yes: BUENO, AL dente
  #NO: Wait for a few more minutes, keep trying until it keeps sticking on that door.

  puts "combine everything and season until appropriate"
  puts ""
