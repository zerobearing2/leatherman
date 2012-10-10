module Extensions
  module Hash
    extend ActiveSupport::Concern

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
      self.clone.tap{|c| c.delete(key) }
    end

    def drop!(key)
      delete(key)
      self
    end
    
  end
end


class Hash
  include Extensions::Hash
end
