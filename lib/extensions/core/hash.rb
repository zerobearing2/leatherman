module Extensions
  module Core
    module Hash
      def compact
        delete_if{|k, v| v.blank? or v.instance_of?(self.class) && v.compact.empty?}
      end

      def stringify(options = {})
        preserve_nil = options.delete(:preserve_nil)||false
        
        inject({}) do |options, (key, value)|
          options[key.to_s] = (preserve_nil && value.nil? ? nil : value.to_s)
          options
        end
      end

      def stringify!
        each do |key, value|
          delete(key)
          store(key.to_s, value.to_s)
        end
      end

      def drop(key)
        self.except(key)
      end

      def drop!(key)
        except!(key)
      end
    end
  end
end

#
# Inject extension
# 
class ::Hash
  include Extensions::Core::Hash
end

class ::ActiveSupport::HashWithIndifferentAccess
  include Extensions::Core::Hash
end
