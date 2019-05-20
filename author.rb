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
        Book.all.select do | book |
            book.author == self
        end
    end

    def write_book(title, word_count)
        Book.new(title, word_count, self)
    end

    def total_words
        total_words = 0
        self.books.each do | book |
            total_words += book.word_count
        end
        total_words
    end

    def self.most_words
        author_with_most_words = nil
        most_words = 0
        Author.all.each do | author |
            author_total_words = author.total_words
            if author_total_words > most_words
                most_words = author_total_words
                author_with_most_words = author
            end
        end
        author_with_most_words
    end

end



