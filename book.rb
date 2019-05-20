class Book

    attr_reader :title, :word_count

    @@all = []

    def initialize (title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
       @@all 
    end

    def book_author
        Book_Author.all.select do |book_authors|
            book_authors.book == self
        end
    end
    #returns all the instances that self is in in the joiner class 

    def author
        self.book_author.map do |my_books|
            my_books.author
        end
    end

end
