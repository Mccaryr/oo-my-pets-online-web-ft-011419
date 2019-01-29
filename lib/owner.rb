class Owner
  @@count = 0
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets
  def initialize(species)
    @species=species
    @name=name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
     "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
     self.pets[:fishes]
  end

end
