$:.unshift File.expand_path('../../lib', __FILE__)

require 'coveralls'
Coveralls.wear!

require 'active_support/testing/assertions'
require 'minitest/autorun'
require "minitest/focus"
require "minitest/reporters"
require "mocha/setup"
require 'pry'
require 'timecop'

require 'bson'
require 'liquid'
require 'ruby-units'

require 'leatherman/extensions'
require 'leatherman/conversions'

Minitest::Reporters.use! if ENV['USE_REPORTERS']

class MiniTest::Unit::TestCase
  include ActiveSupport::Testing::Assertions
end
