##
# Public: SpeedProxy class for converting
# various values to speed with units.
class SpeedProxy
  
  # Internal:
  attr_reader :number

  ##
  # Initialize with a number
  # 
  # number - A integer or float
  def initialize(number)
    @number = number
  end
  
  ##
  # Convert MPG to KMH.
  # 
  # Returns Float of converted value.
  def mph_to_kmh
    number.to_unit("mi/h").convert_to("km/h").scalar.to_f
  end
  
  ##
  # Convert meters-per-second (m/s) to KMH.
  # 
  # Returns Float of converted value.
  def ms_to_kmh
    number.to_unit("m/s").convert_to("km/h").scalar.to_f
  end

  ##
  # Convert meters-per-second (m/s) to MPG.
  # 
  # Returns Float of converted value.
  def ms_to_mph
    number.to_unit("m/s").convert_to("mi/h").scalar.to_f
  end

end
