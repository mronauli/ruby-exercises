class Hobbit
  attr_reader :name, :disposition, :age # :has_ring
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    # @has_ring = assign_ring_on_creation
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age == 32 then adult = false
    elsif @age > 32 then adult = true
    end
  end

  def old?
    if @age >= 101 then old = true
    else old = false
  end
end

  def has_ring?
    if @name == "Frodo" then ring = true
    else ring = false
    end
  end

  def is_short?
    @short = true
  end

  # def has_ring?
  #   has_ring
  # end

  # def assign_ring_on_creation
  #   return true if self.name.downcase == "frodo"
  #  false
  # end
end
