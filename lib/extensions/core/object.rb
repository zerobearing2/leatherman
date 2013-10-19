module Extensions
  module Core
    module Object

      def is_numeric?
        true if Float(self) rescue false
      end
      alias :isnumeric? :is_numeric?
        
    end
  end
end

#
# Inject extension
# 
class ::Object
  include Extensions::Core::Object
end
