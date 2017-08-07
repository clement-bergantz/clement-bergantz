def calculator(first_number, operator, second_number)
  result = first_number.send(operator, second_number)
  return "Result: #{result}"
end
