require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'


tolkien = Author.new("Tolkien")
jk_rowling = Author.new("JK_Rowling")


lotr1 = Book.new(tolkien, "Fellowship of the Ring", 100)
lotr2 = Book.new(tolkien, "Two Towers", 200)
lotr3 = Book.new(tolkien, "Return of the King", 300)

hp1 = Book.new(jk_rowling, "Part 1", 1000)
hp2 = Book.new(jk_rowling, "Part 2", 2000)
hp3 = Book.new(jk_rowling, "Part 3", 3000)



binding.pry
