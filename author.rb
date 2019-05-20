class Author
    attr_accessor :name, :title, :word_count

    @@all = []

    def self.all
        @@all
    end

    def self.most_prolific
        most_prolific_author = Author.all[0]
        best_ratio = (most_prolific_author.title.size) / most_prolific_author.word_count
        Author.each do |author_object|
          word_count = author_object.title.size/artist_object.word_count
          if word_count>best_ratio
            most_prolific_author = author_object
          end
        end
        most_prolific_author
    
      end
    

    def initialize(author, title, word_count)
        @name = name
        @word_count = word_count
        @title = title
        @@all << self

        def write_book(title, word_count)
            new_Book = Author.each do |title|
                title == self
          

        def total_words
            words = Author.all.map do |author_obj|
              author_obj.word_count
            end

        
        
    end
end
