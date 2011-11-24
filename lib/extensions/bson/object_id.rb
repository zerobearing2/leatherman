module Extensions
  module BSON
    module ObjectId
      extend ActiveSupport::Concern

      included do
        # empty
      end
    
      module InstanceMethods

        def to_xml(options)
          # Serialize Mongo object IDs as a string
          # (default uses a YAML representation)
          key = ActiveSupport::XmlMini::rename_key(options[:root], options)
          options[:builder].tag!(key, to_s)
        end

      end

      module ClassMethods
        # empty
      end
    
    end
  end
end

if defined? BSON::ObjectId
  class BSON::ObjectId
    include Extensions::BSON::ObjectId
  end
end