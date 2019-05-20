#require 'pry'

class Book 

    attr_accessor :title, :author, :word_count

    @@all = []

    def initialize(title, author, word_count)
        @title = title
        @author = author
        @word_count = word_count
        @@all << title
    end

    def self.all
        @@all
    end

    def self.author
        author
    end

    def self.title
        title
    end

    def self.word_count
        word_count
    end
    
    #Binding.pry
    
end
