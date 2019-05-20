class BookAuthor
    attr_accessor :author, :title, :word_count

    @@all = []
    
    def self.all
        @@all
    end

    def initialize(author, title, word_count)
        @author = author
        @title = title
        @word_count = word_count
        @@all << self

    end
end
