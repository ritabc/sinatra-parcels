class Parcel
  def initialize(height,length,width,weight)
      @side_one = height
      @side_two = length
      @side_three = width
      @parcel_weight = weight
  end

  def volume
    @volume = @side_one * @side_two * @side_three
    @volume
  end

  def charge
    charge = (@volume * 0.05) + (@parcel_weight * 5)
    charge
  end

end
