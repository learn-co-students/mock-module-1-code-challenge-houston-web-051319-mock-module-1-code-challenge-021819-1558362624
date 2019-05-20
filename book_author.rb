class Book_Author

    attr_reader :book, :author

    @@all = []

    def initialize (book, author)
        @book = book
        @author = author
        @@all << self
    end

    def self.all
       @@all 
    end

end

