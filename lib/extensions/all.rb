require 'extensions/object'
require 'extensions/hash'
require 'extensions/array'
require 'extensions/date'
require 'extensions/time'
require 'extensions/file'

if defined?(ActiveSupport)
  require 'extensions/active_support/all'
end

if defined?(BSON)
  require 'extensions/bson/all'
end

if defined?(Liquid)
  require 'extensions/liquid/all'
end
