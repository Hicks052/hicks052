# Pseudo-code:
# 1. Print welcome
# 2. Get horses - push into a new array - gets.chomp
# 3. Get user's bet - gets.chomp
# 4. Run the race - sample method horses
# 5. Print results

puts "Welcome to the races!"

horses = ["Bernardo", "Keith", "Johno", "Silver Bullet"]


puts "The horses are running"
 horses.each_with_index do |horse, index|
    puts "#{index + 1} - #{horse}"
  end

puts "What horse number would you like to bet on?"
horse_index = gets.chomp.to_i - 1

puts "You bet on #{horses[horse_index]}"

# "- 1" and "+ 1" are aligning the printed horse number with the index number

winner = horses.sample

if winner == horse_index
  puts "You won!"
else
  puts "The winner was #{winner}, you lost!"
end



# changed when we added odd:
# horse = gets.chomp.downcase to disegard upper or lower case
# you bet on "{horse.capitalize" to caps the horse name
# changed to horses.each do |horse, odds| to use hashes
# changed the array from string to hash via "Bernardo => 5:1" etc
# winner = horses.key.sample.downcase - have to use ".key" bc hashes have to be called with keys in an array
# Use .capitalize inside of curly brackets to capitalize horse names

#Changing to ask for money bet:

# puts "how much do you want to bet?"
# amount = gets.chomp.to_i
# puts "you bet #{amount} on #{horse.capitalize}"

# For amount won: amount = amount * horses[horse]






