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

        # compare using BSON::ObjectId array representation
        # sorting BSON::ObjectId's is like sorting by timestamp
        # because they contain a created timestamp within.
        def <=>(b)
          self.try(:to_a) <=> b.try(:to_a)
        end
        
      end

      module ClassMethods
        # empty
      end
    
    end
  end
end

class BSON::ObjectId
  include Extensions::BSON::ObjectId
end
