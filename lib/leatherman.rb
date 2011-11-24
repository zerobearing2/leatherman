require "leatherman/version"
require "active_support/core_ext"

require 'extensions/object'
require 'extensions/hash'
require 'extensions/array'
require 'extensions/date'
require 'extensions/time'
require 'extensions/file'

if defined?(ActiveSupport)
  require 'extensions/active_support'
end

if defined?(BSON) or defined?(Mongoid)
  require 'extensions/bson'
end
