class BookAutor
    @@all=[]
     attr_reader :autorWords
     def initialize(autorWords)
        @autorWords=autorWords
        @@all << self
     end
    
     def self.all
        @@all
     end

end
