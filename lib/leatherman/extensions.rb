require 'active_support/core_ext'

require 'extensions/core/array'
require 'extensions/core/object'
require 'extensions/core/hash'
require 'extensions/core/date'
require 'extensions/core/file'

if defined?(BSON)
  require 'extensions/bson/object_id'
end

if defined?(Liquid)
  require 'extensions/liquid/pluralize_filter'
end
