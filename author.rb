require 'pry'

class Author

    attr_accessor :author

    @@all = []

    def initialize(author)
        @author = author
        @@all << author
    end 

    def self.all
        @@all
    end

    #returns an array with all of an Authors books
    # def books

    # end

    # #creates a new book instance for the specific Author
    # def write_book(title, word_count)

    # end

    # #returns all the Authors words across all books
    # def total_words

    # end

    # #returns the Author with the most amount of words
    # def most_words

    # end
    
    Binding.pry

end
