class Book
    attr_reader :title, :word_count, :author

    @@all_books = []

    def initialize(title,word_count,author)
        @title = title
        @word_count = word_count
        @author = author
        self.class.all << self
    end

    def self.all
        @@all_books
    end

end
