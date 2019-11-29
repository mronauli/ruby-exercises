class Centaur
  attr_reader :name, :breed, :shoot, :run, :sleep
  def initialize(name, breed, standing = true, cranky = false, laying = false)
    @name = name
    @breed = breed
    @standing = standing
    @exercise = 0
    @cranky = cranky
    @sleep = sleep
    @laying = laying
  end

  def shoot
    @exercise += 1
    if @exercise >= 3 || @laying == true
       "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @exercise += 1
    if @exercise >= 3 || @laying == true
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def sleep
    if @standing == true
    "NO!"
  else @standing == false
    "ZzZzZz"
    end
  end

  def lay_down
    if @standing == true
       @standing = false
       @laying = true

    end
  end

  def stand_up
    if @laying == false
       @laying = true
       @standing = false
     elsif @laying == true
       @laying = false
       @standing = true
    end
  end

  def cranky?
    if @exercise >= 3
       @cranky = true
    else
       @cranky = false
    end
  end

  def standing?
    @standing
  end

  def laying?
    @laying
  end

end
