class Author 
@@all = []
attr_accessor :author
    def initialize(author)
    @author = author
    @@all << self 
    end 

    def self.all
        @@all 
    end 

end 
