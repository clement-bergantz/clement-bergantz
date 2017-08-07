# Pseudo-code

# Store is an array of hash element where
# hash contain 3 keys (:name, :price, :availabe)
$store = [
  {
    name: "kiwi",
    price: 1.25,
    available: 8
  },
  {
    name: "banana",
    price: 0.5,
    available: 8
  },
  {
    name: "mango",
    price: 4,
    available: 4
  },
  {
    name: "apple",
    price: 1.25,
    available: 10
  }
]

# Cart is a hash with two keys (item and quantity)
$cart =
  {
    kiwi: 2,
    apple: 1
  }

# 1. Print Welcome
def welcome
  puts "_" * 30
  puts "WELCOME TO INSTACART"
  puts "_" * 30
end

# 2. Define your store (what items are for sale?)
def display_store
  puts "In our store today:"
  $store.each do |element|
    puts "#{element[:name]}: #{element[:price]}$ - #{element[:available]} availables"
  end
  puts "_" * 30
end

# 3. Get items from the user (shopping)
def add_to_cart
  puts "Which item? (or 'quit' to checkout)"
  item_to_add = gets.chomp
  exit if item_to_add == "exit"

  puts "How many? (or 'quit' to checkout)"
  item_quantity = gets.chomp
  exit if item_to_add == "exit"

  $cart[item_to_add] = item_quantity
end

# 4. Print the bill (checkout)
def checkout
  puts "_----------BILL------------"
  $cart.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

# RUNNING ZONE -----------------------------------------------------
welcome
display_store
add_to_cart
checkout
