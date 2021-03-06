require 'rubygems'
require 'bundler/setup'

# for testing
require 'mongoid'
require 'liquid'
require 'pry'

require 'leatherman'

RSpec.configure do |config|
  config.mock_with :rspec
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
end
