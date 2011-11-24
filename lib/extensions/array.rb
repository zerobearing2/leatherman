module Extensions
  module Array
    extend ActiveSupport::Concern

    included do
      # empty
    end
    
    module InstanceMethods

      def XOR(i)
        return (i | self) - (i & self)
      end

      def ^(i)
        return XOR(i)
      end

      def reject_empty
        reject{|v| v.empty?}
      end

      def reject_blank
        reject{|v| v.blank?}
      end

      def avg
        (sum.to_f/length.to_f).to_f
      end

    end

    module ClassMethods
      # empty
    end
    
  end
end


class Array
  include Extensions::Array
end