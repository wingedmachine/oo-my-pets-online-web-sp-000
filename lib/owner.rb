class Owner
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(argument)
    OWNERS << self
    @species = 'human'
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end

  OWNERS = []
  def self.all
    OWNERS
  end
  def self.reset_all
    OWNERS.clear
  end
  def self.count
    OWNERS.count
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
end
