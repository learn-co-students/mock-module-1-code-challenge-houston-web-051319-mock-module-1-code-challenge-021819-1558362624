require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'
hans = Author.new("Hans")
hermann = Author.new("Hermann")
dad = Author.new("dad")
book = Book.new(hans, "Book", 10)
book2 = Book.new(hermann, "Book2",20)
book3 = Book.new(hermann, "Book3", 30)
book4 = Book.new(dad, "Book4", 40)
book5 = Book.new(dad, "Book5", 50)
book6 = Book.new(dad, "Book6" , 60)
bk1 = BookAuthor.new(hans , book)
bk2 = BookAuthor.new(hermann, book2)
bk3 = BookAuthor.new(hermann, book3)
bk4 = BookAuthor.new(dad, book4)
bk5 = BookAuthor.new(dad, book5)
bk5 = BookAuthor.new(dad, book6)
binding.pry
0