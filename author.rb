
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
  def total_words
    total = 0
    BookAuthor.all.each do |obj|
      if obj.author_obj.author_name == self.author_name
        total += obj.book_obj.word_count
      end
    end
    total
  end
  
  def self.most_words
    most = 0
    author = []
    Author.all.each do |author_obj|  
      if author_obj.total_words > most 
        most = author_obj.total_words
        author = author_obj
      end
    end
  end
  #takes and array of all artists and iterates while calling total_words instance method on each 
  #author object.  compare number to placeholder num and each other. return object with highest word_total.
end



