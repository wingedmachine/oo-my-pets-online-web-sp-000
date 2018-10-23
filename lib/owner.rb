class Owner
  OWNERS = []
  def self.all
    OWNERS
  end

  def initialize
    OWNERS << self
  end
end
