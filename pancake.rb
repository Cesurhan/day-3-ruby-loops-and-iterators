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
# Defining the Recipe Steps
steps = [
  {description: "Sift the flour and salt into a mixing bowl and make a well in the centre.", action: "sift_flour_and_salt"},
  {description: "Crack the egg into the well", action: "crack_eggs"},
  {description: "Add the melted butter or oil and half the milk", action: "add_butter_and_milk"},
  {description: "Draw the flour into the liquid by stirring all the time with a wooden spoon until all the flour has been incorporated and then beat well to make a smooth batter", action: "generic_recipe_step"},
  {description: "Stir in the remaining milk.", action: "stir_the_milk"},
  {description: "Beat all the ingredients together for 1 minute in a blender or food processor", action: "generic_recipe_step"},
  {description: "Leave to stand for about 30 minutes", action: "generic_recipe_step"},
  {description: "To make the pancakes, heat a small heavy-based frying until very hot and then turn the heat down to medium.", action: "generic_recipe_step"},
  {description: "Lightly grease with oil and then ladle in enough batter to coat the base of the pan thinly (about 2 tablsp.)", action: "generic_recipe_step"},
  {description: ", tilting the pan so the mixture spreads evenly.", action: "generic_recipe_step"},
  {description: "Cook over a moderate heat for 1-2 minutes or until the batter looks dry on the top and begins to brown at the edges.", action: "generic_recipe_step"},
  {description: "Flip the pancake over with a palette knife or fish slice and cook the second side.", action: "generic_recipe_step"},
  {description: "Turn onto a plate, smear with a little butter, sprinkle of sugar and a squeeze of lemon juice or why not try some of our other suggestions for sweet and savoury toppings.", action: "generic_recipe_step"},
]
# Printing Out the Steps
print_divider
puts "Check below to follow the steps: "
steps.each_with_index do |step, index|
  puts (index + 1).to_s + ")" + step[:description]
end
# Defining the Steps Actions
def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def sift_flour_and_salt
  counter = 0
  while counter < 2
    counter += 1
    print "Sifting the flour and salt #{counter}."
    print_progress_bar
  end
end

def add_butter_and_milk
  counter = 0
  while counter < 1
    counter += 1
    print "Adding the butter and milk #{counter}."
    print_progress_bar
  end
end

def stir_the_milk
  for counter in 1..2
    print "Stiring the milk #{counter}."
    print_progress_bar
  end
end

def crack_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Breaking egg #{counter}"
    print_progress_bar
  end
end
# Asking User if Ready for Next Step
def ask_if_ready(step, index)
  puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
  answer = gets.chomp
  answer.upcase == 'Y'
end
# Iterating through Each of the Steps
steps.each_with_index do |step, index|
  print_divider

  loop do
    ready = ask_if_ready(step, index)
    break if ready

    puts "Alright, let me give you some additional time"
    print_progress_bar
  end

  send(step[:action])
end
