class DistanceProxy
  attr_accessor :number

  def initialize(number)
    self.number = number
  end

  #
  # meters -> miles
  #
  def meters_to_mi
    self.number.to_unit("m").convert_to("mi").scalar
  end
  alias :m_to_mi :meters_to_mi

  #
  # miles -> meters
  #
  def mi_to_meters
    number.to_unit("mi").convert_to("m").scalar
  end
  alias :mi_to_m :mi_to_meters

end
