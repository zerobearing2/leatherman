require 'conversions/proxy/speed'

module Conversions
  module Speed

    # speed proxy
    def to_speed
      SpeedProxy.new(self)
    end
    
  end
end

#
# Injections
# 
class Integer
  include Conversions::Speed
end

class Float
  include Conversions::Speed
end

class Fixnum
  include Conversions::Speed
end
