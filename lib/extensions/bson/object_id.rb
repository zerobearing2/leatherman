require "builder"

module Extensions
  module BSON
    module ObjectId

      # Public: Serialize Mongo object IDs as a string
      # (default uses a YAML representation)
      # 
      # options - xml encoding options (default: {}):
      #   :builder    - [Builder] XML builder (optional).
      #   :root       - [String] new name of xml node (optional).
      # 
      # Returns String of XML.
      def to_xml(options = {})
        builder = options.delete(:builder)  || Builder::XmlMarkup.new
        key     = options.delete(:root)     || "bson"

        builder.tag!(key, to_s)
      end

      # Public: Compare using BSON::ObjectId array representation
      # sorting BSON::ObjectId's is like sorting by timestamp
      # because they contain a created timestamp within.
      # 
      # other - [ObjectId] to compare
      # 
      # Returns Integer of comparison -1, 0, or 1. 
      def <=>(other)
        self.try(:to_a) <=> other.try(:to_a)
      end
        
    end
  end
end

#
# Injection
# 
class ::BSON::ObjectId
  include Extensions::BSON::ObjectId
end
