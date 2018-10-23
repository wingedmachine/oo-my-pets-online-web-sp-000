class Owner
  OWNERS = []
  def self.all
    OWNERS
  end

  def initialize(argument)
    OWNERS << self
  end
end
