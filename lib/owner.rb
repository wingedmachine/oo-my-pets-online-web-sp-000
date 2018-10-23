class Owner
  def initialize(argument)
    OWNERS << self
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

  attr_accessor :species
end
