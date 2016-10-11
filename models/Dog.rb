
class Dog
  attr_accessor :name,:hunger_level
  def initialize=(name)
    @name = name
  end
  # def eat
  #    if(@hunger_level > 0)
  #       @hunger_level -=1
  #   else
  #      p "not hungry"
  #   end

  ##refactored
  def eat
     @hunger_level -=1 if @hunger_level > 0
 end
end

