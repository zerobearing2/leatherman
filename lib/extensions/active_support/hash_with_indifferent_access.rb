if defined? ActiveSupport::HashWithIndifferentAccess
  
  require 'extensions/hash'
  class ActiveSupport::HashWithIndifferentAccess
    include Extensions::Hash
  end
  
end
