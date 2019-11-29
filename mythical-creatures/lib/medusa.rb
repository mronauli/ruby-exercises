class Medusa
  attr_reader :name
  attr_accessor :statues
  def initialize(name)
    @name = name
    @statues = []
    @count = 0
  end

  def empty?
    statues.count
    end

  def stare(victim)
    victim.stoned = true
    statues << victim
    # shoveling person object
    if count_statues > 3
      victim1 = statues.shift
      victim1.stoned = false
    end
    end

  def count_statues
    statues.count
    end

  end
