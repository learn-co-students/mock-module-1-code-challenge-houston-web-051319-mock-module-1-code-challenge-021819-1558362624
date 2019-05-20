require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'

book1 = Book.new("Book1", 3520)
book2 = Book.new("Book2", 4500)
book3 = Book.new("Book3", 5430)
book4 = Book.new("Book4", 3000)

author1 = Author.new("Kurtis")
author2 = Author.new("Roysan")
author3 = Author.new("Hermann")

book_author1 = Book_Author.new(book1, author1)
book_author2 = Book_Author.new(book2, author2)
book_author3 = Book_Author.new(book3, author3)
book_author4 = Book_Author.new(book4, author3)

binding.pry
0
