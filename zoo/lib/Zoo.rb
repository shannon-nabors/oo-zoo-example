class Zoo

    attr_reader :location, :name
    @@all = []

    def initialize(name, location)
        @name, @location = name, location
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_location(location)
        self.all.select do |zoo|
            zoo.location == location
        end
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def species
        animals.map do |animal|
            animal.species
        end.uniq
    end

    def find_species(species)
        animals.select do |animal|
            animal.species == species
        end
    end

    def animal_names
        animals.map do |animal|
            animal.name
        end
    end

    def heaviest_animal
        animals.max_by do |animal|
            animal.weight
        end
    end

    def sell_animal(animal, zoo)
        animal.zoo = zoo
    end

end
