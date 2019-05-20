class Autor
    @@all = []
     attr_reader :book
     def initialize(autorname,bookname)
        @autorname=autorName
        @bookname=bookname
         @@ll << self
     end

     def self.all
        @@all
     end

     def books
        Book.all.select do |bookO|
            bookO.bookTitle
        end
     end

     def write_book(title,wordCount)
        Book.new(title,wordCount,self)

     end

     def total_words
        BookAuthor.all.select do |numberOfWords|
            numberOfWords.autorWords
        end
     end

     def self.most_words

     end


end
