
class BookAuthor
  attr_accessor :book_obj, :author_obj
  @@all = []
  def initialize(book_obj, author_obj)
    @book_obj = book_obj
    @author_obj = author_obj
    @@all << self
  end
  def self.all
    @@all
  end
end