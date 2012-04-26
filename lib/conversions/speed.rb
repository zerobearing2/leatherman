require 'conversions/proxy/speed'

module Conversions
  module Speed
    extend ActiveSupport::Concern

    # speed proxy
    def speed
      SpeedProxy.new(self)
    end
    
  end
end

class Integer
  include Conversions::Speed
end

class Float
  include Conversions::Speed
end

class Fixnum
  include Conversions::Speed
end