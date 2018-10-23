class Owner
  attr_reader :species
  
  def initialize(argument)
    OWNERS << self
    @species = 'human'
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
end
