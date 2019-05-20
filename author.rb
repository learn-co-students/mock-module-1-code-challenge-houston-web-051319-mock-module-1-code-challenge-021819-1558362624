class Author
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def books
        #returns an array of all the book objects and author
        #has made
        book = []
        BookAuthor.all.each do |bookauthor_objects|
           if bookauthor_objects.author == self
            book << bookauthor_objects.book
           end
        end
        book
    end
    def write_book(title, word_count)
        x=Book.new(self, title, word_count)
        BookAuthor.new(self , x)
    end
    def total_words
        total_word = 0
        my_books = self.books
        my_books.each do |book_object|
            total_word = book_object.word_count + total_word
        end
        total_word
    end
    def self.most_words
        most_word = @@all [0]
        Author.all.each do |author_object|
            if author_object.total_words >most_word.total_words
                most_word = author_object
            end
        end
        most_word
    end
end
