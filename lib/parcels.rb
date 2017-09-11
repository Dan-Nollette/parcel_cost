class Parcels
  def initialize(length, width, height, weight, wrap)
    @length = length
    @width  = width
    @height = height
    @weight = weight
    @wrap = wrap
  end

  def volume
    @length * @height * @width
  end

  def cost_to_ship
    if(@weight > self.volume)
      @weight
    else
      self.volume
    end
  end
end
