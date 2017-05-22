# Create a hash
# Create an empty array for the cart
# List the store items
# Ask what items the buyer wants
# push item into cart


store_items = {
  "hamster" => { price: 20, quantity: 4 },
  "spider" => { price: 50, quantity: 5 },
  "puppy" => { price: 70, quantity: 2 },
  "rabbit" => { price: 10, quantity: 12 }
}

puts "Welcome to the pet store!"

cart = {}

# keys: pet, values: quantity

store_items.each do |animal, details|
  puts "- #{animal}, $#{details[:price]} #{details[:quantity]} left"
end

pet_name = nil

until pet_name == ""
  puts "Which pet would you like?"
  pet_name = gets.chomp

  if pet_name == ""
    puts "Thanks for shopping!"

  elsif !store_items.key? (pet_name)
    puts "Creature not available"
  elsif store_items[pet_name] [:quantity] == 0
    puts "Creature out of stock"
  else
      cart << pet_name
      store_items[pet_name] [:quantity] -= 1
      puts "There are #{store_items [pet_name] [:quantity]} remaining."
    end
end

total_bill = 0
cart.each do |pet|
  total_bill += store_items[pet] [:price]
end

puts "You have bought #{cart.join(", ")}"
puts "The total amount is $#{total_bill}"


# use live code answer to see how to convert to quanity multipler etc as final step


p cart


