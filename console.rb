require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'

book_one = Book.new("War and Peace", 10000)
book_two = Book.new("Jurassic Park", 90000)
book_three = Book.new("Jungle Book", 8000)
author_one = Author.new("Rudyard Kipling")
author_two = Author.new("Michael Crighton")
author_three = Author.new("Tolstoy")
bookauthor_one = BookAuthor.new(book_two, author_one)
bookauthor_two = BookAuthor.new(book_one, author_one)
bookauthor_three = BookAuthor.new(book_three, author_two)


p Author.most_words
#binding.pry
