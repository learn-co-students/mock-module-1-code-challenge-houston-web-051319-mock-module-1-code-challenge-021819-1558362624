require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'

# Authors

steinbeck = Author.new("John Steinbeck")
puts steinbeck.name

# Books

# grapes_of_wrath = Book.new("Grapes of Wrath", 400)

# puts grapes_of_wrath.title
# puts grapes_of_wrath.word_count


grapes_of_wrath = steinbeck.write_book("Grapes of Wrath", 400)
east_of_eden = steinbeck.write_book("East of Eden", 600)

book_author1 = Book_author.new("Steinbeck GOF", steinbeck, grapes_of_wrath)
book_author2 = Book_author.new("Steinbeck EOE", steinbeck, east_of_eden)

puts book_author1

puts grapes_of_wrath.word_count
puts east_of_eden.word_count
puts grapes_of_wrath.title

puts steinbeck.books


binding.pry
