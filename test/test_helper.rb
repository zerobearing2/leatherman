$:.unshift File.expand_path('../../lib', __FILE__)

require 'active_support/testing/assertions'
require 'minitest/autorun'
require "minitest/focus"
require "minitest/reporters"
require "mocha/setup"
require 'pry'

require 'leatherman/all'

Minitest::Reporters.use! if ENV['USE_REPORTERS']

class MiniTest::Unit::TestCase
  include ActiveSupport::Testing::Assertions
end
