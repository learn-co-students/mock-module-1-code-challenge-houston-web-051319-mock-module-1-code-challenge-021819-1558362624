require 'pry'
require_relative './book'
require_relative './author'
require_relative './book_author.rb'

5.times {BookAuthor.new}
Jungle = Book.new("The Jungle Book","Rudyard Kipling", 118)
If = Book.new("If","Rudyard Kipling", 50)
Harry = Book.new("Harry Potter and The Philosopher's Stone", "J.K Rowling", 309)
Harry2 = Book.new("Harry Potter and The Chamber of Secrets", "J.K Rowling", 341)

binding.pry
