require 'conversions/proxy/speed'

module Conversions
  module Speed
    extend ActiveSupport::Concern

    included do
      # empty
    end
    
    module InstanceMethods

      # speed proxy
      def speed
        SpeedProxy.new(self)
      end
      
    end

    module ClassMethods
      # empty
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