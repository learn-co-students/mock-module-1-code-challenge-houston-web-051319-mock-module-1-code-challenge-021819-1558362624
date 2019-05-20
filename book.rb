class Book
    @@all = []

    def self.all
        @@all
    end


    def initialize(author, title, word_count)
        @title = title
        @author = author
        @word_count = word_count
        @@all << self

        













end
