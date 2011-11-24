require 'conversions/proxy/distance'

module Conversions
  module Distance
    extend ActiveSupport::Concern

    included do
      # empty
    end
    
    module InstanceMethods

      # distance proxy
      def distance
        DistanceProxy.new(self)
      end

    end

    module ClassMethods
      # empty
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