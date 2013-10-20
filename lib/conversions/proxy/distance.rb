##
# Public: DistanceProxy class for converting
# various values to distances with units.
class DistanceProxy
  
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
  # Convert meters to miles.
  # 
  # Returns Float of converted value.
  def meters_to_mi
    number.to_unit("m").convert_to("mi").scalar.to_f
  end
  alias :m_to_mi :meters_to_mi

  ##
  # Convert miles to meters
  #
  # Returns Float of converted value.
  def mi_to_meters
    number.to_unit("mi").convert_to("m").scalar.to_f
  end
  alias :mi_to_m :mi_to_meters

end
