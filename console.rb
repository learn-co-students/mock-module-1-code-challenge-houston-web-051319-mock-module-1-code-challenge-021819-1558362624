require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'

# Authors

steinbeck = Author.new("John Steinbeck")
puts steinbeck.name
bukowski = Author.new("Charles Bukowski")

# Books

# grapes_of_wrath = Book.new("Grapes of Wrath", 400)

# puts grapes_of_wrath.title
# puts grapes_of_wrath.word_count


grapes_of_wrath = steinbeck.write_book("Grapes of Wrath", 400)
east_of_eden = steinbeck.write_book("East of Eden", 600)

ham_on_rye = bukowski.write_book("Ham on Rye", 350)
pulp = bukowski.write_book("Pulp", 220)


puts grapes_of_wrath.word_count
puts east_of_eden.word_count
puts grapes_of_wrath.title

puts steinbeck.books


binding.pry
z
