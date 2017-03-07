# Adds a bunch of *'s to divide
def print_divider
  puts "*" * 40
  puts "\n"
end
# Progress bar prints three times .'s with the delay of half second.
def print_progress_bar
  4.times { sleep 0.5; print "." }
  puts "\n"
end
# Defining the ingredients
NUM_EGGS = 2
NUM_BUTTER = 1
ingredients = [
  {name: 'eggs', quantity: NUM_EGGS},
  {name: 'butter', quantity: NUM_BUTTER},
  {name: 'flour', quantity: '100g'},
  {name: 'salt', quantity: '1 pinch'},
  {name: 'milk', quantity: '300ml'},
]
# Printing out the ingredients
puts "*     Let's make some yummy pancakes!     *"
print_divider
puts "Ingredients: "

ingredients.each do |ingredient|
  puts "- #{ingredient[:quantity]} #{ingredient[:name]}"
end
# Asking user if he got all ingredients
loop do
  puts "\n"
  print_divider
  puts "Do you have all the ingredients? (Y/N) "
  answer = gets.chomp.upcase
  if answer == 'N'
    puts "I guess it's time to go shopping time then!"
    print print_progress_bar
  elsif answer == 'Y'
    puts "Well, What are we waiting for? Let's cook!"
    break
  else
    puts "I am sure you've done something wrong... How about another try?"
  end
end
