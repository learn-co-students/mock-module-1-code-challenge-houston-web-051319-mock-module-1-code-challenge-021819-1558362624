
class BookAuthor
    @@all = []
    attr_reader :author, :book
    def initialize(author, book)
        @book = book
        @author = author
        @@all << self
    end
    def self.all
        @@all
    end
end




