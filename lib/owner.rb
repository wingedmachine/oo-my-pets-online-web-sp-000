class Owner
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

  attr_reader :species
end
