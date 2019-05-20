#require 'pry'

class BookAuthor

    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end

    #Binding.pry

end
