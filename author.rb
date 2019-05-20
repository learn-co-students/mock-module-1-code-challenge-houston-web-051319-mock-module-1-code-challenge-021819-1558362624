class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        author_books = Book.all.select {|author| 
            author.author == self}
        author_books.map {|book| book.title}
    end

    def write_book(title, word_count)
        @title = title
        @word_count = word_count
        Book.new(self, @title, @word_count)
    end

    def total_words 
        author_books = Book.all.select do |author|
            author.author == self
        end
        author_books.sum(&:word_count)
    end
    
   # def self.most_words
        #most_words = 0
       # author_words = Author.all.each do |author|
      #      author.total_words
      #  if author_words>most_words
       #     most_words = author_words
       #     else
       #         most_words
       #         end
       #     end
#
  #  end

    




end

