require 'pry'
class Book
    @@all = []
attr_accessor  :title, :book, :word_count

 def initialize(title, book, word_count)
    @author = book
    @title = title
    @word_count = word_count
    @@all << self
 end

 def self.all
    @@all
 end



end


binding.pry
0