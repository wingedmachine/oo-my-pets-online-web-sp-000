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

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.go_for_a_walk }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.play_with_owner }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.get_fed }
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each { |pet| pet.get_sold }
    end
  end
end
