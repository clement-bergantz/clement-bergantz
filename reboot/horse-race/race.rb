# Build a method that change the order of the array "horses"
def one_lap

p horses = ["Pomme d'Adam", "Grand tonnerre de la Garonne", "Avance au Medoc", "Etoile argentée", "Licorne du Peyroux"]

# Definir l'ordre à la fin du tour(swamp)
# Choisir un horse random dans l'array horses sauf le premier
index_random = rand(1..horses.length - 1)
horses[index_random]

# Definir l'ordre à l'arrivée du tour
horses[index_random -1], horses[index_random] = horses[index_random], horses[index_random -1]
horses

end

p one_lap

