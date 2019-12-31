class Species

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def find_all
        Animal.all.select do |animal|
            animal.species == self
        end
    end

end