# this is a madlibs program
# welcome statement
puts "Welcome to Aurora's Madlibs game!"

# input variables
# these will be the words that the madlibs needs to be filled in

noun1 = " "
verb1 = " "
number1 = 0
adjective1 = " "
noun2 = " "
verb2 = " "

# lets user know that they'll be providing some words as prompted

puts "Please provide a word as prompted."

# asking for the specific words

print "Please provide a noun. "
noun1 = gets.chomp

print "Please provide a verb. "
verb1 = gets.chomp

print "Please provide a number. "
number1 = gets.chomp

print "Please provide an advective. "
adjective1 = gets.chomp

print "Please provide another noun. "
noun2 = gets.chomp

print "Please provide another verb. "
verb2 = gets.chomp

# now I'm telling the user what will happen next -- the madlib filled in!

puts "Thank you for your input! Here is your MadLib completed!"

puts "Once upon a time there was a #{adjective1.upcase} #{noun1.upcase} who liked to #{verb1.upcase}."
puts "This happened #{number1.upcase} times a day, until "\
  "the day that the #{noun2.upcase} came to visit."
puts "The #{noun2.upcase} liked to #{verb2.upcase}."
puts "Now the #{noun1.upcase} and the #{noun2.upcase} would #{verb2.upcase} together."
