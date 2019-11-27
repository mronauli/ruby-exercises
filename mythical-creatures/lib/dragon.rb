class Dragon
  attr_reader :name, :color, :rider, :hungry, :consume
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @consume = 0
  end

 def hungry?
   @hungry
 end

 def eat
   @consume += 1
   @hungry = false if consume == 3
    # if consume == 3
    #   @hungry = false
   end
end


#an instance variable goes between methods
