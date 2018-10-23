class Owner
  OWNERS = []
  def all
    OWNERS
  end

  def initialize
    OWNERS << self
  end
end
