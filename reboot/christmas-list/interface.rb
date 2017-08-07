# Pseudo-code:
# Build the right list : an array (giftlist) of hash (gift) with
# the name as the key (:gift_name) and the status as the value (:gift_status)
$list = []

# 1. Welcome message
def welcome
  puts "-" * 34
  puts "Welcome to your Christmas giftlist"
  puts "-" * 34
end

# 2. Display menu (list / add / delete / mark / quit )
def print_menu
  puts "Which action [list|add|delete|mark|idea|quit]?"
end

# 3. Get user action
# In the running zone with the loop do

# 4. Perform the right action

# display the gift list with items : OK
def display_list
  puts "-----------YOUR GIFTLIST-----------"
  if $list.any?
    $list.each_with_index do |item, index|
      puts "#{index + 1} #{item[:gift_status]} #{item[:gift_name]}"
      end
  else
    puts "Your list is empty"
  end
end

# add a gift (item) to the list : OK
def add_item
  puts "What's the item you want to add to your giftlist?"
  item_to_add = gets.chomp.downcase
  $list << { gift_name: item_to_add, gift_status: "[ ]" }
end

# delete a gift (item) of the list : OK
def delete_item
  puts "Which item you want to delete? (give the index)"
  item_to_delete = gets.chomp.to_i
  $list.delete_at(item_to_delete - 1)
end

# mark a gift (item) as founded : OK
def mark_item
  puts "Which item have you already bought? (give the index)"
  item_to_mark = gets.chomp.to_i
  hash_to_mark = $list[item_to_mark - 1]
  hash_to_mark[:gift_status] = "[X]"
end

# Ask user what he is looking for and give some result from Etsy back


def idea
  # Ask the user
  puts "What are you looking for on Etsy?"
  user_idea = gets.chomp

  # Return the results from Etsy
  # puts "Here are Etsy results for #{user_idea}:"

  # Ask for a product to add to the giftlist
  # puts "Pick one to add to your list (give the number)"
  # item_to_add = gets.chomp.downcase
  # $list << { gift_name: item_to_add, gift_status: "[ ]" }

end


# Running zone ------------------------------------------------
welcome

# main loop displaying action menu and getting user's input : OK
loop do
  print_menu
  user_choice = gets.chomp.downcase
  case user_choice
  when "list" then display_list
  when "add" then add_item
  when "delete" then delete_item
  when "mark" then mark_item
  when 'idea' then idea
  when "quit" then exit
  else
    exit
  end
end
