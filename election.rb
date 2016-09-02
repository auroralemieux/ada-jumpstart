# this script will allow a user to vote for specific candidates, then will display results and a winner

# FEATURES TO ADD
# feature separating the results as ballot and write-in candidates

# SET THE BALLOT CANDIDATES
ballot = ["JESUS", "GHANDI", "GODZILLA", "PRINCE CHARMING", "CRUELLA"]
n = 0

# GREETING
puts "Welcome to my voting program!"

# USER PICKS HOW MANY VOTES
print "How many times would you like to vote? "
vote_times = gets.chomp.to_i
unless vote_times > 0
  abort("Oh, I guess you don't want to vote right now. Thanks!")
end

# TELLS USER THE BALLOT OPTIONS
puts "\nThe candidates are #{ballot[n...n-1].join(", ")}, and #{ballot[n-1]}."

# USER HAS OPTION TO ADD A WRITE-IN CANDIDATE
print "\nWould you like to add a write-in candidate? (yes/no): "
add_writein = gets.chomp.upcase
while add_writein == "YES"
  print "\nWhat is your write-in candidate's name? "
  new_candidate = gets.chomp.upcase
  ballot.push new_candidate
  puts "\nNow the candidates are #{ballot[n...n-1].join(", ")}, and #{ballot[n-1]}."
  print "\nWould you like to add another write-in candidate? (yes/no): "
  add_writein = gets.chomp.upcase
end
puts "\nYour final candidates are: #{ballot[n...n-1].join(", ")}, and #{ballot[n-1]}."

puts "\nPlease type your selection at the prompt."

# SAVES EACH VOTE AS AN ELEMENT OF THE VOTES ARRAY
votes = []

i = 0

vote_times.times do |i|
  print "Vote #{i+1}: "
  new_vote = gets.chomp.upcase
  while !(ballot.include? new_vote)
    puts "Sorry, that person isn't on the ballot."
    print "Vote #{i+1}: "
    new_vote = gets.chomp.upcase
  end
  votes.push new_vote
  i += 1
end

puts "\nThank you for voting! Here are the results:\n\n"

# SAVES EACH UNIQUE CANDIDATE AS A HASH WITH THE NAME AND THE NUMBER OF VOTES
candidates = Hash.new(0)

votes.each do |v|
  candidates[v] += 1
end

# PRINTS THE RESULTS BY CANDIDATE
candidates.each do |k, v|
  if v == 1 then plural_vote = "vote" else plural_vote = "votes" end
  puts "#{k} - #{v} #{plural_vote}"
end

# FINDS A WINNER BY SAVING THE CANDIDATE(S) WITH THE MOST VOTES TO A NEW ARRAY
winners = []
candidates.each do |k,v|
  if v == candidates.values.max
    winners.push k
  end
end

# DECLARES THE WINNER
if winners.length.to_i > 2
  puts "\nIt was a tie between these #{winners.length} candidates: #{winners[n...n-1].join(", ")}, and #{winners[n-1]}."
elsif winners.length.to_i == 2
  puts "\nIt was a tie between #{winners[0]} and #{winners[1]}."
else
  puts "\nThe winner is #{winners[0]}."
end

puts "Thanks for voting!"
