require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'


carlos = Author.new("Carlos")
sam = Author.new("Sam")

ruby = Book.new(carlos, "Ruby", 100)
java = Book.new(sam, "Java", 50)

author_book1 = BookAuthor.new(carlos, ruby)
author_book2 = BookAuthor.new(sam, java)


binding.pry
