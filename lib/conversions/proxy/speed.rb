class SpeedProxy
  attr_accessor :number

  def initialize(number)
    self.number = number
  end
  
  #
  # miles/hour -> kilometers/hour
  #
  def mph_to_kmh
    number.to_unit("mi/h").convert_to("km/h").scalar
  end
  
  #
  # meters/sec -> kilometers/hour
  #
  def ms_to_kmh
    number.to_unit("m/s").convert_to("km/h").scalar
  end

  #
  # meters/sec -> miles/hour
  #
  def ms_to_mph
    number.to_unit("m/s").convert_to("mi/h").scalar
  end

end
