if defined? BSON::OrderedHash
  
  require 'extensions/hash'
  class BSON::OrderedHash
    include Extensions::Hash
  end
  
end
