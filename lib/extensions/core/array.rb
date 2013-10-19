module Extensions
  module Core
    module Array
      def XOR(i)
        return (i | self) - (i & self)
      end

      def ^(i)
        return XOR(i)
      end

      def reject_empty
        reject{|v| v.try(:empty?) or v.nil?}
      end

      def reject_blank
        reject{|v| v.try(:blank?) or v.nil?}
      end

      def avg
        return 0 if length < 1
        (sum.to_f / length.to_f)
      end
      
      def every(n)
        values_at( *(0...size).step(n) )
      end
    end
  end
end

#
# Inject extension
# 
class ::Array
  include Extensions::Core::Array
end
