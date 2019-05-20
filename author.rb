class Author
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Book_Author.all.select do |book_author_object|
            book_author_object.author == self
        end.map do |selected_book_author_object|
            selected_book_author_object.book
        end
    end
    #may need more code to link to a book_author
    def write_book(title, word_count)
        newBook = Book.new(self, title, word_count)
        Book_Author.new(self, newBook)
    end

    def total_words
        sum = 0
        Book_Author.all.select do |book_author_object|
            book_author_object.author == self
        end.each do |selected_book_author_object|
            sum += selected_book_author_object.book.word_count
        end
        sum
    end

    def self.most_words
        most_word_book_author = Book_Author.all[0]
        most_words = most_word_book_author.author.total_words

        Book_Author.all.each do |book_author_object|
            if book_author_object.author.total_words > most_words
                most_word_book_author = book_author_object
                most_words = most_word_book_author.author.total_words
            end
        end
        most_word_book_author.author
    end
end