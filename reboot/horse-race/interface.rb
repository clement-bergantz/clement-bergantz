require_relative 'race'

horses = ["Pomme d'Adam", "Grand tonnerre de la Garonne", "Avance au Medoc", "Etoile argentée", "Licorne du Peyroux"]

# 1. Print welcome
puts "Welcome to the race"
sleep(1)

# 2. Get horses
puts "Here are the horses:"
sleep(1)

horses.each_with_index do |horse, index|
  puts "#{index + 1} - #{horse}"
end

# 3. Get user's bet
puts "What's you bet ?"
puts "Tip the number of the horse above (1, 2, 3, 4, 5)"
user_bet = gets.chomp.to_i


# 4. Run the race (race = 3 tour)
# Definir l'ordre au premier départ (shuffle)
horses.shuffle!


3.times one_lap

# 5. Print results
