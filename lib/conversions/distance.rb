require 'conversions/proxy/distance'

module Conversions
  module Distance

    def to_distance
      DistanceProxy.new(self)
    end

  end
end

#
# Injections
# 
class Integer
  include Conversions::Distance
end

class Float
  include Conversions::Distance
end

class Fixnum
  include Conversions::Distance
end
