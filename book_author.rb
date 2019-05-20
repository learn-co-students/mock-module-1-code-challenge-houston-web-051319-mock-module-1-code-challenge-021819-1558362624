class Book_author

    attr_accessor :name, :author, :book

    @@all = []

    def initialize(name, author, book)
        @name = name
        @author = author
        @book = book
        @@all << self
    end

    def self.all
        @@all
    end

end
