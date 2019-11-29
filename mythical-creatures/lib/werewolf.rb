class Werewolf
  attr_reader :name, :location
  attr_accessor :form, :hungry
  def initialize(name, location)
    @name = name
    @location = location
    @form = "human"
    @hungry = false
  end

  def human?
    @form == "human"
  end

  def change!
    if @form == "wolf"
       @hungry = false
       @form = "human"
       # if youre a wolf change into human thats not hungry
    elsif @form == "human"
       @hungry = true
       @form = "wolf"
       # if youre a human change into wolf thats hungry
    end
  end

  def hungry?
    hungry
  end

  def wolf?
    @form == "wolf"
    end

  def consume(victim)
    if @form == "wolf"
    victim.status = :dead
    @hungry = false
    end
  end
end
