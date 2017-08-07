require_relative 'calculator'

loop do
  # 1. Ask user for a number
  puts "Enter a first number:"
  first_number = gets.chomp.to_f

  # 2. Ask for the operator
  puts "Choose the operation [+][-][x][/]"
  operator = gets.chomp

  # 3. Ask for a second number
  puts "Enter a second one:"
  second_number = gets.chomp.to_f

  puts calculator(first_number, operator, second_number)

  # 4. Continue
  puts "Continue ? 'yes' or 'no'"
  choice = gets.chomp

  break unless choice.include? "yes"

end
