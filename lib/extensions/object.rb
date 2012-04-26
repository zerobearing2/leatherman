module Extensions
  module Object
    extend ActiveSupport::Concern

    def is_numeric?
      true if Float(self) rescue false
    end
    alias :isnumeric? :is_numeric?
      
  end
end


class Object
  include Extensions::Object
end