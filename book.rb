
class Book
  attr_reader :book_name, :word_count
  @@all = []
  def initialize(book_name, word_count)
    @word_count = word_count
    @book_name = book_name
    @@all << self
  end
  def self.all
    @@all
  end
  def author
    book_author_obj = BookAuthor.all.select {|obj| obj.book_obj.book_name == self.book_name}
    this_books_author = book_author_obj.map {|obj| obj.author_obj}
    this_books_author
  end
  def title
    self.book_name
  end
  def word_count
    @word_count
  end
  
end