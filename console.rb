require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'

author1 = Author.new("Hermann")
book1 = Book.new(author1, "hermannTitle", 200)
book_author_1 = Book_Author.new(author1, book1)

author2 = Author.new("Hans")
book2 = Book.new(author2, "hansTitle", 300)
book_author_2 = Book_Author.new(author2, book2)

binding.pry
0