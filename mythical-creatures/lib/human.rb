class Human

  attr_reader :name
  attr_accessor :humans, :notice, :meet, :swung_at_by_ogre, :knocked_out

  def initialize(name)
    @name = name
    @humans = []
    @meet = false
    @counter = 0
    @notice = false
    @swung_at_by_ogre = false
    @knocked_out = false
  end

  def encounter_counter
    humans.count
  end

  def notices_ogre?
    notice
  end

  def meet?
    meet
  end

  def swung_at?
    swung_at_by_ogre
  end

  def knocked_out?
    if encounter
    end
  end

end
