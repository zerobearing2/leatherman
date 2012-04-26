require 'conversions/proxy/distance'

module Conversions
  module Distance
    extend ActiveSupport::Concern

    # distance proxy
    def distance
      DistanceProxy.new(self)
    end

  end
end

class Integer
  include Conversions::Distance
end

class Float
  include Conversions::Distance
end

class Fixnum
  include Conversions::Distance
end