class Owner
  OWNERS = []
  def self.all
    OWNERS
  end
  def self.reset_all
    OWNERS.clear
  end

  def initialize(argument)
    OWNERS << self
  end
end
