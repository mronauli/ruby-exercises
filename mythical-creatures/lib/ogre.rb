class Ogre
  attr_reader :name
  attr_accessor :home, :swings
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0

  end

  def encounter(human)
    human.meet = true
    human.humans << human
      if human.encounter_counter % 3 == 0
         human.notice = true && @swings += 1
      else
         human.notice = false
      end

    end

    def swing_at(human)
      @swings += 1
      human.swung_at_by_ogre = true
      human.humans << human
    end

    def apologize(human)

    end

  end
