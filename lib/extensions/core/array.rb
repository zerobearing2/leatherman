module Extensions
  module Core
    
    ##
    # Public: Extend Array with some convenience methods.
    module Array

      ##
      # Public: XOR two arrays
      # 
      # i - [Array] to XOR
      # 
      # Examples
      # 
      #   [1,2]^[2,3]
      #   # => [1,3]
      # 
      #   [1,2].XOR [2,3]
      #   # => [1,3]
      # 
      # Returns Array result of XOR operation.
      def XOR(i)
        return (i | self) - (i & self)
      end
      alias_method :^, :XOR

      ##
      # Public: Reject empty array elements
      # 
      # Returns Array with empty elements removed.
      def reject_empty
        reject{|v| v.try(:empty?) or v.nil?}
      end

      ##
      # Public: Reject blank array elements
      # 
      # Returns Array with blank elements removed.
      def reject_blank
        reject{|v| v.try(:blank?) or v.nil?}
      end

      ##
      # Public: Calculate avg of array elements
      # 
      # Returns Float of the avg.
      def avg
        return 0 if length < 1
        (sum.to_f / length.to_f)
      end
      
      ##
      # Public: Pluck every nth element from array.
      # 
      # Returns Array of nth elements.
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
