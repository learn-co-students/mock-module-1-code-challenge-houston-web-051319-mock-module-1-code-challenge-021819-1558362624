class Author
    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
       @@all 
    end

    def book_author
        Book_Author.all.select do |book_authors|
            book_authors.author == self
        end
    end
    #returns all the instances that self is in in the joiner class

    def books
        self.book_author.map do |my_books|
            my_books.book
        end
    end

    def write_book (title, word_count)
        ran = Book.new(title, word_count)
        Book_Author.new(ran, self)
    end

    def total_words
        total_words = 0
        self.books.each do |my_books|
            my_word_counts= my_books.word_count
            total_words += my_word_counts
        end
        total_words
    end

    def self.most_words
        most = self.all[0]
        most_words = most.total_words
        self.all.each do |all_authors|
            all_totals = all_authors.total_words
            if all_totals > most_words
                most = all_authors
            end
        end
        most
    end
end

