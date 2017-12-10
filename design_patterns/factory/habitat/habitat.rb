require_relative 'creatures'
require_relative 'factories'

class Habitat
  def initialize(number_of_animals, number_of_plants, organizm_factory)
    @organizm_factory = organizm_factory

    @animals = []
    number_of_animals.times do |i|
      animal = organizm_factory.new_animal("Animal_#{i}")
      @animals << animal
    end

    @plants = []
    number_of_plants.times do |i|
      plant = organizm_factory.new_plant("Plant_#{i}")
      @plants << plant
    end
  end

  def simulate_one_day
    @plants.each {|plant| plant.grow}
    @animals.each {|animal| animal.speak}
    @animals.each {|animal| animal.eat}
    @animals.each {|animal| animal.sleep}
  end
end


jungle = Habitat.new( 1, 4, JungleOrganismFactory.new )
jungle.simulate_one_day

pond = Habitat.new( 2, 4, OrganismFactory.new(WaterLily, Frog) )
pond.simulate_one_day
