# Adds a bunch of *'s to divide
def print_divider
  puts "*" * 40
  puts "\n"
end
# Progress bar prints three times .'s with the delay of half second.
def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end
# Defining the ingredients
NUM_EGGS = 1
NUM_BUTTER = 1
ingredients = [
  {name: 'eggs', quantity: NUM_EGGS},
  {name: 'butter', quantity: NUM_BUTTER},
  {name: 'flour', quantity: '100g'},
  {name: 'salt', quantity: '1pinch'},
  {name: 'milk', quantity: '300ml'},
]
