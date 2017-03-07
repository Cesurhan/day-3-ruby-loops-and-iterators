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
