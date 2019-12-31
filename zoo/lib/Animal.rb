class Animal

    attr_accessor :name, :weight, :zoo # gives you the variable= method
    attr_reader :species # gives you the variable method
    @@all = []

    def initialize(zoo, species, name, weight)
        @zoo, @species, @name, @weight = zoo, species, name, weight
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end

    def eat_a_lot
        self.weight += 1
    end

end
