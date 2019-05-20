class Author
    attr_accessor :name

    @@all_authors = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all_authors
    end

    def books
        Book.all.select do |each_book|
            each_book.author == self
        end
    end

    def write_book(title,word_count)
        Book.new(title,word_count,self)
    end

    def total_words
        total=0
        Book.all.each do |each_book|
            if each_book.author == self
                total += each_book.word_count
            end
        end
        total
    end

    def self.most_words
        most_words_author = self.all[0]
        self.all.each do |each_author|
            if each_author.total_words > most_words_author.total_words
                most_words_author = each_author
            end
        end
        most_words_author
    end

end
