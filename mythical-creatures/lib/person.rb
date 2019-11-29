class Person
  attr_reader :name
  attr_accessor :stoned
  def initialize(name, stoned = false)
    @name = name
    @stoned = stoned
  end

  def stoned?
    stoned
  end
end
