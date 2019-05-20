class Author

    @@all = []

    attr_accessor :title, :word_count


    def self.all
        @@all
    end


    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self

    end

    def books
        @title
    end

    def write_books
        


    
    
    
    
    
    


    











end
