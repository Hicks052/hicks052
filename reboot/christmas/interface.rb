require "open-uri"
require "nokogiri"

puts "Welcome to your Christmas list"

list = {}

action = nil

until action == "exit"
  puts "*************************"
  puts "What would you like to do? [list, add, delete, mark, inspire, eixt]"
  action = gets.chomp

  if action == "list"
    puts "You have #{list.length} items in your list"
    list.each do |item, status|
      if status == true
        puts "- #{item.capitalize}: Not Purchased"
      else
        puts "- #{item.capitalize}: Purchased"
      end
    end

# or could use syntax: if status ? bought = "Purchased" : bought = "Not Purchased"

  elsif action == "add"
    puts "What would you like to add?"
    new_item = gets.chomp.downcase
    list[new_item] = false

  elsif action == "delete"
    puts "What would you like to delete?"
      delete_item = gets.chomp
      if list.include?(delete_item)
      list.delete(delete_item)
      end

  elsif action == "mark"
    puts "Which item would you like to mark as purchased?"
    mark_item = gets.chomp
    list [mark_item] = true
    puts "item has been purchased!"

  elsif action == "inspire"
    puts "What do you want inspiration for?"
    answer = gets.chomp
    url = "https://www.etsy.com/search?q=#{answer}"
    file = open(url)
    doc = Nokogiri::HTML(file)
    results = doc.search(".card-title").first(10)
      results.each_with_index do |item, index|
     puts "#{index + 1} - #{item.text.strip.slice(0..30)}" #"+1" to give a numeral for index instead of 0
    end

   puts "what would you like to choose from the list?"
    item_index = gets.chomp.to_i - 1
    new_item = results[item_index].text.strip.slice(0..30)
    list[new_item] = false
    puts "#{new_item} has been added to your list!"

  elsif action == "exit"
    puts "See you later!"

  end

end



# Look at live code solutions for CSV and scraping numbers and letters

# ASk what we have inspiration (search) for
    # SAve the answer as variable
    # Return the list of possibilities
    # Be able to choose from the list
    # Add the choice to our list
    # Search etsy using
