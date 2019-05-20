
class Author
  attr_reader :author_name
  @@all = []
  def initialize(author_name)
    @author_name = author_name
    @@all << self
  end
  def self.all
    @@all
  end
  def books
    bookauthor_obj = BookAuthor.all.select {|obj| obj.author_obj.author_name == self.author_name}
    this_authors_books = bookauthor_obj.map {|obj| obj.book_obj.book_name}
    this_authors_books.join(", ")
  end
  def write_book(title, word_count)
    book_four = Book.new(title, word_count)              
    BookAuthor.new(book_four, self)              
  end
  def self.most_words
    
    BookAuthor.all.map do |obj|
      obj
      
    end
  end
end