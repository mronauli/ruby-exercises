class Wizard
  attr_reader :name, :powers, :spell_name
  def initialize(name, beard = true, spell_name = "MAGIC MISSILE!")
    @name = name
    @beard = beard
    @powers = ""
    @spell = 0
    @rested = true
    @spell_name = spell_name
  end

  def bearded?
    return true if @beard == true
  else
    false
  end

  def incantation(powers)
    @powers << powers.insert(0, "sudo ")
  end

  def rested?
    @rested
  end

  def cast
    @spell += 1
    if @spell > 2 then @rested = false
    end
  end

  def cast_spell
    @spell_name 
  end
end
