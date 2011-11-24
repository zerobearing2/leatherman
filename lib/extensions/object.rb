module Extensions
  module Object
    extend ActiveSupport::Concern

    included do
      # empty
    end
    
    module InstanceMethods

      def is_numeric?
        true if Float(self) rescue false
      end
      alias :isnumeric? :is_numeric?
      
    end

    module ClassMethods
      # empty
    end
    
  end
end


class Object
  include Extensions::Object
end