class Book 
    attr_reader :bookTitle
    @@all=[]
    def initialize(bookName)
        @bookName=bookName
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        Autor.all.select do | autorO|
            autorO.book
        end
    end
    
    def title
     Book.all.select do |title|
        title.bookTitle
     end
    end

    


     
end
